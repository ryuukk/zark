const std = @import("std");
const zark = @import("zark.zig");
const math = zark.math;
const input = zark.input;
const Engine = zark.engine.Engine;
const InputProcessor = input.InputProcessor;
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
    zoom: f32 = 1.0,

    pub fn init_ortho(w: f32, h: f32) Camera {
        return . {
            .perspective = false,
            .viewport_width = w,
            .viewport_height = h,
            .near = 0.0,
            .up = Vec3.set(0, 1, 0),
            .direction = Vec3.set(0, 0, -1),
            .position = Vec3.set(w * 0.5, h * 0.5, 0),
        };
    }
    
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

        self.view = Mat4.create_look_at(&self.position, &Vec3.add(&self.position, &self.direction), &self.up);
    }

    fn update_orthographic(self: *Camera) void {
        self.projection = Mat4.create_orthographic(
            self.zoom * -self.viewport_width * 0.5,
            self.zoom * (self.viewport_width * 0.5),
            self.zoom * -(self.viewport_height * 0.5),
            self.zoom * self.viewport_height * 0.5,
            self.near, self.far
        );

        self.view = Mat4.create_look_at(&self.position, &Vec3.add(&self.position, &self.direction), &self.up);

        self.combined = Mat4.scl(&self.projection, &self.view);
    }
};


const STRAFE_LEFT: i32 = @enumToInt(input.Keys.A);
const STRAFE_RIGHT: i32 = @enumToInt(input.Keys.D);
const FORWARD: i32 = @enumToInt(input.Keys.W);
const BACKWARD: i32 = @enumToInt(input.Keys.S);
const UP: i32 = @enumToInt(input.Keys.Q);
const DOWN: i32 = @enumToInt(input.Keys.E);

pub const CameraController = struct {
    const Self = @This();
    base: InputProcessor,
    engine: *Engine,
    strafe_left: bool = false,
    strafe_right: bool = false,
    forward: bool = false,
    backward: bool = false,
    up: bool = false,
    down: bool = false,

    velocity: f32 = 10,
    degrees_per_pixel: f32 = 0.005,

    camera: ?*Camera = null,

    pub fn init(engine: *Engine) Self {
        return .{
            .base = .{
                .touch_dragged = touch_dragged,
                .key_up = key_up,
                .key_down = key_down,
            },
            .engine = engine,
        };
    }

    fn key_up(ptr: *InputProcessor, keycode: i32) bool {
        var self = @fieldParentPtr(CameraController, "base", ptr);
        switch (keycode)
        {
            STRAFE_LEFT => {self.strafe_left = false;},
            STRAFE_RIGHT => {self.strafe_right = false;},
            FORWARD => {self.forward = false;},
            BACKWARD => {self.backward = false;},
            UP => {self.up = false;},
            DOWN => {self.down = false;},
            else => { return false;},
        }
        return self.strafe_left or self.strafe_right or self.forward or self.backward or self.up or self.down;
    }

    fn key_down(ptr: *InputProcessor, keycode: i32) bool {
        var self = @fieldParentPtr(CameraController, "base", ptr);
        switch (keycode)
        {
            STRAFE_LEFT => {self.strafe_left = true;},
            STRAFE_RIGHT => {self.strafe_right = true;},
            FORWARD => {self.forward = true;},
            BACKWARD => {self.backward = true;},
            UP => {self.up = true;},
            DOWN => {self.down = true;},
            else => { return false;},
        }
        return self.strafe_left or self.strafe_right or self.forward or self.backward or self.up or self.down;
    }
    
    fn touch_dragged(ptr: *InputProcessor, x: i32, y: i32, pointer: i32) bool {
        var self = @fieldParentPtr(CameraController, "base", ptr);

        const deltaX: f32 = @intToFloat(f32, -self.engine.input.delta_x) * self.degrees_per_pixel;
        const deltaY: f32 = @intToFloat(f32, -self.engine.input.delta_y) * self.degrees_per_pixel;

        const camera = self.camera orelse return false;

        camera.direction = Vec3.rotate(&camera.direction, &camera.up, deltaX);

        var tmp = Vec3.cross(&camera.direction, &camera.up).nor();

        camera.direction = Vec3.rotate(&camera.direction, &tmp, deltaY);
        
        return true;
    }

    pub fn update(self: *Self, camera: *Camera, dt: f32) void {

        self.camera = camera;

        if (self.forward)
            camera.position = camera.position.add( &camera.direction.nor().sclf(self.velocity * dt) );

        if (self.backward)
            camera.position = camera.position.add( &camera.direction.nor().sclf( -(self.velocity * dt) ) );

        if (self.strafe_left)
            camera.position = camera.position.add(  
                &Vec3.cross(&camera.direction, &camera.up).nor().sclf( -(self.velocity * dt) ) 
            );

        if (self.strafe_right)
            camera.position = camera.position.add( 
                 &Vec3.cross(&camera.direction, &camera.up).nor().sclf( self.velocity * dt )  
            );

        if (self.up)
            camera.position = camera.position.add( &camera.up.nor().sclf( self.velocity * dt ) );

        if (self.down)
            camera.position = camera.position.add( &camera.up.nor().sclf( -(self.velocity * dt) ) );

        camera.update();
    }
};