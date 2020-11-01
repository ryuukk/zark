const std = @import("std");

pub const PI: f32 = @floatCast(f32, std.math.pi);
pub const PI2: f32 = PI * 2;

pub inline fn f_mod(a: f32, b: f32) f32 {
    return @mod(a, b);
    //return std.math.mod(f32, a, b); // TODO: double check
}

pub inline fn sign(value: f32) i32 {
    return if (value > 0.0) @as(i32,1) else (if (value < 0.0) @as(i32,-1) else 0);
}

pub inline fn sqrt(value: f32) f32 {
    return std.math.sqrt(value);
}

pub inline fn abs(value: anytype) @TypeOf(value) {
    return std.math.fabs(value);
}

pub inline fn sin(rad: anytype) @TypeOf(rad) {
    return std.math.sin(rad);
}

pub inline fn cos(rad: anytype) @TypeOf(rad) {
    return std.math.cos(rad);
}

pub inline fn atan2(y: f32, x: f32) f32 {
    return std.math.atan2(f32, y, x);
}

pub inline fn tan(x: anytype) @TypeOf(x) {
    return std.math.tan(x);
}

pub inline fn max(a: anytype, b: anytype) @TypeOf(a, b) {
    return std.math.max( a, b);
}

pub const Vec2 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,

    pub fn set(x: f32, y: f32) Vec2 {
        return .{.x = x, .y = y};
    }
};

pub const Vec3 = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,

    pub fn set(x: f32, y: f32, z: f32) Vec3 {
        return .{.x = x, .y = y, .z = z};
    }

    pub fn len2(self: *const Vec3) f32 {
        return self.x * self.x + self.y * self.y + self.z * self.z;
    }

    pub fn nor(self: *const Vec3) Vec3 {
        const l = self.len2();
        if (l == 0.0 or l == 1.0)
            return Vec3.set(self.x, self.y, self.z);

        const scalar = 1.0 / sqrt(l);

        return Vec3.set(self.x, self.y, self.z).sclf(scalar);
    }

    pub fn crs(self: *const Vec3, vector: *const Vec3) Vec3 {
        return Vec3.set( 
            self.y * vector.z - self.z * vector.y,
            self.z * vector.x - self.x * vector.z,
            self.x * vector.y - self.y * vector.x 
            );
    }

    pub fn add(lhs: *const Vec3, rhs: *const Vec3) Vec3 {
        return .{
            .x = lhs.x + rhs.x,
            .y = lhs.y + rhs.y,
            .z = lhs.z + rhs.z,
        };
    }
    pub fn sub(lhs: *const Vec3, rhs: *const Vec3) Vec3 {
        return .{
            .x = lhs.x - rhs.x,
            .y = lhs.y - rhs.y,
            .z = lhs.z - rhs.z,
        };
    }
    pub fn scl(lhs: *const Vec3, rhs: *const Vec3) Vec3 {
        return .{
            .x = lhs.x * rhs.x,
            .y = lhs.y * rhs.y,
            .z = lhs.z * rhs.z,
        };
    }
    pub fn div(lhs: *const Vec3, rhs: *const Vec3) Vec3 {
        return .{
            .x = lhs.x / rhs.x,
            .y = lhs.y / rhs.y,
            .z = lhs.z / rhs.z,
        };
    }

    
    pub fn addf(lhs: *const Vec3, rhs: f32) Vec3 {
        return .{
            .x = lhs.x + rhs,
            .y = lhs.y + rhs,
            .z = lhs.z + rhs,
        };
    }
    pub fn subf(lhs: *const Vec3, rhs: f32) Vec3 {
        return .{
            .x = lhs.x - rhs,
            .y = lhs.y - rhs,
            .z = lhs.z - rhs,
        };
    }
    pub fn sclf(lhs: *const Vec3, rhs: f32) Vec3 {
        return .{
            .x = lhs.x * rhs,
            .y = lhs.y * rhs,
            .z = lhs.z * rhs,
        };
    }
    pub fn divf(lhs: *const Vec3, rhs: f32) Vec3 {
        return .{
            .x = lhs.x / rhs,
            .y = lhs.y / rhs,
            .z = lhs.z / rhs,
        };
    }

    pub inline fn len(x: f32, y: f32, z: f32) f32 {
        return sqrt(x * x + y * y + z * z);
    }

    pub inline fn len3(self: *Vec3) f32 {
        return sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
    }
    
    pub fn cross(lhs: *const Vec3, rhs: *const Vec3) Vec3
    {
        return Vec3.set(
            lhs.y * rhs.z - lhs.z * rhs.y,
            lhs.z * rhs.x - lhs.x * rhs.z,
            lhs.x * rhs.y - lhs.y * rhs.x
        );
    }

    pub fn rotate(lhs: *const Vec3, axis: *const Vec3, angle: f32) Vec3{
        const rotation = Quat.from_axis(axis, angle);
        const matrix = Mat4.set(
            &Vec3.set(0, 0, 0),
            &Quat.set(rotation.x, rotation.y, rotation.z, rotation.w), 
            &Vec3.set(1,1,1)
        );

        return transform(lhs, &matrix);
    }

    pub fn transform(lhs: *const Vec3, matrix: *const Mat4) Vec3 {
        const inv_w = 1.0 / (lhs.x * matrix.m30 + lhs.y * matrix.m31 + lhs.z
                * matrix.m32 + matrix.m33);
        return Vec3.set(
        (lhs.x * matrix.m00 + lhs.y * matrix.m01 + lhs.z * matrix.m02 + matrix.m03) * inv_w,
        (lhs.x * matrix.m10 + lhs.y * matrix.m11 + lhs.z * matrix.m12 + matrix.m13) * inv_w,
        (lhs.x * matrix.m20 + lhs.y * matrix.m21 + lhs.z * matrix.m22 + matrix.m23) * inv_w,
        );
    }
};

