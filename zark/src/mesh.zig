// TODO:make fixed size buffers for mesh, it doesn't need dynamic array AT ALL, since size is known already
// but how can i do it correctly?


const std = @import("std");
const zark = @import("zark.zig");

const array = zark.array;
const ShaderProgram = zark.shader.ShaderProgram;
const glad = zark.gl;

pub const PrimitiveType = glad.PrimitiveType;


const POSITION: i32 = 1;
const COLORUNPACKED: i32 = 2;
const COLORPACKED: i32 = 4;
const NORMAL: i32 = 8;
const TEXTURECOORDINATES: i32 = 16;
const GENERIC: i32 = 32;
const BONEWEIGHT: i32 = 64;
const TANGENT: i32 = 128;
const BINORMAL: i32 = 256;
const MAX = 9;

inline fn bit_count(value: i32) i32 {
    var i = value;
    // Algo from : http://aggregate.ee.engr.uky.edu/MAGIC/#Population%20Count%20(ones%20Count)
    i -= ((i >> 1) & 0x55555555);
    i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
    i = (((i >> 4) + i) & 0x0F0F0F0F);
    i += (i >> 8);
    i += (i >> 16);
    return (i & 0x0000003F);
}

inline fn number_of_trailing_zeros(i: i32) i32 {
    return bit_count((i & -i) - 1);
}

pub const VertexAttribute = struct {
    usage: i32 = 0,
    num_components: i32 = 0,
    normalized: bool = false,
    gl_type: c_uint = 0,
    offset: i32 = 0,
    aliass: []const u8,
    unit: i32 = 0,

    _usage_index: i32,

    pub fn position() VertexAttribute {
        return VertexAttribute{
            .usage = POSITION,
            .num_components = 3,
            .aliass = "a_position",
            .gl_type = glad.GL_FLOAT,
            ._usage_index = number_of_trailing_zeros(POSITION),
        };
    }
    
    pub fn position2D() VertexAttribute {
        return VertexAttribute{
            .usage = POSITION,
            .num_components = 2,
            .aliass = "a_position",
            .gl_type = glad.GL_FLOAT,
            ._usage_index = number_of_trailing_zeros(POSITION),
        };
    }
    pub fn color_packed() VertexAttribute {
        return VertexAttribute{
            .usage = COLORPACKED,
            .num_components = 4,
            .aliass = "a_color",
            .gl_type = glad.GL_UNSIGNED_BYTE,
            .normalized = true,
            ._usage_index = number_of_trailing_zeros(COLORPACKED),
        };
    }

    pub fn normal() VertexAttribute {
        return VertexAttribute{
            .usage = POSITION,
            .num_components = 3,
            .aliass = "a_normal",
            .gl_type = glad.GL_FLOAT,
            ._usage_index = number_of_trailing_zeros(NORMAL),
        };
    }

    pub fn tex_coords0() VertexAttribute {
        return VertexAttribute{
            .usage = TEXTURECOORDINATES,
            .num_components = 2,
            .aliass = "a_texCoord0",
            .gl_type = glad.GL_FLOAT,
            .unit = 0,
            ._usage_index = number_of_trailing_zeros(TEXTURECOORDINATES),
        };
    }

    pub fn blend_weight0() VertexAttribute {
        return VertexAttribute{
            .usage = BONEWEIGHT,
            .num_components = 2,
            .aliass = "a_boneWeight0",
            .gl_type = glad.GL_FLOAT,
            .unit = 0,
            ._usage_index = number_of_trailing_zeros(BONEWEIGHT),
        };
    }

    pub fn blend_weight1() VertexAttribute {
        return VertexAttribute{
            .usage = BONEWEIGHT,
            .num_components = 2,
            .aliass = "a_boneWeight1",
            .gl_type = glad.GL_FLOAT,
            .unit = 1,
            ._usage_index = number_of_trailing_zeros(BONEWEIGHT),
        };
    }

    pub fn blend_weight2() VertexAttribute {
        return VertexAttribute{
            .usage = BONEWEIGHT,
            .num_components = 2,
            .aliass = "a_boneWeight2",
            .gl_type = glad.GL_FLOAT,
            .unit = 2,
            ._usage_index = number_of_trailing_zeros(BONEWEIGHT),
        };
    }
    pub fn blend_weight3() VertexAttribute {
        return VertexAttribute{
            .usage = BONEWEIGHT,
            .num_components = 2,
            .aliass = "a_boneWeight3",
            .gl_type = glad.GL_FLOAT,
            .unit = 3,
            ._usage_index = number_of_trailing_zeros(BONEWEIGHT),
        };
    }

    pub fn get_size_bytes(self: *VertexAttribute) i32 {
        switch (self.gl_type) {
            glad.GL_FLOAT => {
                return 4 * self.num_components;
            },
            glad.GL_UNSIGNED_BYTE, glad.GL_BYTE => {
                return self.num_components;
            },
            glad.GL_UNSIGNED_SHORT, glad.GL_SHORT => {
                return 2 * self.num_components;
            },
            else => {
                //printf("Type not supported");
                std.debug.panic("Type not supported: {}", .{self.gl_type});
                //@panic("Type not supported");
            },
        }
    }

    pub fn get_key(self: *VertexAttribute) i32 {
        return (self._usage_index << 8) + (self.unit & 0xFF);
    }
};

