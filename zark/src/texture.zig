const std = @import("std");
const zark = @import("zark.zig");

const gl = zark.gl;


pub const TextureFilter = enum {
    Nearest, // gl.GL_NEAREST
    Linear, // gl.GL_LINEAR
    MipMap, // gl.GL_LINEAR_MIPMAP_LINEAR
    MipMapNearestNearest, // gl.GL_NEAREST_MIPMAP_NEAREST
    MipMapLinearNearest, // gl.GL_LINEAR_MIPMAP_NEAREST
    MipMapNearestLinear, // gl.GL_NEAREST_MIPMAP_LINEAR
    MipMapLinearLinear, // gl.GL_LINEAR_MIPMAP_LINEAR
};

pub const TextureWrap = enum {
    MirroredRepeat, // gl.GL_MIRRORED_REPEAT
    ClampToEdge, // gl.GL_CLAMP_TO_EDGE
    Repeat, // gl.GL_REPEAT
};

pub const Texture2D = struct {
    gl_target: c_uint,
    gl_handle: c_uint,
    filter_min: TextureFilter = TextureFilter.Nearest,
    filter_mag: TextureFilter = TextureFilter.Nearest,
    wrap_u: TextureWrap = TextureWrap.ClampToEdge,
    wrap_v: TextureWrap = TextureWrap.ClampToEdge,

    width: u32 = 0,
    height: u32 = 0,

    pub fn deinit(self: *Texture2D) void {
        if(self.gl_handle != 0) {
            gl.glDeleteTextures(1, &self.gl_handle);
            self.gl_handle = 0;
        }
    }

    pub fn bind(self: *Texture2D) void {
        gl.glBindTexture(self.gl_target, self.gl_handle);
    }

    pub fn set_data(self: *Texture2D, data: []u8, width: usize, height: usize) void {
        gl.glPixelStorei(gl.GL_UNPACK_ALIGNMENT, 1);
        gl.glTexImage2D(self.gl_target, 0, gl.GL_RGBA, width, height, 0, gl.GL_RGBA, gl.GL_UNSIGNED_BYTE, data);
    }
};

pub fn from_file(file: []const u8) !Texture2D {
    var target: c_uint = gl.GL_TEXTURE_2D;
    var handle: c_uint = undefined;

    gl.glGenTextures(1, &handle);
    gl.glBindTexture(target, handle);
    

    var x: c_int = undefined;
    var y: c_int = undefined;
    var n: c_int = undefined;
    const data = zark.stb.stbi_load(file.ptr, &x, &y, &n, 0);
    defer zark.stb.stbi_image_free(data);

    zark.INFOf("Texture: {} size {}:{} x{} - {}", .{file, x, y, n, handle});

    gl.glPixelStorei(gl.GL_UNPACK_ALIGNMENT, 1);
    gl.glTexImage2D(target, 0, gl.GL_RGBA, x, y, 0, gl.GL_RGBA, gl.GL_UNSIGNED_BYTE, data);

    gl.glTexParameteri(target, gl.GL_TEXTURE_WRAP_S, gl.GL_CLAMP_TO_EDGE);
    gl.glTexParameteri(target, gl.GL_TEXTURE_WRAP_T, gl.GL_CLAMP_TO_EDGE);

    gl.glTexParameteri(target, gl.GL_TEXTURE_MIN_FILTER, gl.GL_NEAREST);
    gl.glTexParameteri(target, gl.GL_TEXTURE_MAG_FILTER, gl.GL_NEAREST);

    
    gl.glBindTexture(target, 0);

    var ret = Texture2D{
        .gl_target = target,
        .gl_handle = handle,
        .width = @intCast(u32, x),
        .height = @intCast(u32, y),
    };


    return ret;
}

pub fn new_tex(width: usize, height: usize) !Texture2D {
    var target: c_uint = gl.GL_TEXTURE_2D;
    var handle: c_uint = undefined;

    gl.glGenTextures(1, &handle);
    gl.glBindTexture(target, handle);
    
    zark.INFOf("Texture: size {}:{} - {}", .{width, height, handle});

    gl.glTexParameteri(target, gl.GL_TEXTURE_WRAP_S, gl.GL_CLAMP_TO_EDGE);
    gl.glTexParameteri(target, gl.GL_TEXTURE_WRAP_T, gl.GL_CLAMP_TO_EDGE);
    gl.glTexParameteri(target, gl.GL_TEXTURE_MIN_FILTER, gl.GL_NEAREST);
    gl.glTexParameteri(target, gl.GL_TEXTURE_MAG_FILTER, gl.GL_NEAREST);
    gl.glTexImage2D(target, 0, gl.GL_RGBA, @intCast(c_int, width), @intCast(c_int, height), 0, gl.GL_RGBA, gl.GL_UNSIGNED_BYTE, null);

    
    gl.glBindTexture(target, 0);

    var ret = Texture2D{
        .gl_target = target,
        .gl_handle = handle,
        .width = @intCast(u32, width),
        .height = @intCast(u32, height),
    };


    return ret;
}

