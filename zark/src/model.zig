const std = @import("std");
const zark = @import("zark.zig");
const Array = zark.array.Array;

const Mesh = zark.mesh.Mesh;

const Vec3 = zark.math.Vec3;
const Mat4 = zark.math.Mat4;
const Quat = zark.math.Quat;
const Node = zark.node.Node;
const NodePart = zark.node.NodePart;
const ShaderProgram = zark.shader.ShaderProgram;

usingnamespace zark.model_data;


pub const Model = struct {
    a: std.heap.ArenaAllocator,
    bones: std.AutoHashMap(*NodePart, *[]Bone) = undefined,
    id: []u8 = &[_]u8{},
    materials: []Material = &[_]Material{},
    nodes: []*Node = &[_]*Node{},
    animations: []Animation = &[_]Animation{},
    meshes: []Mesh = &[_]Mesh{},
    mesh_parts: []MeshPart = &[_]MeshPart{},

    pub fn init(allocator: *std.mem.Allocator, data: *ModelData) !Model {
        var ret = Model{
            .a = std.heap.ArenaAllocator.init(allocator)
        };
        ret.bones = std.AutoHashMap(*NodePart, *[]Bone).init(&ret.a.allocator);

        try ret.load_meshes(data.meshes);
        try ret.load_materials(data.materials);
        try ret.load_nodes(data.nodes);
        try ret.load_animations(data.animations);
        
        ret.calculate_transforms();

        return ret;
    }

    pub fn deinit(self: *Model) !void {
        // todo: i should cleanup mesh properly
        // since i am using an arena allocator, opengl stuff won't be deleted
        self.a.deinit();
    }

    fn load_meshes(self: *Model, meshes: []ModelMesh) !void {
        self.meshes = try self.a.allocator.alloc(Mesh, meshes.len);
        for(meshes) |m, i| {
            try self.convert_mesh(&m, i);
        }
    }

    fn convert_mesh(self: *Model, modelMesh: *const ModelMesh, index: usize) !void {
        var numIndices:usize = 0;
        for(modelMesh.parts) |p| {
            numIndices += p.indices.len;
        }

        var hasIndices = numIndices > 0;
        var numVertices: usize = @divFloor(modelMesh.vertices.len, ( @intCast(usize, @divFloor(modelMesh.attributes.vertex_size, 4))));
        var mesh = Mesh.init(&self.a.allocator, modelMesh.attributes, true, numVertices, numIndices);
        self.meshes[index] = mesh;

        mesh.set_vertices(modelMesh.vertices);

        // TODO: this is ugly
        var indices: ?[]i32 = null;
        var offset: usize = 0;
        if(hasIndices) {
            indices = try self.a.allocator.alloc(i32, numIndices);
        }

        self.mesh_parts = try self.a.allocator.alloc(MeshPart, modelMesh.parts.len);
        for(modelMesh.parts) |p, i| {
            var part = MeshPart{};
            part.id = try self.a.allocator.dupe(u8, p.id);
            part.primitive_type = p.primitive_type;
            part.offset = offset;
            part.size = if(hasIndices) p.indices.len else numVertices;
            part.mesh = &mesh;
            self.mesh_parts[i] = part;
        }

        if(hasIndices) {
            mesh.set_indices(indices.?);
            self.a.allocator.free(indices.?);
        }
    }

    fn load_nodes(self: *Model, nodes: []ModelNode) !void {
        self.bones.clearAndFree();
        self.nodes = try self.a.allocator.alloc(*Node, nodes.len);
        for(nodes) |*node, i| {
            self.nodes[i] = try self.load_node(node);
        }

        // TODO: inv bone transform
    }

    fn load_node(self: *Model, modelNode: *const ModelNode) !*Node {
        var node = try self.a.allocator.create(Node);
        node.* = .{};

        node.id = try self.a.allocator.dupe(u8, modelNode.id);
        node.translation = modelNode.translation;
        node.rotation = modelNode.rotation;
        node.scale = modelNode.scale;
        
        node.children = std.ArrayList(*Node).init(&self.a.allocator);

        zark.ASSERT(modelNode.parts.len < 10, "wtf");
        node.parts = try self.a.allocator.alloc(NodePart, modelNode.parts.len);
        for(modelNode.parts) |*modelNodePart, i| {

            var meshPart: ?*MeshPart = null;
            //var material: ?*Material = null;
            if(modelNodePart.meshpart_id.len > 0) {
                for(self.mesh_parts) |*part| {
                    if(zark.array.equals(u8, modelNodePart.meshpart_id, part.id)) {
                        meshPart = part;
                        break;
                    }
                }
            }

            // TODO: check material

            if(meshPart == null) {
                @panic("something is wrong");
            }

            var nodePart = NodePart{};
            nodePart.mesh_part = meshPart.?;
            //nodePart.material = material;
            node.parts[i] = nodePart;
            if(modelNodePart.bones.len > 0) {
                try self.bones.put(&nodePart, &modelNodePart.bones);
            }
        }

        if(modelNode.children.len > 0) {
            for(modelNode.children) |child, i| {
                var c =  self.load_node(&child) catch unreachable;
                try node.add_child(c);
            }
        }
        return node;
    }

    fn load_animations(self: *Model, animations: []ModelAnimation) !void {}

    fn load_materials(self: *Model, materials: []ModelMaterial) !void {}

    pub fn calculate_transforms(self: *Model) void {
        for(self.nodes) |n| {
            n.calculate_transforms(true);
        }
         for(self.nodes) |n| {
            n.calculate_bone_transforms(true);
        }
    }
};


pub const MeshPart = struct {
    id: [] u8 = undefined,
    primitive_type: zark.gl.PrimitiveType = undefined,
    offset: usize = 0,
    size: usize = 0,
    mesh: *Mesh = undefined,

    pub fn render(self: *MeshPart, program: *ShaderProgram, autobind: bool) void {
        self.mesh.render_full(program, self.primitive_type, self.offset, self.size, autobind);
    }

};

pub const Material = struct {
};

pub const Animation = struct {

};

pub const ModelInstance = struct {

    pub fn deinit(self: *ModelInstance) !void {

    }
};
