const std = @import("std");
const zark = @import("zark.zig");

const glfw = zark.glfw;
const engine = zark.engine;
const time = zark.time;
const array = zark.array;
const math = zark.math;



const KEY_DOWN: i32 = 0;
const KEY_UP: i32 = 1;
const KEY_TYPED: i32 = 2;
const TOUCH_DOWN: i32 = 3;
const TOUCH_UP: i32 = 4;
const TOUCH_DRAGGED: i32 = 5;
const MOUSE_MOVED: i32 = 6;
const SCROLLED: i32 = 7;

const InputEvent = struct {
    time: i64, event_type: u8, event: Event
};
const KeyDown = struct {
    key: i32,
};
const KeyUp = struct {
    key: i32,
};
const KeyTyped = struct {
    character: u8,
};
const TouchDown = struct {
    screen_x: i32,
    screen_y: i32,
    pointer: i32,
    button: i32,
};
const TouchUp = struct {
    screen_x: i32,
    screen_y: i32,
    pointer: i32,
    button: i32,
};
const TouchDragged = struct {
    screen_x: i32,
    screen_y: i32,
    pointer: i32,
};
const TouchMoved = struct {
    screen_x: i32, screen_y: i32
};
const Scrolled = struct {
    amount: i32,
};
const Event = union {
    key_down: KeyDown,
    key_up: KeyUp,
    key_typed: KeyTyped,
    touch_down: TouchDown,
    touch_up: TouchUp,
    touch_dragged: TouchDragged,
    touch_moved: TouchMoved,
    scrolled: Scrolled,
};

fn convert_glfw_key(glfwKey: c_int) i32 {
    var k = convert_glfw_key_enum(glfwKey);
    return @enumToInt(k);
}

