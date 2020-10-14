const std = @import("std");

const Vec2 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
};
const Vec3 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,
};

const Quat = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,
    w: f32 = 1.0,
};

const Mat4 = struct {
    m00: f32 = 1.0,
    m10: f32 = 0.0,
    m20: f32 = 0.0,
    m30: f32 = 0.0,
    m01: f32 = 0.0,
    m11: f32 = 1.0,
    m21: f32 = 0.0,
    m31: f32 = 0.0,
    m02: f32 = 0.0,
    m12: f32 = 0.0,
    m22: f32 = 1.0,
    m32: f32 = 0.0,
    m03: f32 = 0.0,
    m13: f32 = 0.0,
    m23: f32 = 0.0,
    m33: f32 = 1.0,
};

const Color = struct {
    r: f32 = 0.0,
    g: f32 = 0.0,
    b: f32 = 0.0,
    a: f32 = 0.0,
};
