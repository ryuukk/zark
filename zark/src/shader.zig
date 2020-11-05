const std = @import("std");
const zark = @import("zark.zig");
const math = zark.math;
const array = zark.array;
const glad = zark.gl;

pub const LocType = enum {
    ATTRIBUTE,
    UNIFORM,
};

pub const ShaderLoc = struct {
    loc_type: LocType,
    location: i32,
    typee: c_uint,
    size: i32,
    name: []u8,
};

pub const ShaderProgram = struct {
    v_source: []const u8,
    f_source: []const u8,
    invalidated: bool = false,
    program: c_uint = 0,
    v_handle: c_uint = 0,
    f_handle: c_uint = 0,
    is_compiled: bool = false,
    log: []u8,
    attributes: []ShaderLoc = undefined,
    uniforms: []ShaderLoc = undefined,
    alloc: *std.mem.Allocator,

    pub fn init(alloc: *std.mem.Allocator, v: []const u8, f: []const u8) ShaderProgram {
        var ret = ShaderProgram{
            .v_source = v,
            .f_source = f,
            .log = "",
            .alloc = alloc,
        };
        ret.compile_shaders();
        if (ret.is_compiled) {
            ret.fetch_attributes();
            ret.fetch_uniforms();
        }
        return ret;
    }

    pub fn deinit(self: *ShaderProgram) void {
        self.alloc.free(self.log);
        for (self.attributes) |a| {
            self.alloc.free(a.name);
        }
        for (self.uniforms) |u| {
            self.alloc.free(u.name);
        }
    }

    fn fetch_attributes(self: *ShaderProgram) void {
        var numAttributes: c_int = 0;
        glad.glGetProgramiv(self.program, glad.GL_ACTIVE_ATTRIBUTES, &numAttributes);
        //zark.INFOf("Attributes: {}", .{numAttributes});
        self.attributes = self.alloc.alloc(ShaderLoc, @intCast(usize, numAttributes)) catch @panic("unable to alloc");

        var i: u8 = 0;
        while (numAttributes > 0) {
            var buffer = self.alloc.allocSentinel(u8, 128, 0) catch @panic("unable to alloc");
            defer self.alloc.free(buffer);

            var typee: c_uint = 0;
            var size: c_int = 0;
            var length: c_int = 0;

            glad.glGetActiveAttrib(self.program, i, 128, &length, &size, &typee, buffer.ptr);

            var name = self.alloc.allocSentinel(u8, @intCast(usize, length), 0) catch @panic("unable to alloc");

            std.mem.copy(u8, name, buffer[0..@intCast(usize, length)]);

            var location = glad.glGetAttribLocation(self.program, buffer.ptr);

            std.debug.assert(location == i);

            self.attributes[i] = ShaderLoc{
                .loc_type = LocType.ATTRIBUTE,
                .location = location,
                .size = size,
                .typee = typee,
                .name = name,
            };

            //zark.INFOf("Attribute: loc: {} struct: {}", .{ location, self.attributes[i] });

            numAttributes -= 1;
            i += 1;
        }
    }

    fn fetch_uniforms(self: *ShaderProgram) void {
        var numAttributes: c_int = 0;
        glad.glGetProgramiv(self.program, glad.GL_ACTIVE_UNIFORMS, &numAttributes);
        //zark.INFOf("Uniforms: {}", .{numAttributes});
        self.uniforms = self.alloc.alloc(ShaderLoc, @intCast(usize, numAttributes)) catch @panic("unable to alloc");

        var i: u8 = 0;
        while (numAttributes > 0) {
            var buffer = self.alloc.allocSentinel(u8, 128, 0) catch @panic("unable to alloc");
            defer self.alloc.free(buffer);

            var typee: c_uint = 0;
            var size: c_int = 0;
            var length: c_int = 0;

            glad.glGetActiveUniform(self.program, i, 128, &length, &size, &typee, buffer.ptr);

            var name = self.alloc.allocSentinel(u8, @intCast(usize, length), 0) catch @panic("unable to alloc");

            std.mem.copy(u8, name, buffer[0..@intCast(usize, length)]);

            var location = glad.glGetUniformLocation(self.program, buffer.ptr);

            std.debug.assert(location == i);

            self.uniforms[i] = ShaderLoc{
                .loc_type = LocType.UNIFORM,
                .location = location,
                .size = size,
                .typee = typee,
                .name = name,
            };

            //zark.INFOf("Uniform: loc: {} struct: {}", .{ location, self.uniforms[i] });

            numAttributes -= 1;
            i += 1;
        }
    }

    fn compile_shaders(self: *ShaderProgram) void {
        self.v_handle = self.load_shader(true);
        if (self.v_handle == 0) {
            self.is_compiled = false;
            return;
        }

        self.f_handle = self.load_shader(false);
        if (self.f_handle == 0) {
            self.is_compiled = false;
            return;
        }

        self.program = self.link_program(self.create_program());
        if (self.program == 0) {
            self.is_compiled = false;
            return;
        }

        self.is_compiled = true;
    }

    fn load_shader(self: *ShaderProgram, is_v: bool) c_uint {
        var vs = glad.glCreateShader(if (is_v) glad.GL_VERTEX_SHADER else glad.GL_FRAGMENT_SHADER);
        if (vs == 0) @panic("unable to create vertex shader");

        var compiled: c_int = 0;
        var ssl: c_int = @intCast(c_int, if (is_v) self.v_source.len else self.f_source.len);
        var source_ptr: ?[*]const u8 = if (is_v) self.v_source.ptr else self.f_source.ptr;
        glad.glShaderSource(vs, 1, &source_ptr, &ssl);
        glad.glCompileShader(vs);
        glad.glGetShaderiv(vs, glad.GL_COMPILE_STATUS, &compiled);

        if (compiled == 0) {
            var logLen: c_int = 0;
            glad.glGetShaderiv(vs, glad.GL_INFO_LOG_LENGTH, &logLen);

            self.log = self.alloc.alloc(u8, @intCast(usize, logLen)) catch @panic("can't alloc");
            glad.glGetShaderInfoLog(vs, logLen, null, @ptrCast([*c]u8, self.log));

            std.debug.panic("Unable to compile shader: {}\n{}", .{ is_v, self.log });
        }

        return vs;
    }

    fn create_program(self: *ShaderProgram) c_uint {
        return glad.glCreateProgram();
    }

    fn link_program(self: *ShaderProgram, program: c_uint) c_uint {
        if (program == 0) return 0;

        glad.glAttachShader(program, self.v_handle);
        glad.glAttachShader(program, self.f_handle);
        glad.glLinkProgram(program);

        var linked: c_int = 0;
        glad.glGetProgramiv(program, glad.GL_LINK_STATUS, &linked);
        if (linked == 0) {
            // TODO: log
            std.debug.panic("Unnable to link program", .{});
        }
        return program;
    }

    pub fn check_managed(self: *ShaderProgram) void {
        if (self.invalidated) {
            @panic("not implementad");
        }
    }
    
    pub fn bind(self: *ShaderProgram) void {
        self.check_managed();

        glad.glUseProgram(self.program);
    }

    pub fn get_attrib_loc(self: *ShaderProgram, alias: []const u8) i32 {
        for (self.attributes) |loc| {
            if (array.equals(u8, loc.name, alias)) return loc.location;
        }
        return -1;
        //zark.ERRORf("Attribute not found: {}", .{alias});
        //@panic("i don't know what to do here yet ");
    }

    pub fn enable_vert_attr(self: *ShaderProgram, location: i32) void {
        self.check_managed();
        glad.glEnableVertexAttribArray(@intCast(c_uint, location));
    }

    pub fn set_vert_attr(self: *ShaderProgram, location: i32, size: c_int, gltype: c_uint, norm: bool, stride: c_int, offset: c_int) void {
        self.check_managed();
        // @intToPtr(?*const c_void, @intCast(usize, orr))
        glad.glVertexAttribPointer(@intCast(c_uint, location), size, gltype, if (norm) glad.GL_TRUE else glad.GL_FALSE, stride, @intToPtr(?*const c_void, @intCast(usize, offset)));
    }

    pub fn fetch_uniform_location(self: *ShaderProgram, name: []const u8, pedantic: bool) i32 {
        var location: i32 = -2;
        var uniform: ?*ShaderLoc = null;

        for (self.uniforms) |*u, i| {
            if (array.equals(u8, u.name, name)) {
                location = u.location;
                uniform = u;
                break;
            }
        }

        if (location == -2) {
            var ptr: ?[*]const u8 = name.ptr;
            location = glad.glGetUniformLocation(self.program, ptr);
            if (location == -1 and pedantic) {
                @panic("what should i do?");
            }
            if (uniform) |u| {
                u.location = location;
            }
        }

        return location;
    }

    pub fn set_uniform_mat4(self: *ShaderProgram, name: []const u8, value: *const math.Mat4) void {
        self.check_managed();
        var location = self.fetch_uniform_location(name, true); // TODO: change once static pedantic bool added

        glad.glUniformMatrix4fv(location, 1, 0, &value.m00);
    }

    pub fn set_uniform_i(self: *ShaderProgram, name: []const u8, value: i32) void {
        self.check_managed();
        var location = self.fetch_uniform_location(name, true); // TODO: change once static pedantic bool added

        glad.glUniform1i(location, @intCast(c_int, value));
    }



};
