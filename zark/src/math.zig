const std = @import("std");

pub const PI: f32 = @floatCast(f32, std.math.pi);
pub const PI2: f32 = PI * 2;

pub inline fn f_mod(a: f32, b: f32) f32 {
    return @mod(a, b);
    //return std.math.mod(f32, a, b); // todo: double check
}

pub inline fn sqrt(value: f32) f32 {
    return std.math.sqrt(value);
}

pub inline fn abs(value: f32) f32 {
    return std.math.fabs(value);
}

pub inline fn sin(rad: f32) f32 {
    return std.math.sin(rad);
}

pub inline fn cos(rad: f32) f32 {
    return std.math.cos(rad);
}

pub inline fn atan2(y: f32, x: f32) f32 {
    return std.math.atan2(f32, y, x);
}

pub inline fn tan(x: f32) f32 {
    return std.math.tan(x);
}

pub const Vec2 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
};

pub const Vec3 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,

    pub fn len2(self: *Vec3) f32 {
        return x * x + y * y + z * z;
    }

    pub fn nor(self: *Vec3) Vec3 {
        const len2 = self.len2();
        if (len2 == 0.0 or len2 == 1.0)
            return Vec3{ .x = x, .y = y, .z = z };

        const scalar = 1.0 / sqrt(len2);

        return Vec3{ .x = x * scalar, .y = y * scalar, .z = z * scalar };
    }

    pub fn crs(self: *Vec3, vector: *const Vec3) Vec3 {
        return Vec3{ .x = y * vector.z - z * vector.y, .y = z * vector.x - x * vector.z, .z = x * vector.y - y * vector.x };
    }

    pub fn add(lhs: *const Vec3, rhs: *const Vec3) Vec3 {
        return .{
            .x = lhs.x + rhs.x,
            .y = lhs.y + rhs.y,
            .z = lhs.z + rhs.z,
        };
    }

    pub fn len(x: f32, y: f32, z: f32) f32 {
        return sqrt(x * x + y * y + z * z);
    }
    pub fn len3(self: *Vec3) f32 {
        return sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
    }
};

test "vec3" {
    var a = Vec3{};
    var b = Vec3{ .x = 1.0, .y = 1.0, .z = 1.0 };

    var result = Vec3.add(&a, &b);
    std.debug.assert(result.x == 1.0 and result.y == 1.0 and result.z == 1.0);

    var c = Vec3{ .x = 2.0, .y = 2.0, .z = 2.0 };
    result = Vec3.add(&a, &c);
    std.debug.assert(result.x == 2.0 and result.y == 2.0 and result.z == 2.0);
}

pub const Quat = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,
    w: f32 = 1.0,

    pub fn normalize(self: *Quat) void {
        const invMagnitude: f32 = 1.0 / sqrt(self.x * self.x + self.y * self.y + self.z * self.z + self.w * self.w);
        self.x *= invMagnitude;
        self.y *= invMagnitude;
        self.z *= invMagnitude;
        self.w *= invMagnitude;
    }

    pub fn from_axis(x: f32, y: f32, z: f32, rad: f32) Quat {
        var d = Vec3.len(x, y, z);

        if (d == 0.0) return Quat{};
        d = 1.0 / d;
        //float l_ang = rad < 0 ? Mathf::PI2() - (std::fmod(-rad, Mathf::PI2())) : std::fmod(rad, Mathf::PI2());
        const l_ang = if (rad < 0) PI2 - (f_mod(-rad, PI2)) else f_mod(rad, PI2);

        const l_sin = sin(l_ang / 2);
        const l_cos = cos(l_ang / 2);

        var ret = Quat{};
        ret.x = d * x * l_sin;
        ret.y = d * y * l_sin;
        ret.z = d * z * l_sin;
        ret.w = l_cos;

        ret.normalize();

        return ret;
    }
};

