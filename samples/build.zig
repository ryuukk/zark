const std = @import("std");

const Builder = std.build.Builder;
const Target = std.build.Target;

pub fn build(b: *Builder) !void {
    
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();
    
    try create_exe(b, target, mode, "hello", "src/01_hello.zig");
    try create_exe(b, target, mode, "input", "src/02_input.zig");
    try create_exe(b, target, mode, "triangle", "src/03_triangle.zig");
    try create_exe(b, target, mode, "spritebatch", "src/05_spritebatch.zig");
    try create_exe(b, target, mode, "cube", "src/06_cube.zig");
    try create_exe(b, target, mode, "model", "src/07_model.zig");
    try create_exe(b, target, mode, "render_texture", "src/08_render_texture.zig");
}


fn create_exe(b: *Builder, target: std.build.Target, mode: std.builtin.Mode, name: []const u8, source: []const u8) !void {
    const exe = b.addExecutable(name, source);
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.setOutputDir("bin/");
    
    exe.addPackagePath("zark", "../zark/src/zark.zig");
    
    exe.addCSourceFile("../libs/glad/src/glad.c", &[_][]const u8{"-std=c99"});
    //exe.addCSourceFile("../libs/glfw/src/glfw.c", &[_][]const u8{"-std=c99"});
    exe.addCSourceFile("../libs/stb/src/stb.c", &[_][]const u8{"-std=c99"});
    exe.addIncludeDir("../libs/glad/include");
    exe.addIncludeDir("../libs/glfw/include");
    exe.addIncludeDir("../libs/stb/include");
    exe.addLibPath("../libs/glfw/");

    exe.linkLibC();
    exe.linkSystemLibrary("glfw3");
    exe.linkSystemLibrary("c");

    if (target.getOs().tag == .windows) {
        exe.linkSystemLibrary("User32");
        exe.linkSystemLibrary("Gdi32");
        exe.linkSystemLibrary("shell32");
    } else {
        // TODO: crosscompilation complain about GL/gl.h
        exe.defineCMacro("GLFW_INCLUDE_NONE");
    }

    //exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step(name, b.fmt("run {} sample", .{name}));
    run_step.dependOn(&run_cmd.step);
}
