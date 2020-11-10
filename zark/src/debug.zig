const std = @import("std");

pub fn ASSERT(condition: bool, msg: []const u8) void {
    @setCold(true);

    if(!condition) {
        @panic(msg);
    }
}

pub fn ASSERTf(condition: bool, comptime format: []const u8, args: anytype) void {
    @setCold(true);

    if(!condition) {
        std.debug.panic(format, args);
    }
}

pub fn INFO(comptime msg: []const u8) void {
    std.log.info(msg, .{});
}

pub fn INFOf(comptime format: []const u8, args: anytype) void {
    std.log.info(format, args);
}

pub fn WARN(comptime msg: []const u8) void {
    std.log.warn(msg, .{});
}

pub fn WARNf(comptime format: []const u8, args: anytype) void {
    std.log.warn(format, args);
}

pub fn ERROR(comptime msg: []const u8) void {
    std.log.err(msg, .{});
}

pub fn ERRORf(comptime format: []const u8, args: anytype) void {
    std.log.err(format, args);
}

pub fn PANICf(comptime format: []const u8, args: anytype) void {
    std.debug.panic(format, args);
}


pub fn warn_indent(indent: usize) void {
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

pub fn pretty_print(val: anytype, indent: usize) void {
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
                pretty_print(val.*, indent);
            },
            .Many => {
                if (p.sentinel) |sentinel| {
                    pretty_print(@TypeOf(val));
                    std.debug.warn("{{\n");
                    var ptr = val;
                    while (ptr.* != sentinel) : (ptr += 1) {
                        warn_indent(indent + 1);
                        pretty_print(ptr.*, indent + 1);
                        std.debug.warn(",\n", .{});
                    }
                    warn_indent(indent);
                    std.debug.warn("}}", .{});
                } else {
                    unreachable;
                }
            },
            .Slice => {
                if (p.child == u8) {
                    std.debug.warn("\"{}\"", .{val});
                } else {
                    pretty_print(@TypeOf(val), indent);
                    std.debug.warn("{{ ", .{});
                    for (val) |one| {
                        std.debug.warn("{}, ", .{one});
                    }
                    warn_indent(indent);
                    std.debug.warn("}}", .{});
                }
            },
            .C => {
                unreachable;
            },
        },
        .Array => |a| {
            pretty_print(@TypeOf(val), indent);
            std.debug.warn("{{\n", .{});
            for (val) |one| {
                warn_indent(indent + 1);
                pretty_print(one, indent);
                std.debug.warn(",\n", .{});
            }
            warn_indent(indent);
            std.debug.warn("}}", .{});
        },
        .Struct => |s| {
            if (comptime std.mem.indexOf(u8, @typeName(@TypeOf(val)), "ArrayListAligned") != null) {
                pretty_print(val.items, indent);
            } else {
                const name = @typeName(@TypeOf(val));
                if (name[0] != '.') {
                    std.debug.warn("{}", .{name});
                }
                std.debug.warn("{{\n", .{});
                inline for (s.fields) |field| {
                    warn_indent(indent + 1);
                    std.debug.warn(".{} = ", .{field.name});
                    pretty_print(@field(val, field.name), indent + 1);
                    std.debug.warn(",\n", .{});
                }
                warn_indent(indent);
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
                        pretty_print(@field(val, f.name), indent);
                    }
                }
                std.debug.warn(" }}", .{});
            }
        },
        .Optional => {
            if (val) |v| {
                pretty_print(v, indent);
            } else {
                std.debug.warn("null", .{});
            }
        },
        .Undefined, .NoReturn => unreachable,
        .Fn => |f| {
            std.debug.warn("fn (", .{});
            inline for (f.args) |arg, i| {
                pretty_print(arg.arg_type, 0);
                if (i != f.args.len - 1) {
                    std.debug.warn(", ", .{});
                }
            }
            std.debug.warn(") ", .{});
            pretty_print(f.return_type, indent);
        },
        // TODO
        else => std.debug.warn("{}", .{val}),
    }
}