test "vec3.simple" {
    var a = Vec3.set(0.0, 0.0, 0.0);
    var b = Vec3.set(1.0, 1.0, 1.0);

    var result = Vec3.add(&a, &b);
    std.debug.assert(result.x == 1.0 and result.y == 1.0 and result.z == 1.0);

    var c = Vec3.set(2.0, 2.0, 2.0);
    result = Vec3.add(&a, &c);
    std.debug.assert(result.x == 2.0 and result.y == 2.0 and result.z == 2.0);
}
test "vec3.other" {

    var a = Vec3.set(0.0, 0.0, 0.0);
    var b = Vec3.set(1.0, 1.0, 1.0);
    const velocity = 10.0;
    const dt = 0.16;


    _ = a.add( &b.nor().sclf(velocity * dt) );
}

pub const Quat = struct {
    x: f32 = 0.0,
    y: f32 = 0.0,
    z: f32 = 0.0,
    w: f32 = 1.0,

    pub inline fn identity() Quat {
        return .{.x = 0, .y = 0, .z = 0, .w = 1.0};
    }

    pub inline fn set(x: f32, y: f32, z: f32, w: f32) Quat {
        return .{.x = x, .y = y, .w = w};
    }

    pub inline fn normalize(self: *Quat) void {
        const invMagnitude: f32 = 1.0 / sqrt(self.x * self.x + self.y * self.y + self.z * self.z + self.w * self.w);
        self.x *= invMagnitude;
        self.y *= invMagnitude;
        self.z *= invMagnitude;
        self.w *= invMagnitude;
    }

    pub inline fn from_axis(axis: *const Vec3, rad: f32) Quat {
        return from_axisf(axis.x, axis.y, axis.z, rad);
    }
    pub inline fn from_axisf(x: f32, y: f32, z: f32, rad: f32) Quat {
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

    pub inline fn identity() Mat4 {
        return .{
            .m00 = 1.0,
            .m10 = 0.0,
            .m20 = 0.0,
            .m30 = 0.0,
            .m01 = 0.0,
            .m11 = 1.0,
            .m21 = 0.0,
            .m31 = 0.0,
            .m02 = 0.0,
            .m12 = 0.0,
            .m22 = 1.0,
            .m32 = 0.0,
            .m03 = 0.0,
            .m13 = 0.0,
            .m23 = 0.0,
            .m33 = 1.0,
        };
    }

    pub inline fn set(translation: *const Vec3, rotation: *const Quat, scale: *const Vec3) Mat4 {
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

    pub inline fn create_translation(position: *const Vec3) Mat4 {
        var ret = Mat4{};
        ret.m03 = position.x;
        ret.m13 = position.y;
        ret.m23 = position.z;
        return ret;
    }

    pub inline fn create_projection(near: f32, far: f32, fov: f32, aspect_ratio: f32) Mat4 {
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

    pub inline fn create_look_at(position: *const Vec3, target: *const Vec3, up: *const Vec3) Mat4 {
        var tmp = target.sub(position);

        var ret = create_look_at2(&tmp, up).scl(&create_translation(&position.sclf(-1)));

        return ret;
    }

    pub inline fn create_look_at2(direction: *const Vec3, up: *const Vec3) Mat4 {
        var l_vez = direction.nor();
        var l_vex = direction.nor();

        l_vex = l_vex.crs(up).nor();
        var l_vey = l_vex.crs(&l_vez).nor();

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

    pub inline fn create(translation: Vec3, rotation: Quat, scale: Vec3) Mat4 {
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

    pub inline fn scl(self: *const Mat4, rhs: *const Mat4) Mat4 {
        return .{
                    .m00 = self.m00 * rhs.m00 + self.m01 * rhs.m10 + self.m02 * rhs.m20 + self.m03 * rhs.m30,
                    .m10 = self.m10 * rhs.m00 + self.m11 * rhs.m10 + self.m12 * rhs.m20 + self.m13 * rhs.m30,
                    .m20 = self.m20 * rhs.m00 + self.m21 * rhs.m10 + self.m22 * rhs.m20 + self.m23 * rhs.m30,
                    .m30 = self.m30 * rhs.m00 + self.m31 * rhs.m10 + self.m32 * rhs.m20 + self.m33 * rhs.m30,

                    .m01 = self.m00 * rhs.m01 + self.m01 * rhs.m11 + self.m02 * rhs.m21 + self.m03 * rhs.m31,
                    .m11 = self.m10 * rhs.m01 + self.m11 * rhs.m11 + self.m12 * rhs.m21 + self.m13 * rhs.m31,
                    .m21 = self.m20 * rhs.m01 + self.m21 * rhs.m11 + self.m22 * rhs.m21 + self.m23 * rhs.m31,
                    .m31 = self.m30 * rhs.m01 + self.m31 * rhs.m11 + self.m32 * rhs.m21 + self.m33 * rhs.m31,

                    .m02 = self.m00 * rhs.m02 + self.m01 * rhs.m12 + self.m02 * rhs.m22 + self.m03 * rhs.m32,
                    .m12 = self.m10 * rhs.m02 + self.m11 * rhs.m12 + self.m12 * rhs.m22 + self.m13 * rhs.m32,
                    .m22 = self.m20 * rhs.m02 + self.m21 * rhs.m12 + self.m22 * rhs.m22 + self.m23 * rhs.m32,
                    .m32 = self.m30 * rhs.m02 + self.m31 * rhs.m12 + self.m32 * rhs.m22 + self.m33 * rhs.m32,

                    .m03 = self.m00 * rhs.m03 + self.m01 * rhs.m13 + self.m02 * rhs.m23 + self.m03 * rhs.m33,
                    .m13 = self.m10 * rhs.m03 + self.m11 * rhs.m13 + self.m12 * rhs.m23 + self.m13 * rhs.m33,
                    .m23 = self.m20 * rhs.m03 + self.m21 * rhs.m13 + self.m22 * rhs.m23 + self.m23 * rhs.m33,
                    .m33 = self.m30 * rhs.m03 + self.m31 * rhs.m13 + self.m32 * rhs.m23 + self.m33 * rhs.m33

           
        };
    }
};

pub const Color = struct {
    r: f32 = 0.0,
    g: f32 = 0.0,
    b: f32 = 0.0,
    a: f32 = 0.0,
};
