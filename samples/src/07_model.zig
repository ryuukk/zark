const std = @import("std");
const zark = @import("zark");

pub const log_level: std.log.Level = .debug;

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
const AnimationController = zark.model_anim.AnimationController;

var mesh: Mesh = undefined; 
var program: ShaderProgram = undefined;
var camera: Camera = undefined;
var controller: CameraController = undefined;
var acc: f32 = 0.0;

var model: Model = undefined;
var model_instance: ModelInstance = undefined;
var anim_controller: AnimationController = undefined;

fn on_init(engine: *Engine) void {
    zark.INFO("on_init");

    camera = Camera.init_perspective(67, 1280, 720);
    controller = CameraController.init(engine);

    engine.input.processor = &controller.base;

    var data = ModelData.load(engine.allocator, "bin/data/models/male.g3dj") catch unreachable;
    defer data.deinit();

    model = Model.init(engine.allocator, &data) catch unreachable;
    model_instance = ModelInstance.init(engine.allocator, &model) catch unreachable;
    anim_controller = AnimationController.init(engine.allocator, &model_instance);

    _ = anim_controller.animate_full("Armature|run_00", 0, -1, -1, 1, 0.5);

    program = ShaderProgram.init(engine.allocator, vs_SKINNED, fs);
}

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

    anim_controller.update(dt);

    var world = Mat4.create(Vec3.set(0,0,-5), Quat.identity(), Vec3.set(1,1,1));

    for(model_instance.nodes) |node| {
       render_node(&program, node, world);
   }
}

fn render_node(p: *ShaderProgram, node: *zark.node.Node, world: Mat4) void {
    if(node.parts.len > 0) {
        var transform = world.scl(&node.global_transform);
        p.set_uniform_mat4("u_world", &transform);

        for(node.parts) |part| {

            p.set_uniform_mat4_array("u_bones", part.bones.len, &part.bones);
            part.mesh_part.render(p, true);
        }
    }

    for(node.children.items) |child| {
        render_node(p, child, world);
    }
}

pub fn main() anyerror!void {
    var buf: [std.fs.MAX_PATH_BYTES]u8 = undefined;
    const cwd = try std.os.getcwd(&buf);    
    zark.INFOf("cwd: {}", .{cwd}); 

    var c = Config{ .window_title = "zark - sample: 07_model" };
    
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var e = Engine{
        .config = c,
        .allocator = &gpa.allocator,
        .on_init = on_init,
        .on_tick = on_tick,
    };

    if (!e.run())
        zark.ERROR("Engine failure");

    zark.INFO("the end");
    
}



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



var vs_SKINNED =  
\\#version 330
\\
\\in vec3 a_position;
\\in vec3 a_normal;
\\in vec4 a_color;
\\in vec2 a_texCoord0;
\\in vec2 a_boneWeight0;
\\in vec2 a_boneWeight1;
\\in vec2 a_boneWeight2;
\\in vec2 a_boneWeight3;
\\
\\uniform mat4 u_proj;
\\uniform mat4 u_view;
\\uniform mat4 u_world;
\\
\\uniform mat4 u_bones[20];
\\
\\out vec4 v_color;
\\out vec2 v_texCoord;
\\
\\void main()
\\{
\\
\\	mat4 skinning = mat4(0.0);
\\	skinning += (a_boneWeight0.y) * u_bones[int(a_boneWeight0.x)];
\\	skinning += (a_boneWeight1.y) * u_bones[int(a_boneWeight1.x)];
\\	skinning += (a_boneWeight2.y) * u_bones[int(a_boneWeight2.x)];
\\	skinning += (a_boneWeight3.y) * u_bones[int(a_boneWeight3.x)];
\\
\\
\\    vec4 pos = u_world * skinning * vec4(a_position, 1.0);
\\    gl_Position = u_proj * u_view * pos;
\\
\\    v_color = a_color;
\\    v_texCoord = a_texCoord0;
\\}
;
