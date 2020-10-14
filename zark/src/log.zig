const std = @import("std");

pub fn warnIndent(indent: usize) void {
    var i: usize = 0;
    while (i < indent) : (i += 1) {
        std.debug.warn("    ", .{});
    }
}

pub fn log_slice(val: anytype) void {
    switch (@typeInfo(@TypeOf(val))) {
        .Pointer => |p| switch (p.size) {
            .Slice => {
                if (p.child == u8) {
                    std.debug.warn("\"[]\"", .{val});
                } else {
                    std.debug.warn("[", .{});
                    var i: i32 = 0;
                    for (val) |one| {
                        if (i == val.len - 1) {
                            std.debug.warn("{}", .{one});
                        } else {
                            std.debug.warn("{}, ", .{one});
                        }
                        i += 1;
                    }
                    std.debug.warn("]", .{});
                }
            },
            else => {
                @panic("no");
            },
        },
        else => {
            @panic("no");
        },
    }
}

pub fn prettyPrint(val: anytype, indent: usize) void {
    switch (@typeInfo(@TypeOf(val))) {
        .Type => std.debug.warn("{}", .{@typeName(val)}),
        .Void => std.debug.warn("void", .{}),
        .Bool,
        .Int,
        .Float,
        .ComptimeFloat,
        .ComptimeInt,
        .Null,
        .EnumLiteral,
        => std.debug.warn("{}", .{val}),
        .Pointer => |p| switch (p.size) {
            .One => {
                prettyPrint(val.*, indent);
            },
            .Many => {
                if (p.sentinel) |sentinel| {
                    prettyPrint(@TypeOf(val));
                    std.debug.warn("{{\n");
                    var ptr = val;
                    while (ptr.* != sentinel) : (ptr += 1) {
                        warnIndent(indent + 1);
                        prettyPrint(ptr.*, indent + 1);
                        std.debug.warn(",\n", .{});
                    }
                    warnIndent(indent);
                    std.debug.warn("}}", .{});
                } else {
                    unreachable;
                }
            },
            .Slice => {
                if (p.child == u8) {
                    std.debug.warn("\"{}\"", .{val});
                } else {
                    prettyPrint(@TypeOf(val), indent);
                    std.debug.warn("{{ ", .{});
                    for (val) |one| {
                        std.debug.warn("{}, ", .{one});
                    }
                    warnIndent(indent);
                    std.debug.warn("}}", .{});
                }
            },
            .C => {
                unreachable;
            },
        },
        .Array => |a| {
            prettyPrint(@TypeOf(val), indent);
            std.debug.warn("{{\n", .{});
            for (val) |one| {
                warnIndent(indent + 1);
                prettyPrint(one, indent);
                std.debug.warn(",\n", .{});
            }
            warnIndent(indent);
            std.debug.warn("}}", .{});
        },
        .Struct => |s| {
            if (comptime std.mem.indexOf(u8, @typeName(@TypeOf(val)), "ArrayListAligned") != null) {
                prettyPrint(val.items, indent);
            } else {
                const name = @typeName(@TypeOf(val));
                if (name[0] != '.') {
                    std.debug.warn("{}", .{name});
                }
                std.debug.warn("{{\n", .{});
                inline for (s.fields) |field| {
                    warnIndent(indent + 1);
                    std.debug.warn(".{} = ", .{field.name});
                    prettyPrint(@field(val, field.name), indent + 1);
                    std.debug.warn(",\n", .{});
                }
                warnIndent(indent);
                std.debug.warn("}}", .{});
            }
        },
        .Union => |u| {
            const name = @typeName(@TypeOf(val));
            if (name[0] != '.') {
                std.debug.warn("{}", .{name});
            }
            if (u.tag_type) |t| {
                std.debug.warn("{{ ", .{});
                std.debug.warn(".{} = ", .{@tagName(@as(t, val))});
                inline for (u.fields) |f| {
                    if (@enumToInt(@as(t, val)) == f.enum_field.?.value) {
                        prettyPrint(@field(val, f.name), indent);
                    }
                }
                std.debug.warn(" }}", .{});
            }
        },
        .Optional => {
            if (val) |v| {
                prettyPrint(v, indent);
            } else {
                std.debug.warn("null", .{});
            }
        },
        .Undefined, .NoReturn => unreachable,
        .Fn => |f| {
            std.debug.warn("fn (", .{});
            inline for (f.args) |arg, i| {
                prettyPrint(arg.arg_type, 0);
                if (i != f.args.len - 1) {
                    std.debug.warn(", ", .{});
                }
            }
            std.debug.warn(") ", .{});
            prettyPrint(f.return_type, indent);
        },
        // TODO
        else => std.debug.warn("{}", .{val}),
    }
}