pub const VertexAttributes = struct {
    attributes: [MAX]VertexAttribute = undefined,
    vertex_size: i32 = 0,
    mask: u64 = 0,
    count: u8 = 0,

    // TODO: should consider this maybe? sometimes it coult be dynamic, so allocate an array
    pub fn init(alloc: ?*std.mem.Allocator) VertexAttributes {
        @panic("unimplemented");
    }
    pub fn deinit(self: *VertexAttributes) void {
        @panic("unimplemented");
    }
    // ---

    pub fn add(self: *VertexAttributes, attr: VertexAttribute) void {
        self.attributes[self.count] = attr;
        self.count += 1;
        self.calculate_offsets();
    }
    pub fn calculate_offsets(self: *VertexAttributes) void {
        var count: i32 = 0;
        for (self.attributes) |*a, i| {
            a.offset = count;
            count += a.get_size_bytes();
            if (i == self.count - 1) break;
        }
        self.vertex_size = count;
    }

    pub fn get_mask(self: *VertexAttributes) u64 {
        if (self.mask == 0) {
            var result: u64 = 0;
            for (self.attributes) |a, i| {
                result |= a.usage;
                if (i == self.count - 1) break;
            }
            self.mask = result;
        }
        return self.mask;
    }

    pub fn get_mask_with_size_packed(self: *VertexAttributes) u64 {
        return self.get_mask() | (self.count << 32);
    }
};

pub const IndexBuffer = struct {
    handle: c_uint = 0,
    buffer: []i32 = undefined,
    is_direct: bool = false,
    is_dirty: bool = true,
    is_bound: bool = false,
    usage: c_uint = 0,
    empty: bool = false,

    pub fn new(allocator: *std.mem.Allocator, static: bool, size: usize) IndexBuffer {
        var ret = IndexBuffer{};
        ret.buffer = allocator.alloc(i32, size) catch @panic("can't allocate");
        ret.is_direct = true;
        ret.empty = size == 0;

        glad.glGenBuffers(1, &ret.handle);
        ret.usage = if (static) glad.GL_STATIC_DRAW else glad.GL_DYNAMIC_DRAW;

        return ret;
    }

    pub fn init(self: *IndexBuffer, allocator: *std.mem.Allocator, static: bool, size: usize) void {
        self.buffer = allocator.alloc(i32, size) catch @panic("can't allocate");
        self.is_direct = true;
        self.empty = size == 0;

        glad.glGenBuffers(1, &self.handle);
        self.usage = if (static) glad.GL_STATIC_DRAW else glad.GL_DYNAMIC_DRAW;
    }

    pub fn deinit(self: *IndexBuffer) void {
        glad.glBindBuffer(glad.GL_ELEMENT_ARRAY_BUFFER, 0);
        glad.glDeleteBuffers(1, &self.handle);
    }

    pub fn bind(self: *IndexBuffer) void {
        glad.glBindBuffer(glad.GL_ELEMENT_ARRAY_BUFFER, self.handle);
        if (self.is_dirty) {
            glad.glBufferData(glad.GL_ELEMENT_ARRAY_BUFFER, @intCast(c_longlong, self.buffer.len * 4), self.buffer.ptr, self.usage);
            self.is_dirty = false;
        }
        self.is_bound = true;
    }

    pub fn unbind(self: *IndexBuffer) void {
        glad.glBindBuffer(glad.GL_ELEMENT_ARRAY_BUFFER, self.handle);
        if (self.is_dirty) {
            glad.glBufferData(glad.GL_ELEMENT_ARRAY_BUFFER, @intCast(c_longlong, self.buffer.len * 4), self.buffer.ptr, self.usage);
            self.is_dirty = false;
        }
        self.is_bound = true;
    }

    pub fn invalidate(self: *IndexBuffer) void {
        glad.glGenBuffers(1, &self.handle);
        self.is_dirty = true;
    }

    pub fn set_data(self: *IndexBuffer, data: []const i32, offset: usize, count: usize) void {
        self.is_dirty = true;
        var i: usize = 0;
        while (i < count) : (i += 1) {
            self.buffer[i] = data[offset + i];
        }

        if(self.is_bound) {
            glad.glBufferData(glad.GL_ELEMENT_ARRAY_BUFFER, @intCast(c_longlong, self.buffer.len * 4), self.buffer.ptr, self.usage);
            self.is_dirty = false;
        }
    }

    // TODO: this considers it's always full
    pub fn get_num_indices(self: *IndexBuffer) u32 {
        return if (self.empty) 0 else @intCast(u32, self.buffer.len);
    }

    pub fn get_num_max_indices(self: *IndexBuffer) u32 {
        return if (self.empty) 0 else @intCast(u32, self.buffer.len);
    }
};

