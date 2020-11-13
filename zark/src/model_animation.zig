const std = @import("std");
const zark = @import("zark.zig");
usingnamespace zark.model;
usingnamespace zark.node;
usingnamespace zark.math;

const TransformMap = std.AutoHashMap(*Node, Transform);

const Transform = struct {
    translation: Vec3 = Vec3.set(0,0,0),
    rotation: Quat = Quat.identity(),
    scale: Vec3 = Vec3.set(1,1,1),

    pub const identity: Transform = Transform{};

    pub fn to_mat4(self: *Transform) Mat4 {
        return Mat4.set(&self.translation, &self.rotation, &self.scale);
    }

    pub fn set(self: *Transform, other: *const Transform) Transform {
        return .{
            .translation = other.translation,
            .rotation = other.rotation,
            .scale = other.scale,
        };
    }

    // TODO: add lerp methods
};


pub const AnimationDesc = struct {
    animation: ?*Animation = null,
    on_loop: ?fn(*AnimationDesc)void = null,
    on_end: ?fn(*AnimationDesc)void = null,

    speed: f32 = 0.0,
    time: f32 = 0.0,
    offset: f32 = 0.0,
    duration: f32 = 0.0,
    loop_count: i32 = 0,

    pub const NULL: AnimationDesc = .{};

    pub fn update(self: *AnimationDesc, dt: f32) f32 {

        if(self.loop_count == 0) return dt;

        if(self.animation) |animation| {
            var loops: usize = 0;
            var diff = self.speed * dt;
            if(self.duration != 0.0) {
                self.time += diff;
                loops = @floatToInt(usize, abs(self.time / self.duration) );
                if(self.time < 0.0) {
                    loops += 1;
                    while(self.time < 0.0) {
                        self.time += self.duration;
                    }
                }
                self.time = abs( @mod(self.time, self.duration) );
            } else {
                loops = 1;
            }

            var i: usize = 0;
            while(i < loops) : (i += 1) {
                if(self.loop_count > 0) self.loop_count -= 1;
                if(self.loop_count != 0 and self.on_loop != null) self.on_loop.?(self);
                if(self.loop_count == 0) {
                    var result: f32 =
                        @intToFloat(f32, loops - 1 - i) * self.duration +
                        if (diff < 0.0)
                            (self.duration - self.time)
                        else
                            self.time;

                    self.time = if (diff < 0.0) 0.0 else self.duration;

                    if(self.on_end) |cb| {
                        cb(self);
                    }
                    return result;
                }
            }
            return 0.0;
        }

        return dt;
    }
};


