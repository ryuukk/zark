const std = @import("std");

pub fn nanoseconds() i64 {
    return @intCast(i64, std.time.nanoTimestamp());
}