pub const RenderTexture = struct {
    handle: c_uint,
    depth_stencil_handle: c_uint = 0,
    texture: Texture2D,

    pub fn init(width: c_int, height: c_int) !RenderTexture {
        return initWithOptions(width, height, false, false);
    }

    pub fn initWithOptions(width: c_int, height: c_int, depth: bool, stencil: bool) !RenderTexture {
        // we allow neither, both or stencil but not just depth
        std.debug.assert(!(depth and !stencil));

        var handle: c_uint = undefined;
        gl.glGenFramebuffers(1, &handle);
        gl.glBindFramebuffer(gl.GL_FRAMEBUFFER, handle);
        errdefer gl.glDeleteFramebuffers(1, &handle);
        defer gl.glBindFramebuffer(gl.GL_FRAMEBUFFER, 0);

        var texture = try new_tex(@intCast(usize, width), @intCast(usize, height));
        errdefer texture.deinit();

        // The depth/stencil or stencil buffer
        var depth_stencil_handle: c_uint = 0;
        if (depth or stencil) {
            gl.glGenRenderbuffers(1, &depth_stencil_handle);
            gl.glBindRenderbuffer(gl.GL_RENDERBUFFER, depth_stencil_handle);
            if (depth and stencil) {
                gl.glRenderbufferStorage(gl.GL_RENDERBUFFER, gl.GL_DEPTH24_STENCIL8, width, height);
            } else {
                gl.glRenderbufferStorage(gl.GL_RENDERBUFFER, gl.GL_STENCIL_INDEX8, width, height);
            }
            gl.glBindRenderbuffer(gl.GL_RENDERBUFFER, 0);

            if (depth) gl.glFramebufferRenderbuffer(gl.GL_FRAMEBUFFER, gl.GL_DEPTH_ATTACHMENT, gl.GL_RENDERBUFFER, depth_stencil_handle);
            if (stencil) gl.glFramebufferRenderbuffer(gl.GL_FRAMEBUFFER, gl.GL_STENCIL_ATTACHMENT, gl.GL_RENDERBUFFER, depth_stencil_handle);
        }

        // Set "render texture" as our colour attachement #0
        gl.glFramebufferTexture(gl.GL_FRAMEBUFFER, gl.GL_COLOR_ATTACHMENT0, texture.gl_handle, 0);

        // Set the list of draw buffers.
        var draw_buffers: [1]gl.GLenum = [_]gl.GLenum{gl.GL_COLOR_ATTACHMENT0};
        gl.glDrawBuffers(1, &draw_buffers);

        var status = gl.glCheckFramebufferStatus(gl.GL_FRAMEBUFFER);
        if (status != gl.GL_FRAMEBUFFER_COMPLETE)
            return error.FrameBufferFailed;

        gl.glBindFramebuffer(gl.GL_FRAMEBUFFER, 0);  

        return RenderTexture{
            .handle = handle,
            .depth_stencil_handle = depth_stencil_handle,
            .texture = texture,
        };
    }

    pub fn deinit(self: *RenderTexture) void {
        self.texture.deinit();
        gl.glDeleteFramebuffers(1, &self.handle);
        if (self.depth_stencil_handle > 0) gl.glDeleteRenderbuffers(1, &self.depth_stencil_handle);
    }

    pub fn bind(self: *const RenderTexture) void {
        gl.glBindFramebuffer(gl.GL_FRAMEBUFFER, self.handle);
        gl.glViewport(0, 0, @intCast(c_int, self.texture.width), @intCast(c_int, self.texture.height));
    }

    pub fn unbind(self: *const RenderTexture, engine: *zark.engine.Engine) void {
        gl.glBindFramebuffer(gl.GL_FRAMEBUFFER, 0);
        gl.glViewport(0, 0,
            @floatToInt(c_int, engine.gfx.get_width()),
            @floatToInt(c_int, engine.gfx.get_height())
        );
    }
};