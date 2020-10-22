const std = @import("std");
const zark = @import("zark.zig");

const ModelData = struct {
    alloc: *std.mem.Allocator = undefined,
    id: []const u8 = undefined,
    meshes: zark.array.Array(),

    pub fn load(alloc: *std.mem.Allocator, file: []const u8) ModelData {
        var ret = ModelData{
            .meshes = zark.array.Array()
        };

        return ret;
    }

    pub fn parse_meshes(self: *ModelData) void {}
    pub fn parse_meshe_parts(self: *ModelData) void {}
    pub fn parse_nodes(self: *ModelData) void {}
    pub fn parse_nodes_recursively(self: *ModelData) void {}
    pub fn parse_materials(self: *ModelData) void {}
    pub fn parse_animations(self: *ModelData) void {}
    pub fn parse_texture_usage(self: *ModelData) void {}
    pub fn parse_type(self: *ModelData) void {}
    pub fn parse_indices(self: *ModelData) void {}
    pub fn parse_vertices(self: *ModelData) void {}
    pub fn parse_attribuces(self: *ModelData) void {}
    pub fn parse_vec2(self: *ModelData) Vec2 {
        var ret: Vec2;

        return ret;
    }
    pub fn parse_vec3(self: *ModelData) Vec3 {
        var ret: Vec3;

        return ret;
    }
    pub fn parse_quat(self: *ModelData) Quat {
        var ret: Quat;

        return ret;
    }
};

const ModelMesh = struct {};
const ModelMaterial = struct {};
const ModelNode = struct {};
const ModelAnimation = struct {};

const ModelMeshPart = struct {};
const MaterialType = enum { LAMBERT, PHONG };
const ModelTexture = struct {};
const ModelNodePart = struct {};
const ModelNodeAnimation = struct {};
fn ModelNodeKeyframe(comptime T: type, keytime: f32, value: T) type {
    return struct {
        keytime: f32 = keytime,
        value: T = value,
    };
}
