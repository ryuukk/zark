const std = @import("zig");

const Reader = struct {
    data: []u8,
    pos: usize = 0,
    little_endian: bool = false,

    pub fn align_stream(self: *Reader, alignment: u8) void {
        const pos = self.pos;
        const mod = pos % alignment;
        if (mod != 0) {
            self.pos += alignment - mod;
        }
    }

    pub fn read(self: *Reader, comptime T: type) T {
        switch(@typeInfo(T)){
            .Int => switch(@sizeOf(T)){
                    1 => {
                        var b = self.data[self.pos];
                        self.pos += 1;
                        return b;
                    },
                    else=>{}
            },
            .Bool => {
                var b = self.data[self.pos];
                self.pos += 1;
                if(b == 0) return false else return true;
            },
            else=>{}
        }
        // @byteSwap only accepts interger type values where the bitcount %8==0
        // https://ziglang.org/documentation/master/#byteSwap

        // So, here, we detect if we're using an INT or FLOAT. 
        // If INT, just use the interger as the swap type with the appropriate size.
        // If FLOAT, we pick an interger type of the appropriate size.
        const swap_type = switch(@typeInfo(T)){
            .Int => T,
            .Float => switch(@sizeOf(T)){
                    2 => i16,
                    4 => i32,
                    8 => i128,
                    else => undefined
            },
            else => undefined            
        };

        // Cast your array data to the appropriate swap_type
        var ret = @ptrCast(*align(1) swap_type, &self.data[self.pos]).*;
        self.pos += @sizeOf(T);

        return if(self.little_endian)
                    @bitCast(T, ret) 
                else 
                    @bitCast(T, @byteSwap(swap_type, ret));
    }

    pub fn read_slice(self: *Reader, comptime size: comptime_int) [size]u8 {
        var ret = self.data[self.pos .. self.pos + size];
        self.pos += size;
        return ret;
    }

    pub fn peak_slice(self: *Reader, comptime size: comptime_int) [size]u8 {
        var ret = self.data[self.pos .. self.pos + size];
        return ret;
    }

    pub fn read_string_nt(self: *Reader, allocator: *std.mem.Allocator) []u8 {
        var start = self.pos;
        var end = start;
        var stop = false;
        while(!stop) {
            var b = self.read(u8);
            if(b == 0) {
                stop = true;
            } else {
                end += 1;
            }
        }
        var size = end - start;
        if(size > 0) {
            return self.data[start .. end];
        } else {
            return "";
        }
    }

    test "stuff" {
        var data = try std.testing.allocator.alloc(u8, 1024);
        data[0] = 5;
        data[1] = 0;
        data[2] = 0;
        data[3] = 0;

        data[4] = 0;
        data[5] = 0;
        data[6] = 0;
        data[7] = 5;

        var reader = Reader {.data = data};
        var i = reader.read(i32);
        reader.little_endian = false;
        var f = reader.read(f32);

        std.log.info("{} {}", .{i, f});
    }
};
