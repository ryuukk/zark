const std = @import("std");

const Builder = std.build.Builder;
const Target = std.build.Target;

pub fn build(b: *Builder) void {

    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    try create_exe(b, target, mode, "hello", "src/01_hello.zig");
    try create_exe(b, target, mode, "input", "src/02_input.zig");
    try create_exe(b, target, mode, "triangle", "src/03_triangle.zig");
}

fn create_exe(b: *Builder, target: std.build.Target, mode: std.builtin.Mode,
 name: []const u8, source: []const u8) !void {

    const exe = b.addExecutable(name, source);
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.setOutputDir("bin/");

    exe.addCSourceFile("../libs/glad/src/glad.c", &[_][]const u8{"-std=c99"});
    exe.addIncludeDir("../libs/glad/include");
    exe.addIncludeDir("../libs/glfw/include");
    exe.addLibPath("../libs/glfw/");

    exe.linkLibC();
    exe.linkSystemLibrary("glfw3");
    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("User32");
    exe.linkSystemLibrary("Gdi32");
    exe.linkSystemLibrary("shell32");

    exe.addPackagePath("zark", "../zark/src/zark.zig");

    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step(name, b.fmt("run {}.zig", .{name}));
    run_step.dependOn(&run_cmd.step);

}