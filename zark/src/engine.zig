const std = @import("std");
const zark = @import("zark.zig");
const glad = zark.gl;
const glfw = zark.glfw;
pub const gfx = zark.gfx;
pub const input = zark.input;

pub const Config = struct {
    window_title: []const u8 = undefined, // here string needed
    window_width: i32 = 1280,
    window_height: i32 = 720,
    window_x: i32 = -1,
    window_y: i32 = -1,
    vsync: bool = true,
};

pub const Audio = struct {};

pub const Engine = struct {
    config: Config,
    allocator: *std.mem.Allocator,

    on_init: fn (*Engine) void,
    on_tick: fn (*Engine, f32) void,

    gfx: gfx.Gfx = undefined,
    input: input.Input = undefined,
    audio: Audio = undefined,

    quit: bool = false,
    quit_force: bool = false,

    pub fn init(config: *const Config, init: fn(*Engine)void, tick: fn(*Engine, f32)void) Engine {
        var gpa = std.heap.GeneralPurposeAllocator(.{}){};
        return .{
            .config = config,
            .on_init = init,
            .on_tick = tick
        };
        // TODO: rethink this, and add error stuff
    }

    pub fn run(self: *Engine) bool {
        self.gfx = gfx.Gfx{};
        self.input = input.Input{};
        self.audio = Audio{};

        var result = self.gfx.init(&self.config);
        if (!result) return false;

        glfw.glfwSetWindowUserPointer(self.gfx.window_ptr, self);

        self.input.init(self.gfx.window_ptr);
        self.on_init(self);

        while (!self.quit) {
            if (!self.gfx.iconified)
                self.input.update();
            glfw.glfwMakeContextCurrent(self.gfx.window_ptr);

            self.gfx.track();

            self.on_tick(self, self.gfx.delta_time);

            glfw.glfwSwapBuffers(self.gfx.window_ptr);

            if (!self.gfx.iconified)
                self.input.prepare_next();

            glfw.glfwPollEvents();

            self.quit = self.quit_force or glfw.glfwWindowShouldClose(self.gfx.window_ptr) == glfw.GLFW_TRUE;
        }
        return true;
    }
};
