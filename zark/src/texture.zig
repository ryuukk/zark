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

    pub fn bind(self: *Texture2D) void {
        gl.glBindTexture(self.gl_target, self.gl_handle);
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

pub const RenderTexture = struct {
    id: GLuint,
    depth_stencil_id: GLuint = 0,
    texture: Texture2D,

    pub fn init(width: c_int, height: c_int) !RenderTexture {
        return initWithOptions(width, height, false, false);
    }

    pub fn initWithOptions(width: c_int, height: c_int, depth: bool, stencil: bool) !RenderTexture {
        // we allow neither, both or stencil but not just depth
        std.debug.assert(!(depth and !stencil));

        var id: GLuint = undefined;
        glGenFramebuffers(1, &id);
        glBindFramebuffer(GL_FRAMEBUFFER, id);
        errdefer glDeleteFramebuffers(1, &id);
        defer glBindFramebuffer(GL_FRAMEBUFFER, 0);

        var texture = Texture.init();
        texture.setData(width, height, null);
        errdefer texture.deinit();

        // The depth/stencil or stencil buffer
        var depth_stencil_id: GLuint = 0;
        if (depth or stencil) {
            glGenRenderbuffers(1, &depth_stencil_id);
            glBindRenderbuffer(GL_RENDERBUFFER, depth_stencil_id);
            if (depth and stencil) {
                glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH24_STENCIL8_OES, width, height);
            } else {
                glRenderbufferStorage(GL_RENDERBUFFER, GL_STENCIL_INDEX8, width, height);
            }
            glBindRenderbuffer(GL_RENDERBUFFER, 0);

            if (depth) glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, depth_stencil_id);
            if (stencil) glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_STENCIL_ATTACHMENT, GL_RENDERBUFFER, depth_stencil_id);
        }

        // Set "render texture" as our colour attachement #0
        glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, texture.id, 0);

        // Set the list of draw buffers.
        var draw_buffers: [1]GLenum = [_]GLenum{GL_COLOR_ATTACHMENT0};
        glDrawBuffers(1, &draw_buffers);

        if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE) return error.FrameBufferFailed;

        return RenderTexture{
            .id = id,
            .depth_stencil_id = depth_stencil_id,
            .texture = texture,
        };
    }

    pub fn deinit(self: *RenderTexture) void {
        self.texture.deinit();
        glDeleteFramebuffers(1, &self.id);
        if (self.depth_stencil_id > 0) glDeleteRenderbuffers(1, &self.depth_stencil_id);
    }

    pub fn bind(self: *const RenderTexture) void {
        glBindFramebuffer(GL_FRAMEBUFFER, self.id);
        glViewport(0, 0, @floatToInt(c_int, self.texture.width), @floatToInt(c_int, self.texture.height));
    }

    pub fn unbind(self: *const RenderTexture) void {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
        // TODO: set viewport to screen size!
        glViewport(0, 0, 800, 600);
    }
};