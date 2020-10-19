const zark = @import("zark.zig");
const math = zark.math;
const Vec3 = math.Vec3;
const Mat4 = math.Mat4;

pub const Camera = struct {
    position: Vec3 = .{ .x = 0, .y = 0, .z = 0 },
    direction: Vec3 = .{ .x = 0, .y = 0, .z = -1 },
    up: Vec3 = .{ .x = 0, .y = 1, .z = 0 },

    projection: Mat4 = Mat4{},
    view: Mat4 = Mat4{},
    combined: Mat4 = Mat4{},
    inv_projection_view: Mat4 = Mat4{},

    near: f32 = 1.0,
    far: f32 = 100.0,
    viewport_width: f32 = 0.0,
    viewport_height: f32 = 0.0,

    perspective: bool = true,
    fov: f32 = 67,

    pub fn init_perspective(fov: f32, w: f32, h: f32) Camera {
        return .{
            .perspective = true,
            .fov = fov,
            .viewport_width = w,
            .viewport_height = h,
            .near = 0.1,
        };
    }

    pub fn update(self: *Camera) void {
        if (self.perspective) {
            self.update_perspective();
        } else {
            self.update_orthographic();
        }
    }

    fn update_perspective(self: *Camera) void {
        const aspect: f32 = self.viewport_width / self.viewport_height;
        self.projection = Mat4.create_projection(math.abs(self.near), math.abs(self.far), self.fov, aspect);

        // todo: i don't like &
        self.view = Mat4.create_look_at(self.position, math.Vec3.add(&self.position, &self.direction), self.up);
    }

    fn update_orthographic(self: *Camera) void {}
};

