//pub const debug = @import("debug.zig");
pub usingnamespace @import("debug.zig");

pub const io = @import("io.zig");
pub const fs = @import("fs.zig");
pub const array = @import("array.zig");
pub const engine = @import("engine.zig");
pub const input = @import("input.zig");
pub const gfx = @import("gfx.zig");
pub const time = @import("time.zig");
pub const mesh = @import("mesh.zig");
pub const shader = @import("shader.zig");
pub const math = @import("math.zig");
pub const camera = @import("camera.zig");

pub const node = @import("node.zig");
pub const model = @import("model.zig");
pub const model_data = @import("model_data.zig");
pub const model_anim = @import("model_animation.zig");
pub const texture = @import("texture.zig");
pub const spritebatch = @import("spritebatch.zig");


pub const Engine = engine.Engine;
pub const Gfx = gfx.Gfx;
pub const Input = input.Input;
pub const InputProcessor = input.InputProcessor;

pub const SpriteBatch = spritebatch.SpriteBatch;
pub const Texture2D = texture.Texture2D;
pub const RenderTexture = texture.RenderTexture;

// c stuff
pub const gl = @import("c/glad.zig");
pub const glfw = @import("c/glfw.zig");
pub const stb = @import("c/stb.zig");


pub fn nothing() void {}


pub fn empty(comptime T: type) []T {
    return &[_]T{};
}

pub const string = @import("string.zig").string;