const std = @import("std");
const zark = @import("zark");

const Engine = zark.engine.Engine;
const Config = zark.engine.Config;

const SpriteBatch = zark.SpriteBatch;
const Texture2D = zark.texture.Texture2D;
const Camera = zark.camera.Camera;


var gpa = std.heap.GeneralPurposeAllocator(.{}){};

var camera: Camera = undefined;
var texture: Texture2D = undefined;
var batch: SpriteBatch = undefined;

fn on_init(engine: *Engine) void {
    std.log.info("on_init", .{});
    
    camera = Camera.init_ortho(engine.gfx.get_width(), engine.gfx.get_height());
    batch = SpriteBatch.init(&gpa.allocator);
    texture = zark.texture.from_file("bin/data/bg_stars.png") catch unreachable;
}

fn on_update(engine: *Engine, dt: f32) void {
}

fn on_render(engine: *Engine, dt: f32) void {

    zark.gl.glClear(zark.gl.GL_COLOR_BUFFER_BIT | zark.gl.GL_DEPTH_BUFFER_BIT);
    zark.gl.glClearColor(0.2, 0.2, 0.2, 1.0);  

    camera.update();
    batch.set_projection(camera.combined);
    batch.begin();
    batch.draw(&texture, 0, 0, 256, 256);
    batch.end();
}

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark - sample: 05_spritebatch" };

    var e = Engine{
        .config = c,
        .on_init = on_init,
        .on_update = on_update,
        .on_render = on_render,
    };


    if (!e.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
}
