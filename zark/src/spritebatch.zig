const std = @import("std");
const zark = @import("zark.zig");
const Allocator = std.mem.Allocator;

usingnamespace zark.texture;
usingnamespace zark.mesh;
usingnamespace zark.shader;
usingnamespace zark.math;

const SIZE = 1000;

pub const SpriteBatch = struct {
    mesh: Mesh,

    vertices: [SIZE * 20]f32 = undefined,
    idx: usize = 0,
    _lastTexture: c_uint = 0,
    _invTexWidth: f32 = 0,
    _invTexHeight: f32 = 0,

    _drawing: bool = false,

    _transformMatrix: Mat4 = Mat4.identity(),
    _projectionMatrix: Mat4 = Mat4.identity(),

    _blendingDisabled: bool = false,

    _blendSrcFunc: c_uint = zark.gl.GL_SRC_ALPHA,
    _blendDstFunc: c_uint = zark.gl.GL_ONE_MINUS_SRC_ALPHA,
    _blendSrcFuncAlpha: c_uint = zark.gl.GL_SRC_ALPHA,
    _blendDstFuncAlpha: c_uint = zark.gl.GL_ONE_MINUS_SRC_ALPHA,

    _shader: ShaderProgram,
    _customShader: ?*ShaderProgram = null,
    _ownsShader: bool = false,

    _color: Color = Color.WHITE(),

    renderCalls: usize = 0,
    totalRenderCalls: usize = 0,
    maxSpritesInBatch: usize = 0,

    pub fn init(allocator: *Allocator) SpriteBatch {
        var attrs = VertexAttributes{};
        attrs.add(VertexAttribute.position2D());
        attrs.add(VertexAttribute.color_packed());
        attrs.add(VertexAttribute.tex_coords0());

        var ret = SpriteBatch{
            .mesh = Mesh.init(allocator, attrs, false, SIZE * 4, SIZE * 6),
            ._shader = ShaderProgram.init(allocator, V, F)
        };
        
        for(ret.vertices) |_, i| {
            ret.vertices[i] = 0.0;
        }

        const len = SIZE * 6;

        var indices = allocator.alloc(i32, len) catch unreachable;
        defer allocator.free(indices);
        
        var i: usize = 0;
        var j: usize = 0;
        while(i < len) {
            indices[i + 0] = @intCast(i32, j);
            indices[i + 1] = @intCast(i32, (j + 1));
            indices[i + 2] = @intCast(i32, (j + 2));
            indices[i + 3] = @intCast(i32, (j + 2));
            indices[i + 4] = @intCast(i32, (j + 3));
            indices[i + 5] = @intCast(i32, j);
            i += 6;
            j += 4;
        }
        ret.mesh.set_indices(indices);
        return ret;
    }
    fn flush(self: *SpriteBatch) void {

        if (self.idx == 0)
            return;

        self.renderCalls += 1;
        self.totalRenderCalls += 1;

        var spritesInBatch = @divFloor(self.idx, 20);
        if (spritesInBatch > self.maxSpritesInBatch)
            self.maxSpritesInBatch = spritesInBatch;
        var count = spritesInBatch * 6;

        // TODO: i switched to using the handle, but i'm not sure that is what i should do..
        //self._lastTexture.?.bind(); 
        zark.gl.glBindTexture(zark.gl.GL_TEXTURE_2D, self._lastTexture);


        self.mesh.set_vertices(self.vertices[0 .. self.idx]);

        if (self._blendingDisabled) {
            zark.gl.glDisable(zark.gl.GL_BLEND);
        } else {
            zark.gl.glEnable(zark.gl.GL_BLEND);
            if (self._blendSrcFunc != -1)
                zark.gl.glBlendFuncSeparate(self._blendSrcFunc, self._blendDstFunc, self._blendSrcFuncAlpha, self._blendDstFuncAlpha);
        }

        self.mesh.render_full(&self._shader, .TRIANGLE, 0, count, true);

        self.idx = 0;        
    }

    fn setup_matrices(self: *SpriteBatch) void {
        self._shader.set_uniform_mat4("u_proj", &self._projectionMatrix);
        self._shader.set_uniform_mat4("u_trans", &self._transformMatrix);
        self._shader.set_uniform_i("u_texture", 0);
    }
    fn switch_texture(self: *SpriteBatch, texture: *const Texture2D) void {
        self.flush();
        self._lastTexture = texture.gl_handle;
        self._invTexWidth = 1.0 / @intToFloat(f32, texture.width);
        self._invTexHeight = 1.0 / @intToFloat(f32, texture.height);
    }

    
    pub fn set_projection(self: *SpriteBatch, proj: Mat4) void {
        self._projectionMatrix = proj;
    }

    pub fn begin(self: *SpriteBatch) void {
        zark.ASSERT(!self._drawing, "must call end");
        self.renderCalls = 0;

        zark.gl.glDepthMask(zark.gl.GL_FALSE);
        self._shader.bind();

        self.setup_matrices();
        self._drawing = true;
    }

    pub fn end(self: *SpriteBatch) void {
        zark.ASSERT(self._drawing, "must call begin");
        if(self.idx > 0) {
            self.flush();
        }
        self._lastTexture = 0;
        self._drawing = false;

        zark.gl.glDepthMask(zark.gl.GL_TRUE);
        if(self._blendingDisabled == false)
            zark.gl.glDisable(zark.gl.GL_BLEND);
    }

    pub fn draw(self: *SpriteBatch, texture: *const Texture2D, x: f32, y: f32, w: f32, h: f32) void {
        zark.ASSERT(self._drawing, "must call begin");
        
  
        if (texture.gl_handle != self._lastTexture) {
            self.switch_texture(texture);
        }
        else if (self.idx == self.vertices.len) {
            self.flush();
        }

        var fx2: f32 = x + w;
        var fy2: f32 = y + h;
        var u: f32 = 0;
        var v: f32 = 1;
        var uu2: f32 = 1;
        var v2: f32 = 0;

        var color = self._color.to_float_bits();

        const idx = self.idx;
        self.vertices[idx] = x;
        self.vertices[idx + 1] = y;
        self.vertices[idx + 2] = color;
        self.vertices[idx + 3] = u;
        self.vertices[idx + 4] = v;

        self.vertices[idx + 5] = x;
        self.vertices[idx + 6] = fy2;
        self.vertices[idx + 7] = color;
        self.vertices[idx + 8] = u;
        self.vertices[idx + 9] = v2;

        self.vertices[idx + 10] = fx2;
        self.vertices[idx + 11] = fy2;
        self.vertices[idx + 12] = color;
        self.vertices[idx + 13] = uu2;
        self.vertices[idx + 14] = v2;

        self.vertices[idx + 15] = fx2;
        self.vertices[idx + 16] = y;
        self.vertices[idx + 17] = color;
        self.vertices[idx + 18] = uu2;
        self.vertices[idx + 19] = v;

        self.idx = idx + 20;

    }

};


const V = 
\\#version 330
\\
\\in vec4 a_position;
\\in vec4 a_color;
\\in vec2 a_texCoord0;
\\
\\uniform mat4 u_proj;
\\uniform mat4 u_trans;
\\
\\out vec4 v_color;
\\out vec2 v_texCoords;
\\
\\void main() {
\\    v_color = a_color;
\\    v_color.a = v_color.a * (255.0/254.0);
\\    v_texCoords = a_texCoord0;
\\    gl_Position = u_proj * u_trans * a_position;
\\}
;
const F = 
\\#version 330
\\
\\in vec4 v_color;
\\in vec2 v_texCoords;
\\
\\uniform sampler2D u_texture;
\\
\\out vec4 f_color;
\\
\\void main() {
\\        f_color = v_color * texture(u_texture, v_texCoords);
\\}
;