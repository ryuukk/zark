pub usingnamespace @cImport({
    @cInclude("GLFW/glfw3.h");
});


//pub const WindowIconifyFun = fn(window: *GLFWwindow, iconified: c_int) callconv(.C) void;//

//extern fn glfwSetWindowIconifyCallback(window: ?*GLFWwindow, callback: WindowIconifyFun) WindowIconifyFun;//

//pub fn setWindowIconifyCallback(window: ?*GLFWwindow, callback: WindowIconifyFun) !WindowIconifyFun{
//    var res = glfwSetWindowIconifyCallback(window, callback);
//    return res;
//}

const zark = @import("../zark.zig");