pub const AnimationController = struct {
    current: ?AnimationDesc = null,
    queued: ?AnimationDesc = null,
    queued_transition_time: f32 = 0,
    previous: ?AnimationDesc = null,
    transition_current_time: f32 = 0,
    transition_target_time: f32 = 0,
    in_action: bool = false,
    paused: bool = false,
    allow_same_animation: bool = false,
    just_changed_animation: bool = false,

    applying: bool = false,
    target: *ModelInstance,

    transform_map: TransformMap,

    pub fn init(allocator: *std.mem.Allocator, target: *ModelInstance) AnimationController {
        return .{
            .target = target,
            .transform_map = TransformMap.init(allocator)
        };
    }
    
    pub fn begin(self: *AnimationController) void {
        zark.ASSERT(!self.applying, "must call end()");
        self.applying = true;
    }

    pub fn end(self: *AnimationController) void {
        zark.ASSERT(self.applying);

        var it = self.transform_map.iterator();
        while(it.next()) |entry| {
            entry.key.local_transform = entry.value.to_mat4();
        }
        self.transform_map.clearRetainingCapacity();
        self.target.calculate_transforms();
        self.applying = false;
    }

    pub fn remove_animation(self: *AnimationController, animation: *Animation) void {
        for(animation.node_animations) |na| {
            na.node.is_animated = false;
        }
    }


    // ---

    pub fn update(self: *AnimationController, dt: f32) void {
        if(self.paused) return;

        if(self.previous) |previous| {
            self.transition_current_time += dt;
            if(self.transition_current_time >= self.transition_target_time) {
                self.remove_animation(previous.animation.?);
                self.just_changed_animation = true;
                self.previous = null;
            }
        }

        if(self.just_changed_animation) {
            self.target.calculate_transforms();
            self.just_changed_animation = false;
        }

        if(self.current == null or self.current.?.loop_count == 0 or self.current.?.animation == null)
            return;

        var remain = self.current.?.update(dt);
        if(self.queued != null) {
            self.in_action = false;

            self.animate(self.queued.?, self.queued_transition_time);
            self.queued = null;
            if(remain != 0.0)
                self.update(remain);
            return;
        }

        if(self.previous) |previous| {
            @panic("animation blending not yet implemented");
            //self.apply_animations(
            //    previous.animation.?,
            //    previous.offset + previous.time,
            //    
            //    self.current.?.animation.?,
            //    self.current.?.offset + self.current.?.time,
            //    
            //    self.transition_current_time / self.transition_target_time
            //);
        } else {
            self.apply_animation(self.current.?.animation.?, self.current.?.offset + self.current.?.time);
        }
    }


    // TODO: animate / queue needs to be reworked, so i can hold a pointer to track animation states
    pub fn animate(self: *AnimationController, anim: AnimationDesc, transitionTime: f32) void {
        if(self.current == null or self.current.?.loop_count == 0) {
            self.current = anim;
        } else if(self.in_action) {
            self.queue(anim, transitionTime);
        } else if(!self.allow_same_animation and self.current.?.animation == anim.animation) {
            const time = self.current.?.time;
            self.current = anim;
            self.current.?.time = time;
            
        } else {
            if(self.previous != null) {
                self.remove_animation(self.previous.?.animation.?);
                self.previous = null;
            }
            self.previous = self.current;
            self.current = anim;
            self.transition_current_time = 0.0;
            self.transition_target_time = transitionTime;
        }
    }

    pub fn queue(self: *AnimationController, anim: AnimationDesc, transitionTime: f32) void {
        if(self.current != null or self.current.?.loop_count ==0) {
            self.animate(anim, transitionTime);
        } else {
            self.queued = anim;
            self.queued_transition_time = transitionTime;
            if(self.current.?.loop_count < 0) self.current.?.loop_count = 1;
        }
    }

    pub fn animate_full(self: *AnimationController, 
        id: []const u8, offset: f32, duration: f32, loopCount: i32, speed: f32, transitionTime: f32) AnimationDesc {

        if(self.target.get_animation(id)) |anim| {

            var desc = AnimationDesc {
                .animation = anim,
                .loop_count = loopCount,
                .speed = speed,
                .offset = offset,
                .duration = if(duration < 0)  (anim.duration - offset) else duration,
            };
            desc.time = if(speed < 0) desc.duration else 0.0;

            self.animate(desc, transitionTime);
            return desc;

        } else {
            @panic("handle that properly please");
        }     
    }

    pub fn apply_animation(self: *AnimationController, animation: *Animation, time: f32) void {
        zark.ASSERT(!self.applying, "must call begin()");
        self.apply_animation_check_blending(null, 1.0, animation, time);
        self.target.calculate_transforms();
    }

    pub fn apply_animation_check_blending(self: *AnimationController, map: ?*TransformMap, alpha: f32, animation: *Animation, time: f32) void {
        if(map == null) {
            for(animation.node_animations) |*node_anim| {
                self.apply_nodeanimation_directly(node_anim, time);
            }
        } else {
            @panic("animation blending not implemented yet");
        }
    }

    pub fn apply_nodeanimation_directly(self: *AnimationController, nodeAnim: *const NodeAnimation, time: f32) void {
        var node = nodeAnim.node;
        node.is_animated = true;
        node.local_transform = get_nodeanimation_transform(nodeAnim, time).to_mat4();
    }

    fn get_nodeanimation_transform(nodeAnim: *const NodeAnimation, time: f32) Transform {
        return .{
            .translation = get_translation_at_time(nodeAnim, time),
            .rotation = get_rotation_at_time(nodeAnim, time),
            .scale = get_scale_at_time(nodeAnim, time),
        };
    }

    fn get_translation_at_time(nodeAnim: *const NodeAnimation, time: f32) Vec3 {
        if(nodeAnim.translation.len == 0) return nodeAnim.node.translation;
        if(nodeAnim.translation.len == 1) return nodeAnim.translation[0].value;

        var index = get_first_keyframe_at_time(Vec3, nodeAnim.translation, time);
        var firstKeyframe = &nodeAnim.translation[index];
        
        if((index + 1) < nodeAnim.translation.len) {
            const secondKeyframe = nodeAnim.translation[index + 1];
            const t = (time - firstKeyframe.keytime) / (secondKeyframe.keytime - firstKeyframe.keytime);
            return firstKeyframe.value.lerp(&secondKeyframe.value, t);
        }

        return firstKeyframe.value;
    } 

    fn get_rotation_at_time(nodeAnim: *const NodeAnimation, time: f32) Quat {
        if(nodeAnim.rotation.len == 0) return nodeAnim.node.rotation;
        if(nodeAnim.rotation.len == 1) return nodeAnim.rotation[0].value;

        var index = get_first_keyframe_at_time(Quat, nodeAnim.rotation, time);
        var firstKeyframe = &nodeAnim.rotation[index];
        
        if((index + 1) < nodeAnim.rotation.len) {
            const secondKeyframe = nodeAnim.rotation[index + 1];
            const t = (time - firstKeyframe.keytime) / (secondKeyframe.keytime - firstKeyframe.keytime);
            return firstKeyframe.value.slerp(&secondKeyframe.value, t);
        }

        return firstKeyframe.value;

    } 

    fn get_scale_at_time(nodeAnim: *const NodeAnimation, time: f32) Vec3 {
        if(nodeAnim.scaling.len == 0) return nodeAnim.node.scale;
        if(nodeAnim.scaling.len == 1) return nodeAnim.scaling[0].value;

        var index = get_first_keyframe_at_time(Vec3, nodeAnim.scaling, time);
        var firstKeyframe = &nodeAnim.scaling[index];
        
        if((index + 1) < nodeAnim.scaling.len) {
            const secondKeyframe = nodeAnim.scaling[index + 1];
            const t = (time - firstKeyframe.keytime) / (secondKeyframe.keytime - firstKeyframe.keytime);
            return firstKeyframe.value.lerp(&secondKeyframe.value, t);
        }

        return firstKeyframe.value;

    } 

    fn get_first_keyframe_at_time(comptime T: type, array: []NodeKeyframe(T), time: f32) usize {
        const lastIndex = array.len - 1;
        if(lastIndex <= 0 or time < array[0].keytime or time > array[lastIndex].keytime)
            return 0;

        // binary search
        var minIndex: usize = 0;
        var maxIndex: usize = lastIndex;

        while(minIndex < maxIndex) {
            const i: usize = @divFloor((minIndex + maxIndex), 2);
            if(time > array[i + 1].keytime) {
                minIndex = i + 1;
            } else if(time < array[i].keytime) {
                maxIndex = i - 1;
            } else {
                return i;
            }
        }
        return minIndex;
    }
};