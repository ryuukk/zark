const std = @import("std");
const engine = @import("engine.zig");
const log = @import("log.zig");
const array = @import("array.zig");

pub fn main() anyerror!void {
    var list = array.Array(*u32, 16){};
    list.init();

    var v: u32 = 1;
    list.add(&v);
    list.add(&v);
    list.add(&v);
    list.add(&v);

    std.log.info("Content: {v}", .{list.slice()});

    var fa = array.FixedArray(u32, 16){};

    fa.add(5);
    fa.add(5);
    fa.add(5);
    fa.add(5);

    std.log.info("Content: {v}", fa.slice());
}
