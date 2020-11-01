const std = @import("std");

pub inline fn nanoseconds() i64 {
    return @intCast(i64, std.time.nanoTimestamp());
}

pub inline fn millis() i64 {
    return @intCast(i64, std.time.milliTimestamp());
}
