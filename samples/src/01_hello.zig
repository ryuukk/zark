const std = @import("std");
const zark = @import("zark");
const Engine = zark.engine.Engine;
const Config = zark.engine.Config;

fn on_init(engine: *Engine) void {
    std.log.info("on_init", .{});
}

fn on_tick(engine: *Engine, dt: f32) void {
    std.log.info("on_tick({})", .{dt});
}

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark - sample: 01_hello" };

    var e = Engine{
        .config = c,
        .on_init = on_init,
        .on_tick = on_tick,
    };
            
    if (!e.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
}
