const std = @import("std");
const zark = @import("zark");

const Engine = zark.engine.Engine;
const Config = zark.engine.Config;
const ShaderProgram = zark.shader.ShaderProgram;
const VertexAttribute = zark.mesh.VertexAttribute;
const VertexAttributes = zark.mesh.VertexAttributes;
const PrimitiveType = zark.mesh.PrimitiveType;
const Mesh = zark.mesh.Mesh;
const RenderTexture = zark.RenderTexture;
const SpriteBatch = zark.SpriteBatch;
const Camera = zark.camera.Camera;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};

var mesh: Mesh = undefined; 
var program: ShaderProgram = undefined; 
var rt: RenderTexture= undefined;
var batch: SpriteBatch = undefined;
var camera: Camera = undefined;

var vs =  
\\#version 330
\\
\\in vec3 a_position;
\\
\\
\\void main()
\\{
\\    gl_Position = vec4(a_position, 1.0);
\\}
;
var fs =  
\\#version 330
\\
\\out vec4 f_color;
\\
\\void main()
\\{
\\	f_color = vec4(1.0, 0.0, 0.0, 1.0);
\\}
;


fn on_init(engine: *Engine) void {
    std.log.info("on_init", .{});

    var attr = VertexAttributes{};
    attr.add(VertexAttribute.position());

    mesh =  Mesh.init(&gpa.allocator, attr, true, 3, 3);
    program = ShaderProgram.init(&gpa.allocator, vs, fs);

    var vertices = [_] f32 { 
        -1.0, -1.0, 0.0,
         1.0, -1.0, 0.0,
         0.0,  1.0, 0.0,
    };
    var indices = [_] i32 { 0, 1, 2, };

    mesh.set_vertices(&vertices);
    mesh.set_indices(&indices);


    batch = SpriteBatch.init(&gpa.allocator);
    rt = RenderTexture.init(1280, 720) catch unreachable;    

    camera = Camera.init_ortho(1280, 720);

    zark.INFOf("RT: {} {} {}", .{rt.handle, rt.texture.gl_handle, zark.gl.glGetError()});
}

fn on_tick(engine: *Engine, dt: f32) void {

    camera.update();
    //std.log.info("on_render({})", .{dt});

    //zark.gl.glClear(zark.gl.GL_COLOR_BUFFER_BIT | zark.gl.GL_DEPTH_BUFFER_BIT);
    //zark.gl.glClearColor(0.2, 0.2, 0.2, 1.0); 

    // CLEAR 
    engine.gfx.enable_depth_test();    
    engine.gfx.clear(0.0, 0.0, 0.0, 1.0);

    // RENDER TO FB
    rt.bind();  
     engine.gfx.clear(0.5, 0.0, 0.0, 1.0);
     program.bind();
     mesh.render(&program, PrimitiveType.TRIANGLE);
    rt.unbind(engine);

    // CLEAR
    
    engine.gfx.clear(0.0, 0.5, 0.0, 1.0);
    // RENDER THE FB
    batch.set_projection(camera.combined);
    batch.begin();
    //batch.draw(&rt.texture, 1280*0.25, 720*0.25, 1280*0.5, 720*0.5);
    batch.draw(&rt.texture, 0, 0, 256, 256);
    batch.end();
}

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark - sample: 03_triangle" };

    var e = Engine{
        .config = c,
        .on_init = on_init,
        .on_tick = on_tick,
    };


    if (!e.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end..", .{});
}
