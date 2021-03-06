const std = @import("std");
const zark = @import("zark");
const Engine = zark.engine.Engine;
const Config = zark.engine.Config;
const InputProcessor = zark.input.InputProcessor;

var input_processor = InputProcessor {
    .key_down = on_key_down,
    .key_typed = on_key_typed,
};

fn on_key_down(processor: *InputProcessor, key: i32) bool {
    std.log.info("on_key_down({})", .{key});
    return true;
}

fn on_key_typed(processor: *InputProcessor, character: u8) bool {
    std.log.info("on_key_typed({c})", .{character});
    return true;
}

fn on_init(e: *Engine) void {
    e.input.processor = &input_processor;
    std.log.info("on_init()", .{});
}

fn on_tick(engine: *Engine, dt: f32) void {
    //std.log.info("on_tick({})", .{dt});
}

const mesh = @import("mesh.zig");

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark - sample: 02_input" };

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var e = Engine{
        .config = c,
        .allocator = &gpa.allocator,
        .on_init = on_init,
        .on_tick = on_tick,
    };

    if (!e.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
}