pub const VertexBuffer = struct {
    buffer_handle: c_uint = 0,
    vao_handle: c_uint = 0,

    usage: c_uint = 0,
    is_static: bool = false,
    is_dirty: bool = false,
    is_bound: bool = false,

    attributes: VertexAttributes = undefined,
    vertices: []f32 = undefined,
    cached_locations: []i32 = undefined,
    cache_valid: bool = false,
    pub fn new(allocator: *std.mem.Allocator, static: bool, size: usize, attr: VertexAttributes) VertexBuffer {
    
        
        var vsize = size * @intCast(usize, @divFloor(attr.vertex_size, 4));

        var ret = VertexBuffer{};
        ret.attributes = attr;
        ret.vertices = allocator.alloc(f32, vsize) catch @panic("can't allocate");
        ret.cached_locations = allocator.alloc(i32, attr.count) catch @panic("can't allocate");

        glad.glGenBuffers(1, &ret.buffer_handle);
        ret.usage = if (static) glad.GL_STATIC_DRAW else glad.GL_DYNAMIC_DRAW;

        glad.glGenVertexArrays(1, &ret.vao_handle);
        return ret;
    }

    pub fn init(self: *VertexBuffer, allocator: *std.mem.Allocator, static: bool, size: usize, attr: VertexAttributes) void {
        
        var vsize = size * @intCast(usize, @divFloor(attr.vertex_size, 4));

        self.attributes = attr;
        
        // TODO: i shouldn't have to allocate a buffer here, remove that asap
        self.vertices = allocator.alloc(f32, vsize) catch @panic("can't allocate");
        self.cached_locations = allocator.alloc(i32, attr.count) catch @panic("can't allocate");

        glad.glGenBuffers(1, &self.buffer_handle);
        self.usage = if (static) glad.GL_STATIC_DRAW else glad.GL_DYNAMIC_DRAW;

        glad.glGenVertexArrays(1, &self.vao_handle);
    }

    pub fn deinit(self: *VertexBuffer) void {
        glad.glBindBuffer(glad.GL_ARRAY_BUFFER, 0);
        glad.glDeleteBuffers(1, &self.buffer_handle);
        glad.glDeleteVertexArrays(1, &self.vao_handle);
    }

    pub fn bind(self: *VertexBuffer, program: *ShaderProgram, locations: ?*[]i32) void {
        glad.glBindVertexArray(self.vao_handle);

        self.bind_attributes(program, locations);

        self.bind_data();

        self.is_bound = true;
    }

    pub fn bind_attributes(self: *VertexBuffer, program: *ShaderProgram, locations: ?*[]i32) void {
        const numAttributes = self.attributes.count;

        var i: usize = 0;
        while (i < numAttributes) : (i += 1) {
            var attr = &self.attributes.attributes[i];
            var loc = program.get_attrib_loc(attr.aliass);
            if(loc < 0) continue;

            program.enable_vert_attr(loc);
            program.set_vert_attr(loc, attr.num_components, attr.gl_type, attr.normalized, self.attributes.vertex_size, attr.offset);
        }
        // TODO: finish implementing caching
        //if(self.cache_valid) {
        //    if(locations == null) {
        //        var i: i32 = 0;
        //        while(self.cache_valid and i < numAttributes) : (i+=1) {
        //            var attribute = &self.attributes.attributes[i];
        //            var location = program.get_attrib_loc(attribute.aliass);
        //            self.cache_valid = location == self.cached_locations[i];
        //        }
        //    } else {
        //        self.cached_locations = locations.?.len
        //    }
        //}
    }

    pub fn bind_data(self: *VertexBuffer) void {
        if(self.is_dirty) {
            glad.glBindBuffer(glad.GL_ARRAY_BUFFER, self.buffer_handle);
            glad.glBufferData(glad.GL_ARRAY_BUFFER, @intCast(c_longlong, self.vertices.len * 4), self.vertices.ptr, self.usage);
            self.is_dirty = false;
        }
    }

    pub fn unbind(self: *VertexBuffer, program: *ShaderProgram, locations: ?*[]i32) void {
        glad.glBindVertexArray(0);
        self.is_bound = false;
    }

    pub fn set_data(self: *VertexBuffer, data: []const f32, offset: usize, count: usize) void {
        self.is_dirty = true;

        var i: usize = 0;
        while (i < count) : (i += 1) {
            self.vertices[i] = data[offset + i];
        }        

        self.buffer_changed();
    }

    fn buffer_changed(self: *VertexBuffer) void {
        if(self.is_bound) {
            glad.glBufferData(glad.GL_ARRAY_BUFFER, @intCast(c_longlong, self.vertices.len * 4), self.vertices.ptr, self.usage);
            self.is_dirty = false;
        }
    }

    
    // TODO: this considers it's always full
    pub fn get_num_vertices(self: *VertexBuffer) u32 {
        return @intCast(u32, self.vertices.len / @intCast(u32,(@divFloor(self.attributes.vertex_size, 4))));
    }

    pub fn get_num_max_vertices(self: *VertexBuffer) u32 {
        return @intCast(u32, self.vertices.len / (@divFloor(self.attributes.vertex_size, 4)));
    }
};

