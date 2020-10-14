const std = @import("std");
const engine = @import("engine.zig");
const input = @import("input.zig");

var input_processor = input.InputProcessor{
    .key_down = on_key_down,
    .key_up = undefined,
    .key_typed = undefined,
    .touch_down = undefined,
    .touch_up = undefined,
    .touch_dragged = undefined,
    .mouse_moved = undefined,
    .scrolled = undefined,
};

fn on_key_down(key: i32) bool {
    std.log.info("on_key_down({})", .{key});
    return true;
}

fn on_init(e: *engine.Engine) void {
    e.input.processor = &input_processor;
    std.log.info("on_init()", .{});
}
fn on_update(dt: f32) void {
    //std.log.info("on_update({})", .{dt});
}

fn on_render(dt: f32) void {
    //std.log.info("on_render({})", .{dt});
}

pub fn main() anyerror!void {
    var c = engine.Config{ .window_title = "zark" };

    var e = engine.Engine{
        .config = c,
        .on_init = on_init,
        .on_update = on_update,
        .on_render = on_render,
    };

    if (!e.run())
        std.log.err("Engine failure", .{});

    std.debug.print("the end", .{});
}
