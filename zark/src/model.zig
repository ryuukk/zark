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
    meshes: []*Mesh = &[_]*Mesh{},
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
        // TODO: i should cleanup mesh properly
        self.a.deinit();
    }

    fn load_meshes(self: *Model, meshes: []ModelMesh) !void {
        self.meshes = try self.a.allocator.alloc(*Mesh, meshes.len);
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
        var mesh = try self.a.allocator.create(Mesh);        
        mesh.* = Mesh.init(&self.a.allocator, modelMesh.attributes, true, numVertices, numIndices);

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
            part.mesh = mesh;
            if(hasIndices) {
                std.mem.copy(i32, indices.?[offset .. offset + p.indices.len], p.indices);
            }


            self.mesh_parts[i] = part;
        }

        if(hasIndices) {
            mesh.set_indices(indices.?);
            self.a.allocator.free(indices.?);
        }
        
        self.meshes[index] = mesh;
    }

    fn load_nodes(self: *Model, nodes: []ModelNode) !void {
        self.bones.clearAndFree();

        if(nodes.len == 0) return;

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

    fn load_animations(self: *Model, animations: []ModelAnimation) !void {
        // TODO: load animations
        if(animations.len == 0) return;

        self.animations = try self.a.allocator.alloc(Animation, animations.len);
        for(animations) |janim, i| {
            var animation = Animation{
                .id = try self.a.allocator.dupe(u8, janim.id),
            };
            animation.node_animations = try self.a.allocator.alloc(NodeAnimation, janim.node_animations.len);

            for(janim.node_animations) |jna, j| {
                
                if(get_node_recursive(self.nodes, jna.node_id)) |node| {
                    var na = NodeAnimation{
                        .node = node,
                    };

                    if(jna.translation.len > 0) {
                        na.translation = try self.a.allocator.alloc(NodeKeyframe(Vec3), jna.translation.len);
                        for(jna.translation) |kf, k| {
                            if(kf.keytime > animation.duration) 
                                animation.duration = kf.keytime;

                            na.translation[k] = NodeKeyframe(Vec3) {
                                .keytime = kf.keytime,
                                .value = kf.value,
                            };
                        }
                    }

                    if(jna.rotation.len > 0) {
                        na.rotation = try self.a.allocator.alloc(NodeKeyframe(Quat), jna.rotation.len);
                        for(jna.rotation) |kf, k| {
                            if(kf.keytime > animation.duration) 
                                animation.duration = kf.keytime;

                            na.rotation[k] = NodeKeyframe(Quat) {
                                .keytime = kf.keytime,
                                .value = kf.value,
                            };
                        }
                    }

                    if(jna.scaling.len > 0) {
                        na.scaling = try self.a.allocator.alloc(NodeKeyframe(Vec3), jna.scaling.len);
                        for(jna.scaling) |kf, k| {
                            if(kf.keytime > animation.duration) 
                                animation.duration = kf.keytime;

                            na.scaling[k] = NodeKeyframe(Vec3) {
                                .keytime = kf.keytime,
                                .value = kf.value,
                            };
                        }
                    }

                    animation.node_animations[j] = na;
                } else {
                    zark.ERRORf("Can't find node: {}", .{jna.node_id});
                    @panic("fuck this stupid code");
                }
            }

            if(animation.node_animations.len == 0) {
                zark.ERRORf("Animation has no node animations: {}", .{janim.id});
                @panic("fuck you");
            }
            self.animations[i] = animation;
        }
    }

    fn load_materials(self: *Model, materials: []ModelMaterial) !void {
        // TODO: load materials
    }

    pub fn calculate_transforms(self: *Model) void {
        for(self.nodes) |n| {
            n.calculate_transforms(true);
        }
         for(self.nodes) |n| {
            n.calculate_bone_transforms(true);
        }
    }


    fn get_node_recursive(nodes: []*Node, id: []const u8) ?*Node {
        for(nodes) |node| {
            if(std.mem.eql(u8, node.id, id)) return node;
        }

        for(nodes) |node| {
            var ret = get_node_recursive(node.children.items, id);
            if(ret != null) 
                return ret;
        }

        return null;
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
    id: [] const u8,
    duration: f32 = 0.0,
    node_animations: []NodeAnimation = &[_]NodeAnimation{},
};
pub const NodeAnimation = struct {
    node: *Node,
    translation: []NodeKeyframe(Vec3) = &[_]NodeKeyframe(Vec3){},
    rotation: []NodeKeyframe(Quat) = &[_]NodeKeyframe(Quat){},
    scaling: []NodeKeyframe(Vec3) = &[_]NodeKeyframe(Vec3){},
};

pub fn NodeKeyframe(comptime T: type) type {
    return struct {
        keytime: f32 = 0,
        value: T = undefined,
    };
}


pub const ModelInstance = struct {
    a: std.heap.ArenaAllocator,
    model: *Model,
    materials: []Material = &[_]Material{},
    nodes: []*Node = &[_]*Node{},
    animations: []Animation = &[_]Animation{},
    transform: Mat4 = Mat4.identity(),

    pub fn init(model: *Model, allocator: *std.mem.Allocator) ModelInstance {
        var ret = ModelInstance {
            .a = std.heap.ArenaAllocator.init(allocator),
            .model = model,
        };
        ret.copy_nodes(model);
        ret.invalidate();
        ret.copy_animations(model);
        ret.calculate_transforms();
        return ret;
    }

    pub fn deinit(self: *ModelInstance) !void {
        self.a.deinit();
    }

    pub fn copy_nodes(self: *ModelInstance, model: *Model) void {

    }
    pub fn copy_animations(self: *ModelInstance, model: *Model) void {
    }

    pub fn copy_animation(self: *ModelInstance, animation: *Animation, shareKF: bool) void {
    }

    pub fn invalidate(self: *ModelInstance) void {
        
    }

    pub fn calculate_transforms(self: *ModelInstance) void {
        
    }
};
