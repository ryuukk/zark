const std = @import("std");
const json = std.json;
const Value = json.Value;
const zark = @import("zark.zig");

const Vec2 = zark.math.Vec2;
const Vec3 = zark.math.Vec3;
const Quat = zark.math.Quat;
const Mat4 = zark.math.Mat4;
const Color = zark.math.Color;

const ArrayList = std.ArrayList;
const VertexAttribute = zark.mesh.VertexAttribute;
const VertexAttributes = zark.mesh.VertexAttributes;
const Allocator = std.mem.Allocator;

usingnamespace zark.array;

pub const ModelData = struct {
    id: []const u8 = undefined,
    version_maj: u8 = 0,
    version_min: u8 = 0,
    meshes: []ModelMesh = &[_]ModelMesh{},
    materials: []ModelMaterial = &[_]ModelMaterial{},
    nodes: []ModelNode = &[_]ModelNode{},
    animations: []ModelAnimation = &[_]ModelAnimation{},

    a: std.heap.ArenaAllocator,

    pub fn load(alloc: *Allocator, file: []const u8) !ModelData {
        
        zark.INFOf("Loading model: {}", .{file});
        
        var data = try zark.fs.read_file(alloc, file);
        defer alloc.free(data);

        var parser = std.json.Parser.init(alloc, false);
        defer parser.deinit();

        var tree = try parser.parse(data);
        defer tree.deinit();


        var folder: []const u8 = undefined; 
        if(std.mem.lastIndexOf(u8, file, "/")) |index| {
            folder = file[0 .. index];
        } else {
            folder = "";
        }

        zark.INFOf("Path: {} Folder: {}", .{file, folder});

        var ret = ModelData{
            .a = std.heap.ArenaAllocator.init(std.heap.c_allocator)
         };

        if(tree.root.Object.get("id")) |id| {
            ret.id = ret.a.allocator.dupe(u8, id.String) catch unreachable;
        } else {
            ret.id = ret.a.allocator.dupe(u8, file) catch unreachable;
        }

        try ret.parse_meshes(&tree);
        try ret.parse_materials(&tree, folder);
        try ret.parse_nodes(&tree);
        try ret.parse_animations(&tree);

        return ret;
    }

    pub fn deinit(self: *ModelData) void {
        self.a.deinit();
    }

    pub fn parse_meshes(self: *ModelData, tree: *json.ValueTree) !void {
        var meshes = tree.root.Object.get("meshes").?.Array;

        zark.ASSERT(meshes.items.len > 0, "i don't have time for this");
        
        self.meshes = try self.a.allocator.alloc(ModelMesh, meshes.items.len);

        for(meshes.items) |m, i| {
            var mesh: *const Value = &m;

            var jsonMesh = ModelMesh{};

            if(mesh.Object.get("id")) |id| {
                jsonMesh.id = try self.a.allocator.dupe(u8, id.String);
            }
            else {
                jsonMesh.id = try self.a.allocator.dupe(u8, self.id);
            }

            var attr = mesh.Object.get("attributes").?.Array;
            var vertices = mesh.Object.get("vertices").?.Array;
            var pars = mesh.Object.get("parts").?.Array;

            self.parse_attribuces(&jsonMesh, &attr);
            try self.parse_vertices(&jsonMesh, &vertices);
            try self.parse_meshe_parts(&jsonMesh, &pars);

            self.meshes[i] = jsonMesh;
        }
    }
    
    pub fn parse_attribuces(self: *ModelData, data: *ModelMesh, array: *json.Array) void {
        // TODO: add supprt for other types
        var va = VertexAttributes{};
        for(array.items) |a| {
            var vi: u8 = 0;
            var value = a.String;
            if(equals(u8, value, "POSITION")) {
                va.add(VertexAttribute.position());
            } else if(equals(u8, value, "NORMAL")) {
                va.add(VertexAttribute.normal());
            } else if(equals(u8, value, "TEXCOORD0")) {
                va.add(VertexAttribute.tex_coords0());
            }
        }
        data.attributes = va;
    }

    pub fn parse_vertices(self: *ModelData, data: *ModelMesh, array: *json.Array) !void {
        data.vertices = try self.a.allocator.alloc(f32, array.items.len);
        for(array.items) |v, i| {
            data.vertices[i] = @floatCast(f32, v.Float);
        }
    }
    pub fn parse_meshe_parts(self: *ModelData, data: *ModelMesh, array: *json.Array) !void {
        data.parts = try self.a.allocator.alloc(ModelMeshPart, array.items.len);

        
        for(array.items) |mp, i| {
            var jsonpart = ModelMeshPart{};
            jsonpart.id = try self.a.allocator.dupe(u8, mp.Object.get("id").?.String);
            zark.INFOf("PART: {} {}", .{i, jsonpart.id});


            var pt = mp.Object.get("type").?.String;
            self.parse_type(&jsonpart, pt);

            var indices = mp.Object.get("indices").?.Array;
            try self.parse_indices(&jsonpart, &indices);

            data.parts[i] = jsonpart;
        }
    }

    pub fn parse_type(self: *ModelData, data: *ModelMeshPart, str: []const u8) void {
        if(equals(u8, str, "TRIANGLES")) {
            data.primitive_type = zark.gl.PrimitiveType.TRIANGLE;
            return;
        }

        zark.ERRORf("Not supported {}", .{str});
        @panic("");
    }

    pub fn parse_indices(self: *ModelData, data: *ModelMeshPart, array: *json.Array) !void {
        data.indices = try self.a.allocator.alloc(i32, array.items.len);
        for(array.items) |v, i| {
            data.indices[i] = @intCast(i32, v.Integer);
        }
    }

    pub fn parse_nodes(self: *ModelData, tree: *json.ValueTree) !void {
        var allocator = &self.a.allocator;

        var array = tree.root.Object.get("nodes").?.Array;
        self.nodes = try allocator.alloc(ModelNode, array.items.len);
        for(array.items) |n, i| {
            self.nodes[i] = try self.parse_nodes_recursively(&n);
        }
    }

    pub fn parse_nodes_recursively(self: *ModelData, jvalue: *const json.Value) !ModelNode {
        var allocator = &self.a.allocator;

        var jnode = ModelNode{};
        jnode.id = try allocator.dupe(u8, jvalue.Object.get("id").?.String);

        if(jvalue.Object.get("mesh")) |mid| {
            jnode.mesh_id = try allocator.dupe(u8, mid.String);
        } else {
            jnode.mesh_id = "";
        }

        if(jvalue.Object.get("parts")) |parts| {
            jnode.parts = try allocator.alloc(ModelNodePart, parts.Array.items.len);
            for(parts.Array.items) |p, i| {
                var jpart = ModelNodePart{};

                jpart.meshpart_id = try allocator.dupe(u8, p.Object.get("meshpartid").?.String);
                jpart.material_id = try allocator.dupe(u8, p.Object.get("materialid").?.String);

                if(p.Object.get("bones")) |bones| {
                    jpart.bones = try allocator.alloc(Bone, bones.Array.items.len);
                    for(bones.Array.items) |bone| {
                        // TODO: parse bones
                    }
                }
                jnode.parts[i] = jpart;
            }
        } else {
            jnode.parts = &[_]ModelNodePart{};
        }

        if(jvalue.Object.get("children")) |c| {
            jnode.children = try allocator.alloc(ModelNode, c.Array.items.len);
            for(c.Array.items) |cn, i| {
                jnode.children[i] = self.parse_nodes_recursively(&cn) catch unreachable;
            }
        } else {
            jnode.children = &[_]ModelNode{};
        }
        return jnode;
    }

    pub fn parse_materials(self: *ModelData, tree: *json.ValueTree, folder: []const u8) !void {
        var allocator = &self.a.allocator;

        var materials = tree.root.Object.get("materials").?.Array;
        // TODO: think about a default one
        self.materials = try allocator.alloc(ModelMaterial, materials.items.len);
        for(materials.items) |m, i| {
            var jmat = ModelMaterial{};
            jmat.id = try allocator.dupe(u8, m.Object.get("id").?.String);
            if(m.Object.get("textures")) |textures| {
                jmat.textures = try allocator.alloc(ModelTexture, textures.Array.items.len);
                for(textures.Array.items) |t, j| {
                    var jtex = ModelTexture{};
                    jtex.id = try allocator.dupe(u8, t.Object.get("id").?.String);
                    jtex.uv_translation = Vec2.set(0, 0);
                    jtex.uv_scaling = Vec2.set(1, 1);
                    jtex.usage = parse_texture_usage(t.Object.get("type").?.String);

                    if(t.Object.get("filename")) |f| {
                        // TODO: combine folder + filename
                        jtex.filename = try allocator.dupe(u8, f.String);
                    } else {
                        @panic("wrong");
                    }
                    jmat.textures[j] = jtex;
                }
            } else {
                jmat.textures = zark.empty(ModelTexture);
            }
            self.materials[i] = jmat;
        }
    }
    pub fn parse_texture_usage(typee: []const u8) i32 {
             if (equals(u8, typee, "AMBIENT")) {return USAGE_AMBIENT;}
        else if (equals(u8, typee, "BUMP")) {return USAGE_BUMP;}
        else if (equals(u8, typee, "DIFFUSE")) {return USAGE_DIFFUSE;}
        else if (equals(u8, typee, "EMISSIVE")) {return USAGE_EMISSIVE;}
        else if (equals(u8, typee, "NONE")) {return USAGE_NONE;}
        else if (equals(u8, typee, "NORMAL")) {return USAGE_NORMAL;}
        else if (equals(u8, typee, "REFLECTION")) {return USAGE_REFLECTION;}
        else if (equals(u8, typee, "SHININESS")) {return USAGE_SHININESS;}
        else if (equals(u8, typee, "SPECULAR")) {return USAGE_SPECULAR;}
        else if (equals(u8, typee, "TRANSPARENCY")) {return USAGE_TRANSPARENCY;}
        return USAGE_UNKNOWN;
    }
    
    pub fn parse_animations(self: *ModelData, tree: *json.ValueTree) !void {
        // TODO: parse animations
    }

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

pub const ModelMesh = struct {
    id: []const u8 = undefined,
    attributes: VertexAttributes = undefined,
    vertices: []f32 = undefined,
    parts: []ModelMeshPart = undefined,
};
pub const ModelMeshPart = struct {
    id: []const u8 = undefined,
    indices: []i32 = undefined,
    primitive_type: zark.gl.PrimitiveType = undefined,
};

pub const USAGE_UNKNOWN: i32 = 0;
pub const USAGE_NONE: i32 = 1;
pub const USAGE_DIFFUSE: i32 = 2;
pub const USAGE_EMISSIVE: i32 = 3;
pub const USAGE_AMBIENT: i32 = 4;
pub const USAGE_SPECULAR: i32 = 5;
pub const USAGE_SHININESS: i32 = 6;
pub const USAGE_NORMAL: i32 = 7;
pub const USAGE_BUMP: i32 = 8;
pub const USAGE_TRANSPARENCY: i32 = 9;
pub const USAGE_REFLECTION: i32 = 10;
pub const MaterialType = enum { LAMBERT, PHONG };
pub const ModelMaterial = struct {
    id: []const u8 = undefined,
    typee: MaterialType = undefined,
    ambient: Color = undefined,
    diffuse: Color = undefined,
    specular: Color = undefined,
    emissive: Color = undefined,
    reflection: Color = undefined,
    shininess: f32 = 0.0,
    opacity: f32 = 1.0,
    textures: []ModelTexture = zark.empty(ModelTexture),
};
pub const ModelTexture = struct {
    id: []const u8 = undefined,
    filename: []const u8 = undefined,
    uv_translation: Vec2 = undefined,
    uv_scaling: Vec2 = undefined,
    usage: i32 = undefined,
};

pub const ModelNode = struct {
    id: []const u8 = undefined,
    translation: Vec3 = undefined,
    rotation: Quat = undefined,
    scale: Vec3 = undefined,
    mesh_id: []const u8 = undefined,
    parts: []ModelNodePart = undefined,
    children: []ModelNode = undefined,
};


pub const Bone = struct {
    id: []const u8,
    mt: Mat4,
};
pub const ModelNodePart = struct {
    material_id: []const u8 = undefined,
    meshpart_id: []const u8 = undefined,
    bones: []Bone = undefined,
};
pub const ModelNodeAnimation = struct {};
pub const ModelAnimation = struct {};
pub fn ModelNodeKeyframe(comptime T: type, keytime: f32, value: T) type {
    return struct {
        keytime: f32 = keytime,
        value: T = value,
    };
}
