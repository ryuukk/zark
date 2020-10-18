const std = @import("std");
const zark = @import("zark");
const Engine = zark.engine.Engine;
const Config = zark.engine.Config;

fn on_init(engine: *Engine) void {
    std.log.info("on_init", .{});
}
fn on_update(dt: f32) void {
    std.log.info("on_update({})", .{dt});
}

fn on_render(dt: f32) void {
    std.log.info("on_render({})", .{dt});
}

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark" };

    var e = Engine{
        .config = c,
        .on_init = on_init,
        .on_update = on_update,
        .on_render = on_render,
    };

    if (!e.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
}
