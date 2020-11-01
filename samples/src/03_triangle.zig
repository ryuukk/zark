const std = @import("std");
const zark = @import("zark");

const Engine = zark.engine.Engine;
const Config = zark.engine.Config;
const ShaderProgram = zark.shader.ShaderProgram;
const VertexAttribute = zark.mesh.VertexAttribute;
const VertexAttributes = zark.mesh.VertexAttributes;
const PrimitiveType = zark.mesh.PrimitiveType;
const Mesh = zark.mesh.Mesh;


var gpa = std.heap.GeneralPurposeAllocator(.{}){};

var mesh: Mesh = undefined; 
var program: ShaderProgram = undefined; 

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
    
}
fn on_update(dt: f32) void {
    std.log.info("on_update({})", .{dt});
}

fn on_render(dt: f32) void {
    std.log.info("on_render({})", .{dt});

    program.bind();
    mesh.render(&program, PrimitiveType.TRIANGLE);
}

pub fn main() anyerror!void {
    var c = Config{ .window_title = "zark - sample: 03_triangle" };

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
