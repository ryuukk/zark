const std = @import("std");
const zark = @import("zark");

pub usingnamespace zark.math;
const Engine = zark.engine.Engine;
const Config = zark.engine.Config;
const ShaderProgram = zark.shader.ShaderProgram;
const VertexAttribute = zark.mesh.VertexAttribute;
const VertexAttributes = zark.mesh.VertexAttributes;
const PrimitiveType = zark.mesh.PrimitiveType;
const Mesh = zark.mesh.Mesh;
const Camera = zark.camera.Camera;
const CameraController = zark.camera.CameraController;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};

var engine: Engine = undefined;
var mesh: Mesh = undefined; 
var program: ShaderProgram = undefined;
var camera: Camera = undefined;
var controller: CameraController = undefined;
var acc: f32 = 0.0;

var vs =  
\\#version 330
\\
\\in vec3 a_position;
\\in vec3 a_normal;
\\
\\uniform mat4 u_proj;
\\uniform mat4 u_view;
\\uniform mat4 u_world;
\\
\\out vec3 v_normal;
\\
\\void main()
\\{
\\    gl_Position = u_proj * u_view * u_world * vec4(a_position, 1.0);
\\
\\    v_normal = a_normal;
\\}
;

var fs =  
\\#version 330
\\
\\in vec3 v_normal;
\\
\\out vec4 f_color;
\\
\\void main()
\\{
\\	f_color = vec4(1.0, 1.0, 1.0, 1.0) * vec4(v_normal, 1.0);
\\}
;


fn on_init(e: *Engine) void {
    std.log.info("on_init", .{});

    camera = Camera.init_perspective(67, 1280, 720);
    controller = CameraController.init(e);

    

    e.input.processor = &controller.base;

    var attr = VertexAttributes{};
    attr.add(VertexAttribute.position());
    attr.add(VertexAttribute.normal());

    mesh =  Mesh.init(&gpa.allocator, attr, true, 24, 36);
    program = ShaderProgram.init(&gpa.allocator, vs, fs);

    var positions = [_] f32 { 
                -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 0.5, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5,
                -0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5,
                0.5, -0.5, -0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, -0.5, 0.5, -0.5, -0.5, -0.5,
                -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, -0.5, -0.5, 0.5, -0.5, 0.5, 0.5, 0.5, 0.5,
                0.5, 0.5, -0.5
    };


    var normals = [_] f32 { 
                0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0,
                0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0,
                0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0,
                0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0,
                0.0
    };

    var vertices: [24*6] f32 = std.mem.zeroes([24*6] f32);

    var pIdx: usize = 0;
    var nIdx: usize = 0;
    var i: usize = 0;
    while(i < vertices.len) {
        vertices[i] = positions[pIdx]; i += 1; pIdx += 1;
        vertices[i] = positions[pIdx]; i += 1; pIdx += 1;
        vertices[i] = positions[pIdx]; i += 1; pIdx += 1;
        vertices[i] = normals[nIdx]; i += 1; nIdx += 1;
        vertices[i] = normals[nIdx]; i += 1; nIdx += 1;
        vertices[i] = normals[nIdx]; i += 1; nIdx += 1;
        //vertices[i++] = cubeTex[tIdx++];
        //vertices[i++] = cubeTex[tIdx++];
    }

    var indices = [_] i32 { 
            0, 2, 1, 0, 3, 2, 4, 5, 6, 4, 6, 7, 8, 9, 10, 8, 10, 11, 12, 15, 14, 12, 14, 13, 16, 17, 18, 16,
            18, 19, 20, 23, 22, 20, 22, 21
    };

    mesh.set_vertices(&vertices);
    mesh.set_indices(&indices);
    
    
}
fn on_update(dt: f32) void {
}

fn on_render(dt: f32) void {

    //acc += dt;

    controller.update(&camera, dt);

    engine.gfx.clear(0.2, 0.2, 0.2, 1.0);
    engine.gfx.enable_depth_test();    

    camera.update();
    program.bind();
    program.set_uniform_mat4("u_proj", &camera.projection);
    program.set_uniform_mat4("u_view", &camera.view);
    var world = Mat4.create( 
        Vec3{.x = 0, .y = 0, .z = -5},
        Quat.from_axisf(cos(acc), sin(acc), sin(acc), acc), 
        Vec3{.x = 1.0, .y = 1.0, .z = 1.0}
    );
    program.set_uniform_mat4("u_world", &world);

    
    mesh.render(&program, PrimitiveType.TRIANGLE);
}

pub fn main() anyerror!void {
    

    
    var c = Config{ .window_title = "zark - sample: 06_cube" };
    
    engine = Engine{
        .config = c,
        .on_init = on_init,
        .on_update = on_update,
        .on_render = on_render,
    };

    if (!engine.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
    
}