fn convert_glfw_key_enum(glfwKey: c_int) Keys {
    switch (glfwKey) {
        glfw.GLFW_KEY_SPACE => {
            return Keys.SPACE;
        },
        glfw.GLFW_KEY_APOSTROPHE => {
            return Keys.APOSTROPHE;
        },
        glfw.GLFW_KEY_COMMA => {
            return Keys.COMMA;
        },
        glfw.GLFW_KEY_MINUS => {
            return Keys.MINUS;
        },
        glfw.GLFW_KEY_PERIOD => {
            return Keys.PERIOD;
        },
        glfw.GLFW_KEY_SLASH => {
            return Keys.SLASH;
        },
        glfw.GLFW_KEY_0 => {
            return Keys.NUM_0;
        },
        glfw.GLFW_KEY_1 => {
            return Keys.NUM_1;
        },
        glfw.GLFW_KEY_2 => {
            return Keys.NUM_2;
        },
        glfw.GLFW_KEY_3 => {
            return Keys.NUM_3;
        },
        glfw.GLFW_KEY_4 => {
            return Keys.NUM_4;
        },
        glfw.GLFW_KEY_5 => {
            return Keys.NUM_5;
        },
        glfw.GLFW_KEY_6 => {
            return Keys.NUM_6;
        },
        glfw.GLFW_KEY_7 => {
            return Keys.NUM_7;
        },
        glfw.GLFW_KEY_8 => {
            return Keys.NUM_8;
        },
        glfw.GLFW_KEY_9 => {
            return Keys.NUM_9;
        },
        glfw.GLFW_KEY_SEMICOLON => {
            return Keys.SEMICOLON;
        },
        glfw.GLFW_KEY_EQUAL => {
            return Keys.EQUALS;
        },
        glfw.GLFW_KEY_A => {
            return Keys.A;
        },
        glfw.GLFW_KEY_B => {
            return Keys.B;
        },
        glfw.GLFW_KEY_C => {
            return Keys.C;
        },
        glfw.GLFW_KEY_D => {
            return Keys.D;
        },
        glfw.GLFW_KEY_E => {
            return Keys.E;
        },
        glfw.GLFW_KEY_F => {
            return Keys.F;
        },
        glfw.GLFW_KEY_G => {
            return Keys.G;
        },
        glfw.GLFW_KEY_H => {
            return Keys.H;
        },
        glfw.GLFW_KEY_I => {
            return Keys.I;
        },
        glfw.GLFW_KEY_J => {
            return Keys.J;
        },
        glfw.GLFW_KEY_K => {
            return Keys.K;
        },
        glfw.GLFW_KEY_L => {
            return Keys.L;
        },
        glfw.GLFW_KEY_M => {
            return Keys.M;
        },
        glfw.GLFW_KEY_N => {
            return Keys.N;
        },
        glfw.GLFW_KEY_O => {
            return Keys.O;
        },
        glfw.GLFW_KEY_P => {
            return Keys.P;
        },
        glfw.GLFW_KEY_Q => {
            return Keys.Q;
        },
        glfw.GLFW_KEY_R => {
            return Keys.R;
        },
        glfw.GLFW_KEY_S => {
            return Keys.S;
        },
        glfw.GLFW_KEY_T => {
            return Keys.T;
        },
        glfw.GLFW_KEY_U => {
            return Keys.U;
        },
        glfw.GLFW_KEY_V => {
            return Keys.V;
        },
        glfw.GLFW_KEY_W => {
            return Keys.W;
        },
        glfw.GLFW_KEY_X => {
            return Keys.X;
        },
        glfw.GLFW_KEY_Y => {
            return Keys.Y;
        },
        glfw.GLFW_KEY_Z => {
            return Keys.Z;
        },
        glfw.GLFW_KEY_LEFT_BRACKET => {
            return Keys.LEFT_BRACKET;
        },
        glfw.GLFW_KEY_BACKSLASH => {
            return Keys.BACKSLASH;
        },
        glfw.GLFW_KEY_RIGHT_BRACKET => {
            return Keys.RIGHT_BRACKET;
        },
        glfw.GLFW_KEY_GRAVE_ACCENT => {
            return Keys.GRAVE;
        },
        glfw.GLFW_KEY_WORLD_1 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_WORLD_2 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_ESCAPE => {
            return Keys.ESCAPE;
        },
        glfw.GLFW_KEY_ENTER => {
            return Keys.ENTER;
        },
        glfw.GLFW_KEY_TAB => {
            return Keys.TAB;
        },
        glfw.GLFW_KEY_BACKSPACE => {
            return Keys.BACKSPACE;
        },
        glfw.GLFW_KEY_INSERT => {
            return Keys.INSERT;
        },
        glfw.GLFW_KEY_DELETE => {
            return Keys.FORWARD_DEL;
        },
        glfw.GLFW_KEY_RIGHT => {
            return Keys.RIGHT;
        },
        glfw.GLFW_KEY_LEFT => {
            return Keys.LEFT;
        },
        glfw.GLFW_KEY_DOWN => {
            return Keys.DOWN;
        },
        glfw.GLFW_KEY_UP => {
            return Keys.UP;
        },
        glfw.GLFW_KEY_PAGE_UP => {
            return Keys.PAGE_UP;
        },
        glfw.GLFW_KEY_PAGE_DOWN => {
            return Keys.PAGE_DOWN;
        },
        glfw.GLFW_KEY_HOME => {
            return Keys.HOME;
        },
        glfw.GLFW_KEY_END => {
            return Keys.END;
        },
        glfw.GLFW_KEY_CAPS_LOCK => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_SCROLL_LOCK => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_NUM_LOCK => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_PRINT_SCREEN => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_PAUSE => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F1 => {
            return Keys.F1;
        },
        glfw.GLFW_KEY_F2 => {
            return Keys.F2;
        },
        glfw.GLFW_KEY_F3 => {
            return Keys.F3;
        },
        glfw.GLFW_KEY_F4 => {
            return Keys.F4;
        },
        glfw.GLFW_KEY_F5 => {
            return Keys.F5;
        },
        glfw.GLFW_KEY_F6 => {
            return Keys.F6;
        },
        glfw.GLFW_KEY_F7 => {
            return Keys.F7;
        },
        glfw.GLFW_KEY_F8 => {
            return Keys.F8;
        },
        glfw.GLFW_KEY_F9 => {
            return Keys.F9;
        },
        glfw.GLFW_KEY_F10 => {
            return Keys.F10;
        },
        glfw.GLFW_KEY_F11 => {
            return Keys.F11;
        },
        glfw.GLFW_KEY_F12 => {
            return Keys.F12;
        },
        glfw.GLFW_KEY_F13 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F14 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F15 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F16 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F17 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F18 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F19 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F20 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F21 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F22 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F23 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F24 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_F25 => {
            return Keys.UNKNOWN;
        },
        glfw.GLFW_KEY_KP_0 => {
            return Keys.NUMPAD_0;
        },
        glfw.GLFW_KEY_KP_1 => {
            return Keys.NUMPAD_1;
        },
        glfw.GLFW_KEY_KP_2 => {
            return Keys.NUMPAD_2;
        },
        glfw.GLFW_KEY_KP_3 => {
            return Keys.NUMPAD_3;
        },
        glfw.GLFW_KEY_KP_4 => {
            return Keys.NUMPAD_4;
        },
        glfw.GLFW_KEY_KP_5 => {
            return Keys.NUMPAD_5;
        },
        glfw.GLFW_KEY_KP_6 => {
            return Keys.NUMPAD_6;
        },
        glfw.GLFW_KEY_KP_7 => {
            return Keys.NUMPAD_7;
        },
        glfw.GLFW_KEY_KP_8 => {
            return Keys.NUMPAD_8;
        },
        glfw.GLFW_KEY_KP_9 => {
            return Keys.NUMPAD_9;
        },
        glfw.GLFW_KEY_KP_DECIMAL => {
            return Keys.PERIOD;
        },
        glfw.GLFW_KEY_KP_DIVIDE => {
            return Keys.SLASH;
        },
        glfw.GLFW_KEY_KP_MULTIPLY => {
            return Keys.STAR;
        },
        glfw.GLFW_KEY_KP_SUBTRACT => {
            return Keys.MINUS;
        },
        glfw.GLFW_KEY_KP_ADD => {
            return Keys.PLUS;
        },
        glfw.GLFW_KEY_KP_ENTER => {
            return Keys.ENTER;
        },
        glfw.GLFW_KEY_KP_EQUAL => {
            return Keys.EQUALS;
        },
        glfw.GLFW_KEY_LEFT_SHIFT => {
            return Keys.SHIFT_LEFT;
        },
        glfw.GLFW_KEY_LEFT_CONTROL => {
            return Keys.CONTROL_LEFT;
        },
        glfw.GLFW_KEY_LEFT_ALT => {
            return Keys.ALT_LEFT;
        },
        glfw.GLFW_KEY_LEFT_SUPER => {
            return Keys.SYM;
        },
        glfw.GLFW_KEY_RIGHT_SHIFT => {
            return Keys.SHIFT_RIGHT;
        },
        glfw.GLFW_KEY_RIGHT_CONTROL => {
            return Keys.CONTROL_RIGHT;
        },
        glfw.GLFW_KEY_RIGHT_ALT => {
            return Keys.ALT_RIGHT;
        },
        glfw.GLFW_KEY_RIGHT_SUPER => {
            return Keys.SYM;
        },
        glfw.GLFW_KEY_MENU => {
            return Keys.MENU;
        },
        else => {
            return Keys.UNKNOWN;
        },
    }
    return Keys.UNKNOWN;
}

