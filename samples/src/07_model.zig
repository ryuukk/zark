const std = @import("std");
const zark = @import("zark");

pub usingnamespace zark.math;
const Engine = zark.engine.Engine;
const Config = zark.engine.Config;
const ShaderProgram = zark.shader.ShaderProgram;
const PrimitiveType = zark.mesh.PrimitiveType;
const Camera = zark.camera.Camera;
const CameraController = zark.camera.CameraController;
const ModelData = zark.model_data.ModelData;
const Model = zark.model.Model;
const ModelInstance = zark.model.ModelInstance;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};

var engine: Engine = undefined;
var mesh: Mesh = undefined; 
var program: ShaderProgram = undefined;
var camera: Camera = undefined;
var controller: CameraController = undefined;
var acc: f32 = 0.0;

var model: Model = undefined;
var model_instance: ModelInstance = undefined;

var vs =  
\\#version 330
\\
\\in vec3 a_position;
\\in vec3 a_normal;
\\in vec4 a_color;
\\in vec2 a_texCoord0;
\\
\\uniform mat4 u_proj;
\\uniform mat4 u_view;
\\uniform mat4 u_world;
\\
\\out vec4 v_color;
\\out vec2 v_texCoord;
\\
\\void main()
\\{
\\    gl_Position = u_proj * u_view * u_world * vec4(a_position, 1.0);
\\
\\    v_color = a_color;
\\    v_texCoord = a_texCoord0;
\\}
;

var fs =  
\\#version 330
\\
\\in vec4 v_color;
\\in vec2 v_texCoord;
\\
\\uniform sampler2D u_texture;
\\
\\out vec4 f_color;
\\
\\void main()
\\{
\\    vec3 color = texture(u_texture, v_texCoord).rgb;
\\    f_color = vec4(color, 1.0) * v_color;
\\    //f_color = v_color;
\\}
;

fn on_init(e: *Engine) void {
    std.log.info("on_init", .{});

    camera = Camera.init_perspective(67, 1280, 720);
    controller = CameraController.init(e);

    e.input.processor = &controller.base;

    var data = ModelData.load(&gpa.allocator, "bin/data/models/male.g3dj") catch unreachable;
    defer data.deinit();

    model = Model.init(&gpa.allocator, &data) catch unreachable;
    model_instance = ModelInstance.init(&gpa.allocator, &model) catch unreachable;

    program = ShaderProgram.init(&gpa.allocator, vs, fs);
}

//fn on_update(e: *Engine, dt: f32) void {
//    if(engine.input.is_key_just_pressed(zark.input.Keys.SPACE)) {
//        zark.INFO("yo");
//        
//        var data = ModelData.load(&gpa.allocator, "bin/data/models/male.g3dj") catch unreachable;
//        defer data.deinit();
//
//        var m  = Model.init(&gpa.allocator, &data) catch unreachable;
//        defer m.deinit() catch unreachable;
//    }
//}

fn on_tick(e: *Engine, dt: f32) void {

    acc += dt;

    controller.update(&camera, dt);

    //engine.gfx.clear(0.2, 0.2, 0.2, 1.0);
    //engine.gfx.enable_depth_test(); 

    zark.gl.glClear(zark.gl.GL_COLOR_BUFFER_BIT | zark.gl.GL_DEPTH_BUFFER_BIT);
    zark.gl.glClearColor(0.2, 0.2, 0.2, 1.0);  
    
    zark.gl.glEnable(zark.gl.GL_DEPTH_TEST);
    zark.gl.glPolygonMode(zark.gl.GL_FRONT_AND_BACK, zark.gl.GL_LINE );

    camera.update();
    program.bind();
    program.set_uniform_mat4("u_proj", &camera.projection);
    program.set_uniform_mat4("u_view", &camera.view);
    var world = Mat4.create( 
        Vec3{.x = 0, .y = 0, .z = -5},
        //Quat.from_axisf(cos(acc), sin(acc), sin(acc), acc), 
        Quat.identity(),
        Vec3{.x = 1.0, .y = 1.0, .z = 1.0}
    );

   for(model.nodes) |node| {
       // TODO: this seems wrong
       var transform = world.scl(&node.global_transform);
       program.set_uniform_mat4("u_world", &transform);

       for(node.parts) |part| {
           part.mesh_part.render(&program, true);
       }
   }
}

pub fn main() anyerror!void {
       // allocate a large enough buffer to store the cwd
    var buf: [std.fs.MAX_PATH_BYTES]u8 = undefined;
    
    // getcwd writes the path of the cwd into buf and returns a slice of buf with the len of cwd
    const cwd = try std.os.getcwd(&buf);

    // print out the cwd
    std.debug.warn("cwd: {}\n\n", .{cwd}); 

    var c = Config{ .window_title = "zark - sample: 07_model" };
    
    engine = Engine{
        .config = c,
        .on_init = on_init,
        .on_tick = on_tick,
    };

    if (!engine.run())
        std.log.err("Engine failure", .{});

    std.log.info("the end", .{});
    
}
