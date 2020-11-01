const std = @import("std");
const zark = @import("zark.zig");
const Array = zark.array.Array;

const Mesh = zark.mesh.Mesh;
const MeshPart = zark.model.MeshPart;

const Vec3 = zark.math.Vec3;
const Mat4 = zark.math.Mat4;
const Quat = zark.math.Quat;

usingnamespace zark.model_data;

pub const Node = struct {
    id: [] u8 = undefined,
    inherit_transform: bool = true,
    is_animated: bool = false,

    translation: Vec3 = Vec3.set(0, 0, 0),
    rotation: Quat = Quat.identity(),
    scale: Vec3 = Vec3.set(1, 1, 1),

    local_transform: Mat4 = Mat4.identity(),
    global_transform: Mat4 = Mat4.identity(),

    parts: []NodePart = &[_]NodePart{},
    
    children: std.ArrayList(*Node) = undefined,
    parent: ?*Node = null,


    pub fn calculate_local_transform(self: *Node) void {
        if(!self.is_animated)
            self.local_transform = Mat4.set(&self.translation, &self.rotation, &self.scale);
    }

    pub fn calculate_world_transform(self: *Node) void {
        // TODO: double check .scl
        if(self.inherit_transform and self.parent != null) {
            self.global_transform = self.parent.?.global_transform.scl(&self.local_transform);
        } else {
            self.global_transform = self.local_transform;
        }
    } 

    pub fn calculate_transforms(self: *Node, recursive: bool) void {
        self.calculate_local_transform();
        self.calculate_world_transform();
        if(recursive) {
            for(self.children.items) |node| {
                node.calculate_transforms(true);
            }
        }
    }

    pub fn calculate_bone_transforms(self: *Node, recursive: bool) void {
        // TODO: implement
    }

    pub fn add_child(self: *Node, node: *Node) !void {

        // TODO: safety checks doesn't work
        // redo this shit
        // to test, just add c.parent = node in the model module
        var p: ?*Node = self;
        while(p != null) {
            if(p == node) @panic("can't add a parent as a child");
            p = p.?.parent;
        }
        
        p = node.parent;
        if (p != null) {
            
            const removed = p.?.remove_child(node);
            if(!removed) {
                @panic("could not remove child from its current parent");
            }
        }

        _ = try self.children.append(node);
        node.parent = self;
    }

    pub fn remove_child(self: *Node, node: *Node) bool {
        const index = self.index_of(node);
        if(index == -1) return false;

        _ = self.children.orderedRemove(@intCast(usize, index));

        node.parent = null;
        return true;
    }

    pub fn index_of(self: *Node, node: *Node) i32 {
        for(self.children.items) |child, i| {
            if(child == node) return @intCast(i32, i);
        }
        return -1;
    }
};

pub const NodePart = struct {
    mesh_part: *MeshPart = undefined,
    //material: *Material = undefined,
    inv_bone_transforms: []Bone = &[_]Bone{},
    bones: []Mat4 = &[_]Mat4{},
    enabled: bool = true,
};
