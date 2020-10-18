 const zark = @import("zark.zig");
 const Vec3 = zark.math.Vec3;
 const Mat4 = zark.math.Mat4;


pub const Camera = struct {
    position: Vec3 = .{.x = 0, .y = 0, .z = 0},
    direction: Vec3 = .{.x = 0, .y = 0, .z = -1},
    up: Vec3 = .{.x = 0, .y = 1, .z = 0},
    
    projection: Mat4 = Mat4{},
    projection: Mat4 = Mat4{},
    projection: Mat4 = Mat4{},
    projection: Mat4 = Mat4{},

    near: f32 = 1.0,
    far: f32 = 100.0,
    viewport_width: f32 = 0.0,
    viewport_height: f32 = 0.0,

    perspective: bool = true,


    pub fn update() void {
        
    }
};