# Run the samples

- Make sure you got D installed in your system
- ```git clone ```
- ``./run_samples.sh``

# Hello World

```zig
const std = @import("std");
const engine = @import("engine.zig");


fn on_init() void {
    std.log.info("on_init", .{});
}
fn on_update(dt: f32) void {
    std.log.info("on_update({})", .{dt});
}

fn on_render(dt: f32) void {
    std.log.info("on_render({})", .{dt});
}

pub fn main() anyerror!void {
    var c = engine.Config{
        .window_title = "zark"
    };

    var e = engine.Engine{
        .config = c,
        .on_init = on_init,
        .on_update = on_update,
        .on_render = on_render,
    };

    if(!e.run())
        std.log.err("Engine failure", .{});

    std.debug.print("the end", .{});
}
```