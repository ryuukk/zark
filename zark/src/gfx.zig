const std = @import("std");
const zark = @import("zark.zig");

const glad = zark.gl;
const glfw = zark.glfw;
const engine = zark.engine;


const HdpiMode = enum {
    LOGICAL, PIXELS
};

pub const Gfx = struct {
    window_ptr: ?*glfw.GLFWwindow = null,
    hdpi_mode: HdpiMode = .LOGICAL,
    width: i32 = 1280,
    height: i32 = 720,
    back_buffer_width: i32 = -1,
    back_buffer_height: i32 = -1,
    logical_width: i32 = -1,
    logical_height: i32 = -1,
    iconified: bool = false,
    last_frame_time: f64 = -1,
    delta_time: f32 = 0,
    frame_id: i64 = 0,
    frame_counter_start: f64 = 0,
    frames: i32 = 0,
    fps: i32 = 0,
    initialized: bool = false,

    pub fn track(self: *Gfx) void {
        var time: f32 = @floatCast(f32, glfw.glfwGetTime());

        if (self.last_frame_time == -1)
            self.last_frame_time = time;

        self.delta_time = @floatCast(f32, time - self.last_frame_time);
        self.last_frame_time = time;

        if (time - self.frame_counter_start >= 1) {
            self.fps = self.frames;
            self.frames = 0;
            self.frame_counter_start = time;
        }

        self.frames += 1;
        self.frame_id += 1;
    }

    pub fn init(self: *Gfx, config: *engine.Config) bool {
        if (glfw.glfwInit() == 0) {
            zark.ERROR("Unable to init glfw");
            return false;
        }

        glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfw.glfwWindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR, 3);
        glfw.glfwWindowHint(glfw.GLFW_OPENGL_DEBUG_CONTEXT, glfw.GLFW_TRUE);
        glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
        glfw.glfwWindowHint(glfw.GLFW_OPENGL_PROFILE, glfw.GLFW_OPENGL_CORE_PROFILE);
        glfw.glfwWindowHint(glfw.GLFW_RESIZABLE, glfw.GLFW_TRUE);
        glfw.glfwWindowHint(glfw.GLFW_VISIBLE, glfw.GLFW_FALSE);
        glfw.glfwWindowHint(glfw.GLFW_SAMPLES, 0);

        // glfwCreateWindow(config.window_width, config.window_height, config.window_title.c_str(), NULL, NULL);
        self.window_ptr = glfw.glfwCreateWindow(config.window_width, config.window_height, @ptrCast([*c]const u8, config.window_title), null, null) orelse {
            zark.ERROR("Unable to create window");
            glfw.glfwTerminate();
            return false;
        };

        if (config.window_x == -1 and config.window_y == -1) {
            const primaryMonitor = glfw.glfwGetPrimaryMonitor();
            const vidMode = glfw.glfwGetVideoMode(primaryMonitor) orelse return false;

            var windowWidth: i32 = 0;
            var windowHeight: i32 = 0;
            glfw.glfwGetWindowSize(self.window_ptr, &windowWidth, &windowHeight);

            var windowX = @divFloor(vidMode[0].width, 2) - @divFloor(windowWidth, 2);
            var windowY = @divFloor(vidMode[0].height, 2) - @divFloor(windowHeight, 2);
            glfw.glfwSetWindowPos(self.window_ptr, windowX, windowY);
        }

        glfw.glfwMakeContextCurrent(self.window_ptr);
        if (config.vsync) {
            glfw.glfwSwapInterval(glfw.GLFW_TRUE);
        } else
            glfw.glfwSwapInterval(glfw.GLFW_FALSE);

        self.update_backbuffer_info();

        const gl = glad.gladLoadGLLoader(@ptrCast(fn ([*c]const u8) callconv(.C) ?*c_void, glfw.glfwGetProcAddress));
        if (gl == 0) {
            zark.ERROR("Unable to load glad");
            return false;
        }
        
        // delay window opening to avoid positioning glitch and white window
        self.clear(0.0, 0.0, 0.0, 1.0);
        glfw.glfwSwapBuffers(self.window_ptr);
        glfw.glfwShowWindow(self.window_ptr);
        self.viewport(0, 0, self.width, self.height);

        _ = glfw.glfwSetWindowIconifyCallback(self.window_ptr, on_iconify);
        _ = glfw.glfwSetFramebufferSizeCallback(self.window_ptr, on_fb_size);

        self.initialized = true;
        return true;
    }

    fn on_iconify(ptr: ?*glfw.GLFWwindow, iconified: c_int) callconv(.C) void {
        var self: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));

        self.gfx.iconified = iconified == 1;

        std.log.info("iconify: {}", .{iconified});
    }

    fn on_fb_size(ptr: ?*glfw.GLFWwindow, w: c_int, h: c_int) callconv(.C) void {
        var self: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));

        self.gfx.update_backbuffer_info();
        self.gfx.viewport(0, 0, w, h);
        //TODO: resize event
        glfw.glfwSwapBuffers(ptr);

        std.log.info("resize: {}:{}", .{ w, h });
    }

    fn update_backbuffer_info(self: *Gfx) void {
        glfw.glfwGetFramebufferSize(self.window_ptr, &self.back_buffer_width, &self.back_buffer_height);
        glfw.glfwGetWindowSize(self.window_ptr, &self.logical_width, &self.logical_height);
    }



    pub fn clear(self: *Gfx, r: f32, g: f32, b: f32, a: f32) void {
        glad.glClearColor(r, g, b, a);
        glad.glClear(glad.GL_COLOR_BUFFER_BIT | glad.GL_DEPTH_BUFFER_BIT);
    }

    pub fn viewport(self: *Gfx, x: i32, y: i32, w: i32, h: i32) void {
        glad.glViewport(x, y, w, h);
    }

    pub fn enable_depth_test(self: *Gfx) void {
        glad.glEnable(glad.GL_DEPTH_TEST);
    }
};
