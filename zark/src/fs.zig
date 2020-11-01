const std = @import("std");
const zark = @import("zark.zig");
const Allocator = std.mem.Allocator;

pub fn read_file(allocator: *Allocator, path: []const u8) ![]u8 {
    var dir = std.fs.cwd();
    //defer dir.close();
    const file = dir.openFile(path, .{}) catch @panic("can't open file");
    defer file.close();
    const stat = try file.stat();
    const data = try dir.readFileAlloc(allocator, path,  stat.size);
    return data;
}
