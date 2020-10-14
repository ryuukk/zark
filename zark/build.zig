const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();
    

    const exe = b.addExecutable("zark", "src/main.zig");
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
    //exe.addPackagePath("glfw", "../deps/glfw/glfw.zig");

    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
