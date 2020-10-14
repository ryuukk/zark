const std = @import("std");
const mem = std.mem;
const Allocator = mem.Allocator;

pub fn FixedArray(comptime T: type, size: u32) type {
    return struct {
        const Self = @This();
        items: [size]T = std.mem.zeroes([size]T),
        count: u32 = 0,
        version: u32 = 0,

        pub fn add(self: *Self, item: T) void {
            self.items[@intCast(usize, self.count)] = item;
            self.count += 1;
            self.version += 1;
        }

        pub fn add_slice(self: *Self, items: []T) void {
            for (items) |item| {
                self.add(item);
            }
        }

        pub fn clear(self: *Self) void {
            self.items = std.mem.zeroes([size]T);
            self.count = 0;
            self.version = 0;
        }

        pub fn slice(self: *Self) []T {
            return self.items[0..@intCast(usize, self.count)];
        }
    };
}

pub fn Array(comptime T: type, initialCapacity: i32) type {
    var ret = struct {
        const Self = @This();
        allocator: *Allocator = undefined,
        items: []T = undefined,
        capacity: u32 = initialCapacity,
        count: u32 = 0,
        version: u32 = 0,

        pub fn init(self: *Self) void {
            var gpa = std.heap.GeneralPurposeAllocator(.{}){};
            self.allocator = &gpa.allocator;
            self.items = gpa.allocator.alloc(T, @sizeOf(T) * @intCast(usize, self.capacity)) catch @panic("can't allocate");
        }
        pub fn deinit(self: *Self) void {
            self.allocator.free(self.items);
        }

        pub fn add(self: *Self, item: T) void {
            self.items[@intCast(usize, self.count)] = item;
            self.count += 1;
            self.version += 1;
        }

        pub fn add_slice(self: *Self, items: []T) void {
            for (items) |item| {
                self.add(item);
            }
        }

        pub fn clear(self: *Self) void {
            self.items = std.mem.zeroes([size]T);
            self.count = 0;
            self.version = 0;
        }

        pub fn slice(self: *Self) []T {
            return self.items[0..@intCast(usize, self.count)];
        }
    };
    return ret;
}