pub const Mesh = struct {
    vertex_buffer: VertexBuffer,
    index_buffer: IndexBuffer,
    auto_bind: bool = true,

    pub fn init(alloc: *std.mem.Allocator, attr: VertexAttributes, static: bool, num_v: usize, num_i: usize) Mesh {
        var ret = Mesh {
            .vertex_buffer = VertexBuffer.new(alloc, static, num_v, attr),
            .index_buffer = IndexBuffer.new(alloc, static, num_i),
        };

        return ret;
    }

    pub fn deinit(self: *Mesh) void {
        self.vertex_buffer.deinit();
        if (self.index_buffer) |it| {
            it.deinit();
        }
    }

    pub fn render(self: *Mesh, program: *ShaderProgram, ptype: PrimitiveType) void {
        self.render_full(program, ptype, 0,
        if(self.index_buffer.get_num_max_indices() > 0) self.index_buffer.get_num_indices() else self.vertex_buffer.get_num_vertices(),
            self.auto_bind
        );
    }

    // TODO: finish
    pub fn set_vertices(self: *Mesh, data: []const f32) void {
        self.vertex_buffer.set_data(data, 0, data.len);
    }
    pub fn set_indices(self: *Mesh, data: []const i32) void {
        self.index_buffer.set_data(data, 0, data.len);
    }
    
    pub fn render_full(self: *Mesh, program: *ShaderProgram, ptype: PrimitiveType, offset: usize, count: usize, autoBind: bool) void {
        if(autoBind) 
            self.bind(program, null);


        if(self.index_buffer.get_num_indices() > 0) {
            var orr = offset * 4;
            glad.glDrawElements(@enumToInt(ptype), @intCast(c_int, count), glad.GL_UNSIGNED_INT, @intToPtr(?*const c_void, orr));
        } else {
            glad.glDrawArrays(@enumToInt(ptype), @intCast(c_int, offset), @intCast(c_int, count));
        }

        if(autoBind) {
            self.unbind(program, null);
        }
    }
    
    pub fn bind(self: *Mesh, program: *ShaderProgram, locations: ?*[]i32) void {
        self.vertex_buffer.bind(program, locations);
        if(self.index_buffer.get_num_indices() > 0) {
            self.index_buffer.bind();
        }
    }
    pub fn unbind(self: *Mesh, program: *ShaderProgram, locations: ?*[]i32) void {
        self.vertex_buffer.unbind(program, locations);
        if(self.index_buffer.get_num_indices() > 0) {
            self.index_buffer.unbind();
        }
    }
};