fn character_for_key_code(key: i32) u8 {
    switch (key) {
        @enumToInt(Keys.BACKSPACE) => {
            return 0;
        },
        @enumToInt(Keys.TAB) => {
            return '\t';
        },
        @enumToInt(Keys.FORWARD_DEL) => {
            return 127;
        },
        @enumToInt(Keys.ENTER) => {
            return '\n';
        },
        else => {
            return 0;
        },
    }

    return 0;
}

fn convert_glfw_button(button: c_int) i8 {
    
    if (button == glfw.GLFW_MOUSE_BUTTON_LEFT) return 0;//Buttons.LEFT;
    if (button == glfw.GLFW_MOUSE_BUTTON_RIGHT) return 1;//Buttons.RIGHT;
    if (button == glfw.GLFW_MOUSE_BUTTON_MIDDLE) return 2;//Buttons.MIDDLE;
    return -1;//Buttons::UKNOWN;
}

const EventQueue = struct {
    processor: ?*InputProcessor = null,
    queue: [64]InputEvent = undefined,
    processing_queue: [64]InputEvent = undefined,
    current_event_time: i64 = 0,

    queue_C: i32 = 0,
    processing_queue_C: i32 = 0,

    fn set_processeor(self: *EventQueue, p: ?*InputProcessor) void {
        self.processor = p;
    }

    fn drain(self: *EventQueue) void {
        if (self.processor == null) {
            self.queue_C = 0;
            return;
        }
        var processor = self.processor orelse return;

        // copy from queue
        self.processing_queue = self.queue;
        self.processing_queue_C = self.queue_C;
        self.queue_C = 0;

        var i: usize = 0;
        while (i < self.processing_queue_C) : (i += 1) {
            var e: InputEvent = self.processing_queue[i];

            self.current_event_time = e.time;

            switch (e.event_type) {
                KEY_DOWN => {
                    if(processor.key_down) |cb|
                    _ = cb(processor, e.event.key_down.key);
                },
                KEY_UP => {
                    if(processor.key_up) |cb|
                    _ = cb(processor, e.event.key_up.key);
                },
                KEY_TYPED => {
                    if(processor.key_typed) |cb|
                     _ = cb(processor, e.event.key_typed.character);
                },
                TOUCH_UP => {
                    if(processor.touch_up) |cb|
                     _ = cb(processor, e.event.touch_up.screen_x, e.event.touch_up.screen_y,
                      e.event.touch_up.pointer, e.event.touch_up.button);
                },
                TOUCH_DOWN => {
                    if(processor.touch_down) |cb|
                     _ = cb(processor, e.event.touch_down.screen_x, e.event.touch_down.screen_y,
                      e.event.touch_down.pointer, e.event.touch_down.button);
                },
                MOUSE_MOVED => {
                    if(processor.mouse_moved) |cb|
                     _ = cb(processor, e.event.touch_moved.screen_x, e.event.touch_moved.screen_y);
                },
                TOUCH_DRAGGED => {
                    if(processor.touch_dragged) |cb|
                     _ = cb(processor, e.event.touch_dragged.screen_x, e.event.touch_dragged.screen_y,
                      e.event.touch_dragged.pointer);
                },
                SCROLLED => {
                    if(processor.scrolled) |cb|
                     _ = cb(processor, e.event.scrolled.amount);
                },
                else => {},
            }
        }
    }

    fn key_down(self: *EventQueue, keycode: i32) bool {
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = KEY_DOWN,
            .event = Event{
                .key_down = KeyDown{ .key = keycode },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn key_up(self: *EventQueue, keycode: i32) bool {
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = KEY_UP,
            .event = Event{
                .key_up = KeyUp{ .key = keycode },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn key_typed(self: *EventQueue, character: u8) bool {
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = KEY_TYPED,
            .event = Event{
                .key_typed = KeyTyped{ .character = character },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn touch_down(self: *EventQueue, screenX: i32, screenY: i32, pointer: i32, button: i32) bool {
        //queue_time();
        //queue_.emplace_back(TOUCH_DOWN);
        //queue_.emplace_back(screenX);
        //queue_.emplace_back(screenY);
        //queue_.emplace_back(pointer);
        //queue_.emplace_back(button);
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = TOUCH_DOWN,
            .event = Event{
                .touch_down = TouchDown{ .screen_x = screenX, .screen_y = screenY, .pointer = pointer, .button = button },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn touch_up(self: *EventQueue, screenX: i32, screenY: i32, pointer: i32, button: i32) bool {
        //queue_time();
        //queue_.emplace_back(TOUCH_UP);
        //queue_.emplace_back(screenX);
        //queue_.emplace_back(screenY);
        //queue_.emplace_back(pointer);
        //queue_.emplace_back(button);
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = TOUCH_UP,
            .event = Event{
                .touch_up = TouchUp{ .screen_x = screenX, .screen_y = screenY, .pointer = pointer, .button = button },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn touch_dragged(self: *EventQueue, screenX: i32, screenY: i32, pointer: i32) bool {
        //queue_time();
        //queue_.emplace_back(TOUCH_DRAGGED);
        //queue_.emplace_back(screenX);
        //queue_.emplace_back(screenY);
        //queue_.emplace_back(pointer);
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = TOUCH_DRAGGED,
            .event = Event{
                .touch_dragged = TouchDragged{ .screen_x = screenX, .screen_y = screenY, .pointer = pointer },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn mouse_moved(self: *EventQueue, screenX: i32, screenY: i32) bool {
        //queue_time();
        //queue_.emplace_back(MMOUSE_MOVED);
        //queue_.emplace_back(screenX);
        //queue_.emplace_back(screenY);
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = MOUSE_MOVED,
            .event = Event{
                .touch_moved = TouchMoved{ .screen_x = screenX, .screen_y = screenY },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn scrolled(self: *EventQueue, amount: i32) bool {
        //queue_time();
        //queue_.emplace_back(SCROLLED);
        //queue_.emplace_back(amount);
        self.queue[@intCast(usize, self.queue_C)] = InputEvent{
            .time = time.nanoseconds(),
            .event_type = SCROLLED,
            .event = Event{
                .scrolled = Scrolled{ .amount = amount },
            },
        };

        self.queue_C += 1;
        return false;
    }

    fn get_current_event_time(self: *EventQueue) i64 {
        return self.current_event_time;
    }

    fn queue_time(self: *EventQueue) void {
        var t = time.nanoseconds();
        queue[self.queue_L + 0] = t >> 32;
        queue[self.queue_L + 1] = t;
        self.queue_L += 2;
    }
};

pub const InputProcessor = struct {
    key_down: ?fn (ptr: *InputProcessor, key: i32) bool = null,
    key_up: ?fn (ptr: *InputProcessor, keycode: i32) bool = null,
    key_typed: ?fn (ptr: *InputProcessor, character: u8) bool = null,
    touch_down: ?fn (ptr: *InputProcessor, screenX: i32, screenY: i32, pointer: i32, button: i32) bool = null,
    touch_up: ?fn (ptr: *InputProcessor, screenX: i32, screenY: i32, pointer: i32, button: i32) bool = null,
    touch_dragged: ?fn (ptr: *InputProcessor, screenX: i32, screenY: i32, pointer: i32) bool = null,
    mouse_moved: ?fn (ptr: *InputProcessor, screenX: i32, screenY: i32) bool = null,
    scrolled: ?fn (ptr: *InputProcessor, amount: i32) bool = null,
};

pub const Input = struct {
    processor: ?*InputProcessor = null,
    event_queue: EventQueue = EventQueue{},
    mouse_x: i32 = 0,
    mouse_y: i32 = 0,
    mouse_pressed: i32 = 0,
    delta_x: i32 = 0,
    delta_y: i32 = 0,
    just_touched: bool = false,
    pressed_keys: i32 = 0,
    key_just_pressed: bool = false,
    just_pressed_keys: [256]bool = std.mem.zeroes([256]bool),
    last_character: u8 = 0,
    logical_mouse_x: i32 = 0,
    logical_mouse_y: i32 = 0,

    pub fn init(self: *Input, window: ?*glfw.GLFWwindow) void {
        _ = glfw.glfwSetKeyCallback(window, on_key_cb);
        _ = glfw.glfwSetCharCallback(window, on_char_cb);
        _ = glfw.glfwSetScrollCallback(window, on_scroll_cb);
        _ = glfw.glfwSetCursorPosCallback(window, on_cursor_pos_cb);
        _ = glfw.glfwSetMouseButtonCallback(window, on_mouse_button_cb);
    }

    fn on_key_cb(ptr: ?*glfw.GLFWwindow, key: c_int, scancode: c_int, action: c_int, mods: c_int) callconv(.C) void {
        var e: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));
        //std.log.info("on_key_cb({}, {}, {})", .{ scancode, action, mods });
        var self = &e.input;

        switch (action) {
            glfw.GLFW_PRESS => {
                var convertedKey = convert_glfw_key(key);

                _ = self.event_queue.key_down(convertedKey);
                self.pressed_keys += 1;
                self.key_just_pressed = true;
                self.just_pressed_keys[@intCast(usize, convertedKey)] = true;
                //window.getGraphics().requestRendering();
                self.last_character = 0;
                var character = character_for_key_code(convertedKey);
                if (character != 0) on_char_cb(ptr, @intCast(c_uint, character));
            },
            glfw.GLFW_RELEASE => {
                var convertedKey = convert_glfw_key(key);
                self.pressed_keys -= 1;
                _ = self.event_queue.key_up(convertedKey);
            },
            glfw.GLFW_REPEAT => {},
            else => {},
        }
    }
    fn on_char_cb(ptr: ?*glfw.GLFWwindow, codepoint: c_uint) callconv(.C) void {
        var e: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));
        //std.log.info("on_char_cb({})", .{codepoint});
        var self = &e.input;

        var cp: u8 = @intCast(u8, codepoint);

        if ((@intCast(u32, cp) & 0xff00) == 0xf700) return;
        self.last_character = cp;
        //window.getGraphics().requestRendering();
        _ = self.event_queue.key_typed(cp);
    }

    fn on_scroll_cb(ptr: ?*glfw.GLFWwindow, xpos: f64, ypos: f64) callconv(.C) void {
        var e: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));
        var self = &e.input;
        _ = self.event_queue.scrolled(-math.sign(@floatCast(f32, ypos)));
    }
    
    fn on_cursor_pos_cb(ptr: ?*glfw.GLFWwindow, xpos: f64, ypos: f64) callconv(.C) void {
        var e: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));
        var self = &e.input;

        
        self.delta_x = (@floatToInt(i32, xpos) - self.logical_mouse_x);
        self.delta_y = (@floatToInt(i32, ypos) - self.logical_mouse_y);
        self.mouse_x = (@floatToInt(i32, xpos));
        self.mouse_y = (@floatToInt(i32, ypos));
        self.logical_mouse_x = self.mouse_x;
        self.logical_mouse_y = self.mouse_y;

        if (e.gfx.hdpi_mode == .PIXELS)
        {
            const xScale = @intToFloat(f32, e.gfx.back_buffer_width) / @intToFloat(f32, e.gfx.logical_width);
            const yScale = @intToFloat(f32, e.gfx.back_buffer_height) / @intToFloat(f32, e.gfx.logical_height);
            self.delta_x = @floatToInt(i32, @intToFloat(f32, self.delta_x) * xScale);
            self.delta_y = @floatToInt(i32, @intToFloat(f32, self.delta_y) * yScale);
            self.mouse_x = @floatToInt(i32, @intToFloat(f32, self.mouse_x) * xScale);
            self.mouse_y = @floatToInt(i32, @intToFloat(f32, self.mouse_y) * yScale);
        }

        //gfx.requestRendering();
        if (self.mouse_pressed > 0)
        {
            _ = self.event_queue.touch_dragged(self.mouse_x, self.mouse_y, 0);
        }
        else
        {
            _ = self.event_queue.mouse_moved(self.mouse_x, self.mouse_y);
        }
    }
    
    fn on_mouse_button_cb(ptr: ?*glfw.GLFWwindow, button: c_int, state: c_int, mods: c_int) callconv(.C) void {
        var e: *engine.Engine = @ptrCast(*engine.Engine, @alignCast(@alignOf(*engine.Engine), glfw.glfwGetWindowUserPointer(ptr)));
        var self = &e.input;

        var b = convert_glfw_button(button);
        if(b == -1) return;

        if(state == glfw.GLFW_PRESS) {
            self.mouse_pressed += 1;
            self.just_touched = true;
            _ = self.event_queue.touch_down(self.mouse_x, self.mouse_y, 0, b);
        } else {
            self.mouse_pressed = math.max(0, self.mouse_pressed - 1);
            _ = self.event_queue.touch_up(self.mouse_x, self.mouse_y, 0, b);
        }
    }

    pub fn reset_polling_states(self: *Input) void {
        self.just_touched = false;
        self.key_just_pressed = false;

        var i: i32 = 0;
        while (i < 256) {
            self.just_pressed_keys[i] = false;
            i += 1;
        }
        self.event_queue.set_processeor(null);
        self.event_queue.drain();
    }

    pub fn update(self: *Input) void {
        self.event_queue.set_processeor(self.processor);
        self.event_queue.drain();
    }

    pub fn prepare_next(self: *Input) void {
        self.just_touched = false;

        if (self.key_just_pressed) {
            self.key_just_pressed = false;
            var i: i32 = 0;
            while (i < 256) {
                self.just_pressed_keys[@intCast(usize, i)] = false;
                i += 1;
            }
        }

        self.delta_x = 0;
        self.delta_y = 0;
    }
};



pub const Buttons = enum(i8) {
    UKNOWN = -1,
    LEFT = 0,
    RIGHT = 1,
    MIDDLE = 2,
    BACK = 3,
    FORWARD = 4
};

pub const Keys = enum(i32) {
    ANY_KEY = -1,
    NUM_0,
    NUM_1,
    NUM_2,
    NUM_3,
    NUM_4,
    NUM_5,
    NUM_6,
    NUM_7,
    NUM_8,
    NUM_9,
    A,
    ALT_LEFT,
    ALT_RIGHT,
    APOSTROPHE,
    AT,
    B,
    BACK,
    BACKSLASH,
    C,
    CALL,
    CAMERA,
    CLEAR,
    COMMA,
    D,
    DEL,
    BACKSPACE,
    FORWARD_DEL,
    DPAD_CENTER,
    DPAD_DOWN,
    DPAD_LEFT,
    DPAD_RIGHT,
    DPAD_UP,
    CENTER,
    DOWN,
    LEFT,
    RIGHT,
    UP,
    E,
    ENDCALL,
    ENTER,
    ENVELOPE,
    EQUALS,
    EXPLORER,
    F,
    FOCUS,
    G,
    GRAVE,
    H,
    HEADSETHOOK,
    HOME,
    I,
    J,
    K,
    L,
    LEFT_BRACKET,
    M,
    MEDIA_FAST_FORWARD,
    MEDIA_NEXT,
    MEDIA_PLAY_PAUSE,
    MEDIA_PREVIOUS,
    MEDIA_REWIND,
    MEDIA_STOP,
    MENU,
    MINUS,
    MUTE,
    N,
    NOTIFICATION,
    NUM,
    O,
    P,
    PERIOD,
    PLUS,
    POUND,
    POWER,
    Q,
    R,
    RIGHT_BRACKET,
    S,
    SEARCH,
    SEMICOLON,
    SHIFT_LEFT,
    SHIFT_RIGHT,
    SLASH,
    SOFT_LEFT,
    SOFT_RIGHT,
    SPACE,
    STAR,
    SYM,
    T,
    TAB,
    U,
    UNKNOWN,
    V,
    VOLUME_DOWN,
    VOLUME_UP,
    W,
    X,
    Y,
    Z,
    CONTROL_LEFT,
    CONTROL_RIGHT,
    ESCAPE,
    END,
    INSERT,
    PAGE_UP,
    PAGE_DOWN,
    PICTSYMBOLS,
    SWITCH_CHARSET,
    BUTTON_CIRCLE,
    BUTTON_A,
    BUTTON_B,
    BUTTON_C,
    BUTTON_X,
    BUTTON_Y,
    BUTTON_Z,
    BUTTON_L1,
    BUTTON_R1,
    BUTTON_L2,
    BUTTON_R2,
    BUTTON_THUMBL,
    BUTTON_THUMBR,
    BUTTON_START,
    BUTTON_SELECT,
    BUTTON_MODE,

    NUMPAD_0,
    NUMPAD_1,
    NUMPAD_2,
    NUMPAD_3,
    NUMPAD_4,
    NUMPAD_5,
    NUMPAD_6,
    NUMPAD_7,
    NUMPAD_8,
    NUMPAD_9,

    COLON,
    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    F10,
    F11,
    F12,
};