pub const Mat4 = struct {
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

    pub fn set(self: *Mat4, translation: Vec3, rotation: Quat, scale: Vec3) void {
        const xs = rotation.x * 2.0;
        const ys = rotation.y * 2.0;
        const zs = rotation.z * 2.0;
        const wx = rotation.w * xs;
        const wy = rotation.w * ys;
        const wz = rotation.w * zs;
        const xx = rotation.x * xs;
        const xy = rotation.x * ys;
        const xz = rotation.x * zs;
        const yy = rotation.y * ys;
        const yz = rotation.y * zs;
        const zz = rotation.z * zs;

        self.m00 = scale.x * (1.0 - (yy + zz));
        self.m01 = scale.y * (xy - wz);
        self.m02 = scale.z * (xz + wy);
        self.m03 = translation.x;

        self.m10 = scale.x * (xy + wz);
        self.m11 = scale.y * (1.0 - (xx + zz));
        self.m12 = scale.z * (yz - wx);
        self.m13 = translation.y;

        self.m20 = scale.x * (xz - wy);
        self.m21 = scale.y * (yz + wx);
        self.m22 = scale.z * (1.0 - (xx + yy));
        self.m23 = translation.z;

        self.m30 = 0.0;
        self.m31 = 0.0;
        self.m32 = 0.0;
        self.m33 = 1.0;
    }

    pub fn create_translation(position: Vec3) Mat4 {
        var ret = Mat4{};
        ret.m03 = position.x;
        ret.m13 = position.y;
        ret.m23 = position.z;
        return ret;
    }

    pub fn create_projection(near: f32, far: f32, fov: f32, aspect_ratio: f32) Mat4 {
        var ret = Mat4{};

        //const l_fd: f32 = @divFloor(1.0, tan(@divFloor((fov * (@divFloor(PI, 180))), 2.0)));
        //const l_a1: f32 = @divFloor((far + near), (near - far));
        //const l_a2: f32 = @divFloor((2 * far * near), (near - far));

        const l_fd: f32 = (1.0 / tan(((fov * ((PI / 180))) / 2.0)));
        const l_a1: f32 = ((far + near) / (near - far));
        const l_a2: f32 = ((2 * far * near) / (near - far));

        ret.m00 = l_fd / aspect_ratio;
        ret.m10 = 0;
        ret.m20 = 0;
        ret.m30 = 0;
        ret.m01 = 0;
        ret.m11 = l_fd;
        ret.m21 = 0;
        ret.m31 = 0;
        ret.m02 = 0;
        ret.m12 = 0;
        ret.m22 = l_a1;
        ret.m32 = -1;
        ret.m03 = 0;
        ret.m13 = 0;
        ret.m23 = l_a2;
        ret.m33 = 0;
        return ret;
    }

    pub fn create_look_at(position: Vec3, target: Vec3, up: Vec3) Mat4 {
        return .{};
    }

    pub fn create_look_at2(direction: Vec3, up: Vec3) Mat4 {
        var l_vez = direction.nor();
        var l_vex = direction.nor();

        l_vex = l_vex.crs(up).nor();
        var l_vey = l_vex.crs(l_vez).nor();

        var ret = Mat4{};
        ret.m00 = l_vex.x;
        ret.m01 = l_vex.y;
        ret.m02 = l_vex.z;
        ret.m10 = l_vey.x;
        ret.m11 = l_vey.y;
        ret.m12 = l_vey.z;
        ret.m20 = -l_vez.x;
        ret.m21 = -l_vez.y;
        ret.m22 = -l_vez.z;

        return ret;
    }

    pub fn create(translation: Vec3, rotation: Quat, scale: Vec3) Mat4 {
        const xs: f32 = rotation.x * 2.0;
        const ys: f32 = rotation.y * 2.0;
        const zs: f32 = rotation.z * 2.0;
        const wx: f32 = rotation.w * xs;
        const wy: f32 = rotation.w * ys;
        const wz: f32 = rotation.w * zs;
        const xx: f32 = rotation.x * xs;
        const xy: f32 = rotation.x * ys;
        const xz: f32 = rotation.x * zs;
        const yy: f32 = rotation.y * ys;
        const yz: f32 = rotation.y * zs;
        const zz: f32 = rotation.z * zs;

        var ret = Mat4{};
        ret.m00 = scale.x * (1.0 - (yy + zz));
        ret.m01 = scale.y * (xy - wz);
        ret.m02 = scale.z * (xz + wy);
        ret.m03 = translation.x;

        ret.m10 = scale.x * (xy + wz);
        ret.m11 = scale.y * (1.0 - (xx + zz));
        ret.m12 = scale.z * (yz - wx);
        ret.m13 = translation.y;

        ret.m20 = scale.x * (xz - wy);
        ret.m21 = scale.y * (yz + wx);
        ret.m22 = scale.z * (1.0 - (xx + yy));
        ret.m23 = translation.z;

        ret.m30 = 0.0;
        ret.m31 = 0.0;
        ret.m32 = 0.0;
        ret.m33 = 1.0;
        return ret;
    }
};

pub const Color = struct {
    r: f32 = 0.0,
    g: f32 = 0.0,
    b: f32 = 0.0,
    a: f32 = 0.0,
};
