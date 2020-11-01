const std = @import("std");
const zark = @import("zark");
const log = zark.log;

const EntityKind = enum {
    Effect,
    GameObject,
    Wall,
    Projectile,
    Player,
};

const Entity = struct {
    ignore: i32 = 0,
    entity_id: i32 = -1,
    entity_type: i32 = -1,
    kind: EntityKind,
    tick: fn tick(*Entity, f32) bool,
};

const Player = struct {
    base: Entity = .{ .kind = .Player, .tick = tick },
    name: []const u8,

    fn tick(e: *Entity, dt: f32) bool {
        const self: *Player = @fieldParentPtr(Player, "base", e);

        std.log.info("Tick {}", .{self.name});
        return true;
    }
};

fn tick(e: *Entity) void {
    if (!e.tick(e, 0))
        std.log.info("remove", .{});

    if (e.kind == .Player) {
        var player = @ptrCast(*Player, e);
        std.log.info("{}", .{player.name});
    }
}
const Node = struct {
    id: []const u8,
    parent: ?*Node = null,
    child: []Node = [],
};

const Data = struct {
    id: i32,
};

pub fn main() anyerror!void {


    

    var ar = std.ArrayList(Node).init(std.testing.allocator);

    for(ar.items) |m| {
    }


    var something = true;
    var a = Node{ .id = "a" };
    var b = Node{ .id = "b", .parent = &a };

    
    if (something) {
        if (b.parent) |p| {
            std.log.info("{} {}", .{ b.id, p.id });
        }
    }

    // vs

    if (something and b.parent != null) {
        std.log.info("{} {}", .{ b.id, b.parent.?.id });
    }

    var e = Player {.kind = .Player, .name = "yo"};
    tick(&e.base);
}

