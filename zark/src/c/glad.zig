 pub usingnamespace @cImport({
     @cInclude("glad/glad.h");
 });
 

pub const PrimitiveType = enum(c_uint) {
    TRIANGLE = GL_TRIANGLES,
};

 
// pub const struct_gladGLversionStruct = extern struct {
//     major: c_int,
//     minor: c_int,
// };
// // pub const GLADloadproc = ?extern fn ([*c]const u8) ?*c_void;
// pub const GLADloadproc = ?extern fn ([*c]const u8) ?extern fn () void;
// pub extern var GLVersion: struct_gladGLversionStruct;
// pub extern fn gladLoadGLLoader(arg0: GLADloadproc) c_int;
// pub const va_list = [*c]u8;
// pub extern fn __va_start(arg0: [*c]([*c]u8), ...) void;
// pub const ptrdiff_t = c_longlong;
// pub const __vcrt_bool = bool;
// pub const wchar_t = c_ushort;
// pub extern fn __security_init_cookie() void;
// pub extern fn __security_check_cookie(_StackCookie: usize) void;
// pub extern fn __report_gsfailure(_StackCookie: usize) noreturn;
// pub extern var __security_cookie: usize;
// pub const int_least8_t = i8;
// pub const int_least16_t = c_short;
// pub const int_least32_t = c_int;
// pub const int_least64_t = c_longlong;
// pub const uint_least8_t = u8;
// pub const uint_least16_t = c_ushort;
// pub const uint_least32_t = c_uint;
// pub const uint_least64_t = c_ulonglong;
// pub const int_fast8_t = i8;
// pub const int_fast16_t = c_int;
// pub const int_fast32_t = c_int;
// pub const int_fast64_t = c_longlong;
// pub const uint_fast8_t = u8;
// pub const uint_fast16_t = c_uint;
// pub const uint_fast32_t = c_uint;
// pub const uint_fast64_t = c_ulonglong;
// pub const intmax_t = c_longlong;
// pub const uintmax_t = c_ulonglong;
// pub const khronos_int32_t = i32;
// pub const khronos_uint32_t = u32;
// pub const khronos_int64_t = i64;
// pub const khronos_uint64_t = u64;
// pub const khronos_int8_t = i8;
// pub const khronos_uint8_t = u8;
// pub const khronos_int16_t = c_short;
// pub const khronos_uint16_t = c_ushort;
// pub const khronos_intptr_t = c_longlong;
// pub const khronos_uintptr_t = c_ulonglong;
// pub const khronos_ssize_t = c_longlong;
// pub const khronos_usize_t = c_ulonglong;
// pub const khronos_float_t = f32;
// pub const khronos_utime_nanoseconds_t = khronos_uint64_t;
// pub const khronos_stime_nanoseconds_t = khronos_int64_t;
// pub const KHRONOS_FALSE = 0;
// pub const KHRONOS_TRUE = 1;
// pub const KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 2147483647;
// pub const khronos_boolean_enum_t = extern enum {
//     KHRONOS_FALSE = 0,
//     KHRONOS_TRUE = 1,
//     KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 2147483647,
// };
// pub const GLenum = c_uint;
// pub const GLboolean = u8;
// pub const GLbitfield = c_uint;
// pub const GLvoid = c_void;
// pub const GLbyte = khronos_int8_t;
// pub const GLubyte = khronos_uint8_t;
// pub const GLshort = khronos_int16_t;
// pub const GLushort = khronos_uint16_t;
// pub const GLint = c_int;
// pub const GLuint = c_uint;
// pub const GLclampx = khronos_int32_t;
// pub const GLsizei = c_int;
// pub const GLfloat = khronos_float_t;
// pub const GLclampf = khronos_float_t;
// pub const GLdouble = f64;
// pub const GLclampd = f64;
// pub const GLeglClientBufferEXT = ?*c_void;
// pub const GLeglImageOES = ?*c_void;
// pub const GLchar = u8;
// pub const GLcharARB = u8;
// pub const GLhandleARB = c_uint;
// pub const GLhalf = khronos_uint16_t;
// pub const GLhalfARB = khronos_uint16_t;
// pub const GLfixed = khronos_int32_t;
// pub const GLintptr = khronos_intptr_t;
// pub const GLintptrARB = khronos_intptr_t;
// pub const GLsizeiptr = khronos_ssize_t;
// pub const GLsizeiptrARB = khronos_ssize_t;
// pub const GLint64 = khronos_int64_t;
// pub const GLint64EXT = khronos_int64_t;
// pub const GLuint64 = khronos_uint64_t;
// pub const GLuint64EXT = khronos_uint64_t;
// pub const struct___GLsync = @OpaqueType();
// pub const GLsync = ?*struct___GLsync;
// pub const struct__cl_context = @OpaqueType();
// pub const struct__cl_event = @OpaqueType();
// pub const GLDEBUGPROC = ?extern fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const c_void) void;
// pub const GLDEBUGPROCARB = ?extern fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const c_void) void;
// pub const GLDEBUGPROCKHR = ?extern fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar, ?*const c_void) void;
// pub const GLDEBUGPROCAMD = ?extern fn (GLuint, GLenum, GLenum, GLsizei, [*c]const GLchar, ?*c_void) void;
// pub const GLhalfNV = c_ushort;
// pub const GLvdpauSurfaceNV = GLintptr;
// pub const GLVULKANPROCNV = ?extern fn () void;
// pub extern var GLAD_GL_VERSION_1_0: c_int;
// pub const PFNGLCULLFACEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glCullFace: PFNGLCULLFACEPROC;
// pub const PFNGLFRONTFACEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glFrontFace: PFNGLFRONTFACEPROC;
// pub const PFNGLHINTPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glHint: PFNGLHINTPROC;
// pub const PFNGLLINEWIDTHPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glLineWidth: PFNGLLINEWIDTHPROC;
// pub const PFNGLPOINTSIZEPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glPointSize: PFNGLPOINTSIZEPROC;
// pub const PFNGLPOLYGONMODEPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glPolygonMode: PFNGLPOLYGONMODEPROC;
// pub const PFNGLSCISSORPROC = ?extern fn (GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glScissor: PFNGLSCISSORPROC;
// pub const PFNGLTEXPARAMETERFPROC = ?extern fn (GLenum, GLenum, GLfloat) void;
// pub extern var glad_glTexParameterf: PFNGLTEXPARAMETERFPROC;
// pub const PFNGLTEXPARAMETERFVPROC = ?extern fn (GLenum, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glTexParameterfv: PFNGLTEXPARAMETERFVPROC;
// pub const PFNGLTEXPARAMETERIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glTexParameteri: PFNGLTEXPARAMETERIPROC;
// pub const PFNGLTEXPARAMETERIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glTexParameteriv: PFNGLTEXPARAMETERIVPROC;
// pub const PFNGLTEXIMAGE1DPROC = ?extern fn (GLenum, GLint, GLint, GLsizei, GLint, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexImage1D: PFNGLTEXIMAGE1DPROC;
// pub const PFNGLTEXIMAGE2DPROC = ?extern fn (GLenum, GLint, GLint, GLsizei, GLsizei, GLint, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexImage2D: PFNGLTEXIMAGE2DPROC;
// pub const PFNGLDRAWBUFFERPROC = ?extern fn (GLenum) void;
// pub extern var glad_glDrawBuffer: PFNGLDRAWBUFFERPROC;
// pub const PFNGLCLEARPROC = ?extern fn (GLbitfield) void;
// pub extern var glad_glClear: PFNGLCLEARPROC;
// pub const PFNGLCLEARCOLORPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glClearColor: PFNGLCLEARCOLORPROC;
// pub const PFNGLCLEARSTENCILPROC = ?extern fn (GLint) void;
// pub extern var glad_glClearStencil: PFNGLCLEARSTENCILPROC;
// pub const PFNGLCLEARDEPTHPROC = ?extern fn (GLdouble) void;
// pub extern var glad_glClearDepth: PFNGLCLEARDEPTHPROC;
// pub const PFNGLSTENCILMASKPROC = ?extern fn (GLuint) void;
// pub extern var glad_glStencilMask: PFNGLSTENCILMASKPROC;
// pub const PFNGLCOLORMASKPROC = ?extern fn (GLboolean, GLboolean, GLboolean, GLboolean) void;
// pub extern var glad_glColorMask: PFNGLCOLORMASKPROC;
// pub const PFNGLDEPTHMASKPROC = ?extern fn (GLboolean) void;
// pub extern var glad_glDepthMask: PFNGLDEPTHMASKPROC;
// pub const PFNGLDISABLEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glDisable: PFNGLDISABLEPROC;
// pub const PFNGLENABLEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glEnable: PFNGLENABLEPROC;
// pub const PFNGLFINISHPROC = ?extern fn () void;
// pub extern var glad_glFinish: PFNGLFINISHPROC;
// pub const PFNGLFLUSHPROC = ?extern fn () void;
// pub extern var glad_glFlush: PFNGLFLUSHPROC;
// pub const PFNGLBLENDFUNCPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glBlendFunc: PFNGLBLENDFUNCPROC;
// pub const PFNGLLOGICOPPROC = ?extern fn (GLenum) void;
// pub extern var glad_glLogicOp: PFNGLLOGICOPPROC;
// pub const PFNGLSTENCILFUNCPROC = ?extern fn (GLenum, GLint, GLuint) void;
// pub extern var glad_glStencilFunc: PFNGLSTENCILFUNCPROC;
// pub const PFNGLSTENCILOPPROC = ?extern fn (GLenum, GLenum, GLenum) void;
// pub extern var glad_glStencilOp: PFNGLSTENCILOPPROC;
// pub const PFNGLDEPTHFUNCPROC = ?extern fn (GLenum) void;
// pub extern var glad_glDepthFunc: PFNGLDEPTHFUNCPROC;
// pub const PFNGLPIXELSTOREFPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glPixelStoref: PFNGLPIXELSTOREFPROC;
// pub const PFNGLPIXELSTOREIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glPixelStorei: PFNGLPIXELSTOREIPROC;
// pub const PFNGLREADBUFFERPROC = ?extern fn (GLenum) void;
// pub extern var glad_glReadBuffer: PFNGLREADBUFFERPROC;
// pub const PFNGLREADPIXELSPROC = ?extern fn (GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*c_void) void;
// pub extern var glad_glReadPixels: PFNGLREADPIXELSPROC;
// pub const PFNGLGETBOOLEANVPROC = ?extern fn (GLenum, [*c]GLboolean) void;
// pub extern var glad_glGetBooleanv: PFNGLGETBOOLEANVPROC;
// pub const PFNGLGETDOUBLEVPROC = ?extern fn (GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetDoublev: PFNGLGETDOUBLEVPROC;
// pub const PFNGLGETERRORPROC = ?extern fn () GLenum;
// pub extern var glad_glGetError: PFNGLGETERRORPROC;
// pub const PFNGLGETFLOATVPROC = ?extern fn (GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetFloatv: PFNGLGETFLOATVPROC;
// pub const PFNGLGETINTEGERVPROC = ?extern fn (GLenum, [*c]GLint) void;
// pub extern var glad_glGetIntegerv: PFNGLGETINTEGERVPROC;
// pub const PFNGLGETSTRINGPROC = ?extern fn (GLenum) [*c]const GLubyte;
// pub extern var glad_glGetString: PFNGLGETSTRINGPROC;
// pub const PFNGLGETTEXIMAGEPROC = ?extern fn (GLenum, GLint, GLenum, GLenum, ?*c_void) void;
// pub extern var glad_glGetTexImage: PFNGLGETTEXIMAGEPROC;
// pub const PFNGLGETTEXPARAMETERFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTexParameterfv: PFNGLGETTEXPARAMETERFVPROC;
// pub const PFNGLGETTEXPARAMETERIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTexParameteriv: PFNGLGETTEXPARAMETERIVPROC;
// pub const PFNGLGETTEXLEVELPARAMETERFVPROC = ?extern fn (GLenum, GLint, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTexLevelParameterfv: PFNGLGETTEXLEVELPARAMETERFVPROC;
// pub const PFNGLGETTEXLEVELPARAMETERIVPROC = ?extern fn (GLenum, GLint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTexLevelParameteriv: PFNGLGETTEXLEVELPARAMETERIVPROC;
// pub const PFNGLISENABLEDPROC = ?extern fn (GLenum) GLboolean;
// pub extern var glad_glIsEnabled: PFNGLISENABLEDPROC;
// pub const PFNGLDEPTHRANGEPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glDepthRange: PFNGLDEPTHRANGEPROC;
// pub const PFNGLVIEWPORTPROC = ?extern fn (GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glViewport: PFNGLVIEWPORTPROC;
// pub const PFNGLNEWLISTPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glNewList: PFNGLNEWLISTPROC;
// pub const PFNGLENDLISTPROC = ?extern fn () void;
// pub extern var glad_glEndList: PFNGLENDLISTPROC;
// pub const PFNGLCALLLISTPROC = ?extern fn (GLuint) void;
// pub extern var glad_glCallList: PFNGLCALLLISTPROC;
// pub const PFNGLCALLLISTSPROC = ?extern fn (GLsizei, GLenum, ?*const c_void) void;
// pub extern var glad_glCallLists: PFNGLCALLLISTSPROC;
// pub const PFNGLDELETELISTSPROC = ?extern fn (GLuint, GLsizei) void;
// pub extern var glad_glDeleteLists: PFNGLDELETELISTSPROC;
// pub const PFNGLGENLISTSPROC = ?extern fn (GLsizei) GLuint;
// pub extern var glad_glGenLists: PFNGLGENLISTSPROC;
// pub const PFNGLLISTBASEPROC = ?extern fn (GLuint) void;
// pub extern var glad_glListBase: PFNGLLISTBASEPROC;
// pub const PFNGLBEGINPROC = ?extern fn (GLenum) void;
// pub extern var glad_glBegin: PFNGLBEGINPROC;
// pub const PFNGLBITMAPPROC = ?extern fn (GLsizei, GLsizei, GLfloat, GLfloat, GLfloat, GLfloat, [*c]const GLubyte) void;
// pub extern var glad_glBitmap: PFNGLBITMAPPROC;
// pub const PFNGLCOLOR3BPROC = ?extern fn (GLbyte, GLbyte, GLbyte) void;
// pub extern var glad_glColor3b: PFNGLCOLOR3BPROC;
// pub const PFNGLCOLOR3BVPROC = ?extern fn ([*c]const GLbyte) void;
// pub extern var glad_glColor3bv: PFNGLCOLOR3BVPROC;
// pub const PFNGLCOLOR3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glColor3d: PFNGLCOLOR3DPROC;
// pub const PFNGLCOLOR3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glColor3dv: PFNGLCOLOR3DVPROC;
// pub const PFNGLCOLOR3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glColor3f: PFNGLCOLOR3FPROC;
// pub const PFNGLCOLOR3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glColor3fv: PFNGLCOLOR3FVPROC;
// pub const PFNGLCOLOR3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glColor3i: PFNGLCOLOR3IPROC;
// pub const PFNGLCOLOR3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glColor3iv: PFNGLCOLOR3IVPROC;
// pub const PFNGLCOLOR3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glColor3s: PFNGLCOLOR3SPROC;
// pub const PFNGLCOLOR3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glColor3sv: PFNGLCOLOR3SVPROC;
// pub const PFNGLCOLOR3UBPROC = ?extern fn (GLubyte, GLubyte, GLubyte) void;
// pub extern var glad_glColor3ub: PFNGLCOLOR3UBPROC;
// pub const PFNGLCOLOR3UBVPROC = ?extern fn ([*c]const GLubyte) void;
// pub extern var glad_glColor3ubv: PFNGLCOLOR3UBVPROC;
// pub const PFNGLCOLOR3UIPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glColor3ui: PFNGLCOLOR3UIPROC;
// pub const PFNGLCOLOR3UIVPROC = ?extern fn ([*c]const GLuint) void;
// pub extern var glad_glColor3uiv: PFNGLCOLOR3UIVPROC;
// pub const PFNGLCOLOR3USPROC = ?extern fn (GLushort, GLushort, GLushort) void;
// pub extern var glad_glColor3us: PFNGLCOLOR3USPROC;
// pub const PFNGLCOLOR3USVPROC = ?extern fn ([*c]const GLushort) void;
// pub extern var glad_glColor3usv: PFNGLCOLOR3USVPROC;
// pub const PFNGLCOLOR4BPROC = ?extern fn (GLbyte, GLbyte, GLbyte, GLbyte) void;
// pub extern var glad_glColor4b: PFNGLCOLOR4BPROC;
// pub const PFNGLCOLOR4BVPROC = ?extern fn ([*c]const GLbyte) void;
// pub extern var glad_glColor4bv: PFNGLCOLOR4BVPROC;
// pub const PFNGLCOLOR4DPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glColor4d: PFNGLCOLOR4DPROC;
// pub const PFNGLCOLOR4DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glColor4dv: PFNGLCOLOR4DVPROC;
// pub const PFNGLCOLOR4FPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glColor4f: PFNGLCOLOR4FPROC;
// pub const PFNGLCOLOR4FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glColor4fv: PFNGLCOLOR4FVPROC;
// pub const PFNGLCOLOR4IPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glColor4i: PFNGLCOLOR4IPROC;
// pub const PFNGLCOLOR4IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glColor4iv: PFNGLCOLOR4IVPROC;
// pub const PFNGLCOLOR4SPROC = ?extern fn (GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glColor4s: PFNGLCOLOR4SPROC;
// pub const PFNGLCOLOR4SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glColor4sv: PFNGLCOLOR4SVPROC;
// pub const PFNGLCOLOR4UBPROC = ?extern fn (GLubyte, GLubyte, GLubyte, GLubyte) void;
// pub extern var glad_glColor4ub: PFNGLCOLOR4UBPROC;
// pub const PFNGLCOLOR4UBVPROC = ?extern fn ([*c]const GLubyte) void;
// pub extern var glad_glColor4ubv: PFNGLCOLOR4UBVPROC;
// pub const PFNGLCOLOR4UIPROC = ?extern fn (GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glColor4ui: PFNGLCOLOR4UIPROC;
// pub const PFNGLCOLOR4UIVPROC = ?extern fn ([*c]const GLuint) void;
// pub extern var glad_glColor4uiv: PFNGLCOLOR4UIVPROC;
// pub const PFNGLCOLOR4USPROC = ?extern fn (GLushort, GLushort, GLushort, GLushort) void;
// pub extern var glad_glColor4us: PFNGLCOLOR4USPROC;
// pub const PFNGLCOLOR4USVPROC = ?extern fn ([*c]const GLushort) void;
// pub extern var glad_glColor4usv: PFNGLCOLOR4USVPROC;
// pub const PFNGLEDGEFLAGPROC = ?extern fn (GLboolean) void;
// pub extern var glad_glEdgeFlag: PFNGLEDGEFLAGPROC;
// pub const PFNGLEDGEFLAGVPROC = ?extern fn ([*c]const GLboolean) void;
// pub extern var glad_glEdgeFlagv: PFNGLEDGEFLAGVPROC;
// pub const PFNGLENDPROC = ?extern fn () void;
// pub extern var glad_glEnd: PFNGLENDPROC;
// pub const PFNGLINDEXDPROC = ?extern fn (GLdouble) void;
// pub extern var glad_glIndexd: PFNGLINDEXDPROC;
// pub const PFNGLINDEXDVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glIndexdv: PFNGLINDEXDVPROC;
// pub const PFNGLINDEXFPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glIndexf: PFNGLINDEXFPROC;
// pub const PFNGLINDEXFVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glIndexfv: PFNGLINDEXFVPROC;
// pub const PFNGLINDEXIPROC = ?extern fn (GLint) void;
// pub extern var glad_glIndexi: PFNGLINDEXIPROC;
// pub const PFNGLINDEXIVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glIndexiv: PFNGLINDEXIVPROC;
// pub const PFNGLINDEXSPROC = ?extern fn (GLshort) void;
// pub extern var glad_glIndexs: PFNGLINDEXSPROC;
// pub const PFNGLINDEXSVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glIndexsv: PFNGLINDEXSVPROC;
// pub const PFNGLNORMAL3BPROC = ?extern fn (GLbyte, GLbyte, GLbyte) void;
// pub extern var glad_glNormal3b: PFNGLNORMAL3BPROC;
// pub const PFNGLNORMAL3BVPROC = ?extern fn ([*c]const GLbyte) void;
// pub extern var glad_glNormal3bv: PFNGLNORMAL3BVPROC;
// pub const PFNGLNORMAL3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glNormal3d: PFNGLNORMAL3DPROC;
// pub const PFNGLNORMAL3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glNormal3dv: PFNGLNORMAL3DVPROC;
// pub const PFNGLNORMAL3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glNormal3f: PFNGLNORMAL3FPROC;
// pub const PFNGLNORMAL3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glNormal3fv: PFNGLNORMAL3FVPROC;
// pub const PFNGLNORMAL3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glNormal3i: PFNGLNORMAL3IPROC;
// pub const PFNGLNORMAL3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glNormal3iv: PFNGLNORMAL3IVPROC;
// pub const PFNGLNORMAL3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glNormal3s: PFNGLNORMAL3SPROC;
// pub const PFNGLNORMAL3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glNormal3sv: PFNGLNORMAL3SVPROC;
// pub const PFNGLRASTERPOS2DPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glRasterPos2d: PFNGLRASTERPOS2DPROC;
// pub const PFNGLRASTERPOS2DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glRasterPos2dv: PFNGLRASTERPOS2DVPROC;
// pub const PFNGLRASTERPOS2FPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glRasterPos2f: PFNGLRASTERPOS2FPROC;
// pub const PFNGLRASTERPOS2FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glRasterPos2fv: PFNGLRASTERPOS2FVPROC;
// pub const PFNGLRASTERPOS2IPROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glRasterPos2i: PFNGLRASTERPOS2IPROC;
// pub const PFNGLRASTERPOS2IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glRasterPos2iv: PFNGLRASTERPOS2IVPROC;
// pub const PFNGLRASTERPOS2SPROC = ?extern fn (GLshort, GLshort) void;
// pub extern var glad_glRasterPos2s: PFNGLRASTERPOS2SPROC;
// pub const PFNGLRASTERPOS2SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glRasterPos2sv: PFNGLRASTERPOS2SVPROC;
// pub const PFNGLRASTERPOS3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glRasterPos3d: PFNGLRASTERPOS3DPROC;
// pub const PFNGLRASTERPOS3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glRasterPos3dv: PFNGLRASTERPOS3DVPROC;
// pub const PFNGLRASTERPOS3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glRasterPos3f: PFNGLRASTERPOS3FPROC;
// pub const PFNGLRASTERPOS3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glRasterPos3fv: PFNGLRASTERPOS3FVPROC;
// pub const PFNGLRASTERPOS3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glRasterPos3i: PFNGLRASTERPOS3IPROC;
// pub const PFNGLRASTERPOS3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glRasterPos3iv: PFNGLRASTERPOS3IVPROC;
// pub const PFNGLRASTERPOS3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glRasterPos3s: PFNGLRASTERPOS3SPROC;
// pub const PFNGLRASTERPOS3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glRasterPos3sv: PFNGLRASTERPOS3SVPROC;
// pub const PFNGLRASTERPOS4DPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glRasterPos4d: PFNGLRASTERPOS4DPROC;
// pub const PFNGLRASTERPOS4DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glRasterPos4dv: PFNGLRASTERPOS4DVPROC;
// pub const PFNGLRASTERPOS4FPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glRasterPos4f: PFNGLRASTERPOS4FPROC;
// pub const PFNGLRASTERPOS4FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glRasterPos4fv: PFNGLRASTERPOS4FVPROC;
// pub const PFNGLRASTERPOS4IPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glRasterPos4i: PFNGLRASTERPOS4IPROC;
// pub const PFNGLRASTERPOS4IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glRasterPos4iv: PFNGLRASTERPOS4IVPROC;
// pub const PFNGLRASTERPOS4SPROC = ?extern fn (GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glRasterPos4s: PFNGLRASTERPOS4SPROC;
// pub const PFNGLRASTERPOS4SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glRasterPos4sv: PFNGLRASTERPOS4SVPROC;
// pub const PFNGLRECTDPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glRectd: PFNGLRECTDPROC;
// pub const PFNGLRECTDVPROC = ?extern fn ([*c]const GLdouble, [*c]const GLdouble) void;
// pub extern var glad_glRectdv: PFNGLRECTDVPROC;
// pub const PFNGLRECTFPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glRectf: PFNGLRECTFPROC;
// pub const PFNGLRECTFVPROC = ?extern fn ([*c]const GLfloat, [*c]const GLfloat) void;
// pub extern var glad_glRectfv: PFNGLRECTFVPROC;
// pub const PFNGLRECTIPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glRecti: PFNGLRECTIPROC;
// pub const PFNGLRECTIVPROC = ?extern fn ([*c]const GLint, [*c]const GLint) void;
// pub extern var glad_glRectiv: PFNGLRECTIVPROC;
// pub const PFNGLRECTSPROC = ?extern fn (GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glRects: PFNGLRECTSPROC;
// pub const PFNGLRECTSVPROC = ?extern fn ([*c]const GLshort, [*c]const GLshort) void;
// pub extern var glad_glRectsv: PFNGLRECTSVPROC;
// pub const PFNGLTEXCOORD1DPROC = ?extern fn (GLdouble) void;
// pub extern var glad_glTexCoord1d: PFNGLTEXCOORD1DPROC;
// pub const PFNGLTEXCOORD1DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glTexCoord1dv: PFNGLTEXCOORD1DVPROC;
// pub const PFNGLTEXCOORD1FPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glTexCoord1f: PFNGLTEXCOORD1FPROC;
// pub const PFNGLTEXCOORD1FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glTexCoord1fv: PFNGLTEXCOORD1FVPROC;
// pub const PFNGLTEXCOORD1IPROC = ?extern fn (GLint) void;
// pub extern var glad_glTexCoord1i: PFNGLTEXCOORD1IPROC;
// pub const PFNGLTEXCOORD1IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glTexCoord1iv: PFNGLTEXCOORD1IVPROC;
// pub const PFNGLTEXCOORD1SPROC = ?extern fn (GLshort) void;
// pub extern var glad_glTexCoord1s: PFNGLTEXCOORD1SPROC;
// pub const PFNGLTEXCOORD1SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glTexCoord1sv: PFNGLTEXCOORD1SVPROC;
// pub const PFNGLTEXCOORD2DPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glTexCoord2d: PFNGLTEXCOORD2DPROC;
// pub const PFNGLTEXCOORD2DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glTexCoord2dv: PFNGLTEXCOORD2DVPROC;
// pub const PFNGLTEXCOORD2FPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glTexCoord2f: PFNGLTEXCOORD2FPROC;
// pub const PFNGLTEXCOORD2FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glTexCoord2fv: PFNGLTEXCOORD2FVPROC;
// pub const PFNGLTEXCOORD2IPROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glTexCoord2i: PFNGLTEXCOORD2IPROC;
// pub const PFNGLTEXCOORD2IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glTexCoord2iv: PFNGLTEXCOORD2IVPROC;
// pub const PFNGLTEXCOORD2SPROC = ?extern fn (GLshort, GLshort) void;
// pub extern var glad_glTexCoord2s: PFNGLTEXCOORD2SPROC;
// pub const PFNGLTEXCOORD2SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glTexCoord2sv: PFNGLTEXCOORD2SVPROC;
// pub const PFNGLTEXCOORD3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glTexCoord3d: PFNGLTEXCOORD3DPROC;
// pub const PFNGLTEXCOORD3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glTexCoord3dv: PFNGLTEXCOORD3DVPROC;
// pub const PFNGLTEXCOORD3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glTexCoord3f: PFNGLTEXCOORD3FPROC;
// pub const PFNGLTEXCOORD3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glTexCoord3fv: PFNGLTEXCOORD3FVPROC;
// pub const PFNGLTEXCOORD3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glTexCoord3i: PFNGLTEXCOORD3IPROC;
// pub const PFNGLTEXCOORD3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glTexCoord3iv: PFNGLTEXCOORD3IVPROC;
// pub const PFNGLTEXCOORD3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glTexCoord3s: PFNGLTEXCOORD3SPROC;
// pub const PFNGLTEXCOORD3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glTexCoord3sv: PFNGLTEXCOORD3SVPROC;
// pub const PFNGLTEXCOORD4DPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glTexCoord4d: PFNGLTEXCOORD4DPROC;
// pub const PFNGLTEXCOORD4DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glTexCoord4dv: PFNGLTEXCOORD4DVPROC;
// pub const PFNGLTEXCOORD4FPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glTexCoord4f: PFNGLTEXCOORD4FPROC;
// pub const PFNGLTEXCOORD4FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glTexCoord4fv: PFNGLTEXCOORD4FVPROC;
// pub const PFNGLTEXCOORD4IPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glTexCoord4i: PFNGLTEXCOORD4IPROC;
// pub const PFNGLTEXCOORD4IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glTexCoord4iv: PFNGLTEXCOORD4IVPROC;
// pub const PFNGLTEXCOORD4SPROC = ?extern fn (GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glTexCoord4s: PFNGLTEXCOORD4SPROC;
// pub const PFNGLTEXCOORD4SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glTexCoord4sv: PFNGLTEXCOORD4SVPROC;
// pub const PFNGLVERTEX2DPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glVertex2d: PFNGLVERTEX2DPROC;
// pub const PFNGLVERTEX2DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glVertex2dv: PFNGLVERTEX2DVPROC;
// pub const PFNGLVERTEX2FPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glVertex2f: PFNGLVERTEX2FPROC;
// pub const PFNGLVERTEX2FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glVertex2fv: PFNGLVERTEX2FVPROC;
// pub const PFNGLVERTEX2IPROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glVertex2i: PFNGLVERTEX2IPROC;
// pub const PFNGLVERTEX2IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glVertex2iv: PFNGLVERTEX2IVPROC;
// pub const PFNGLVERTEX2SPROC = ?extern fn (GLshort, GLshort) void;
// pub extern var glad_glVertex2s: PFNGLVERTEX2SPROC;
// pub const PFNGLVERTEX2SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glVertex2sv: PFNGLVERTEX2SVPROC;
// pub const PFNGLVERTEX3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertex3d: PFNGLVERTEX3DPROC;
// pub const PFNGLVERTEX3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glVertex3dv: PFNGLVERTEX3DVPROC;
// pub const PFNGLVERTEX3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glVertex3f: PFNGLVERTEX3FPROC;
// pub const PFNGLVERTEX3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glVertex3fv: PFNGLVERTEX3FVPROC;
// pub const PFNGLVERTEX3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glVertex3i: PFNGLVERTEX3IPROC;
// pub const PFNGLVERTEX3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glVertex3iv: PFNGLVERTEX3IVPROC;
// pub const PFNGLVERTEX3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glVertex3s: PFNGLVERTEX3SPROC;
// pub const PFNGLVERTEX3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glVertex3sv: PFNGLVERTEX3SVPROC;
// pub const PFNGLVERTEX4DPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertex4d: PFNGLVERTEX4DPROC;
// pub const PFNGLVERTEX4DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glVertex4dv: PFNGLVERTEX4DVPROC;
// pub const PFNGLVERTEX4FPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glVertex4f: PFNGLVERTEX4FPROC;
// pub const PFNGLVERTEX4FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glVertex4fv: PFNGLVERTEX4FVPROC;
// pub const PFNGLVERTEX4IPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glVertex4i: PFNGLVERTEX4IPROC;
// pub const PFNGLVERTEX4IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glVertex4iv: PFNGLVERTEX4IVPROC;
// pub const PFNGLVERTEX4SPROC = ?extern fn (GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glVertex4s: PFNGLVERTEX4SPROC;
// pub const PFNGLVERTEX4SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glVertex4sv: PFNGLVERTEX4SVPROC;
// pub const PFNGLCLIPPLANEPROC = ?extern fn (GLenum, [*c]const GLdouble) void;
// pub extern var glad_glClipPlane: PFNGLCLIPPLANEPROC;
// pub const PFNGLCOLORMATERIALPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glColorMaterial: PFNGLCOLORMATERIALPROC;
// pub const PFNGLFOGFPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glFogf: PFNGLFOGFPROC;
// pub const PFNGLFOGFVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glFogfv: PFNGLFOGFVPROC;
// pub const PFNGLFOGIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glFogi: PFNGLFOGIPROC;
// pub const PFNGLFOGIVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glFogiv: PFNGLFOGIVPROC;
// pub const PFNGLLIGHTFPROC = ?extern fn (GLenum, GLenum, GLfloat) void;
// pub extern var glad_glLightf: PFNGLLIGHTFPROC;
// pub const PFNGLLIGHTFVPROC = ?extern fn (GLenum, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glLightfv: PFNGLLIGHTFVPROC;
// pub const PFNGLLIGHTIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glLighti: PFNGLLIGHTIPROC;
// pub const PFNGLLIGHTIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glLightiv: PFNGLLIGHTIVPROC;
// pub const PFNGLLIGHTMODELFPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glLightModelf: PFNGLLIGHTMODELFPROC;
// pub const PFNGLLIGHTMODELFVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glLightModelfv: PFNGLLIGHTMODELFVPROC;
// pub const PFNGLLIGHTMODELIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glLightModeli: PFNGLLIGHTMODELIPROC;
// pub const PFNGLLIGHTMODELIVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glLightModeliv: PFNGLLIGHTMODELIVPROC;
// pub const PFNGLLINESTIPPLEPROC = ?extern fn (GLint, GLushort) void;
// pub extern var glad_glLineStipple: PFNGLLINESTIPPLEPROC;
// pub const PFNGLMATERIALFPROC = ?extern fn (GLenum, GLenum, GLfloat) void;
// pub extern var glad_glMaterialf: PFNGLMATERIALFPROC;
// pub const PFNGLMATERIALFVPROC = ?extern fn (GLenum, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glMaterialfv: PFNGLMATERIALFVPROC;
// pub const PFNGLMATERIALIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glMateriali: PFNGLMATERIALIPROC;
// pub const PFNGLMATERIALIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glMaterialiv: PFNGLMATERIALIVPROC;
// pub const PFNGLPOLYGONSTIPPLEPROC = ?extern fn ([*c]const GLubyte) void;
// pub extern var glad_glPolygonStipple: PFNGLPOLYGONSTIPPLEPROC;
// pub const PFNGLSHADEMODELPROC = ?extern fn (GLenum) void;
// pub extern var glad_glShadeModel: PFNGLSHADEMODELPROC;
// pub const PFNGLTEXENVFPROC = ?extern fn (GLenum, GLenum, GLfloat) void;
// pub extern var glad_glTexEnvf: PFNGLTEXENVFPROC;
// pub const PFNGLTEXENVFVPROC = ?extern fn (GLenum, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glTexEnvfv: PFNGLTEXENVFVPROC;
// pub const PFNGLTEXENVIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glTexEnvi: PFNGLTEXENVIPROC;
// pub const PFNGLTEXENVIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glTexEnviv: PFNGLTEXENVIVPROC;
// pub const PFNGLTEXGENDPROC = ?extern fn (GLenum, GLenum, GLdouble) void;
// pub extern var glad_glTexGend: PFNGLTEXGENDPROC;
// pub const PFNGLTEXGENDVPROC = ?extern fn (GLenum, GLenum, [*c]const GLdouble) void;
// pub extern var glad_glTexGendv: PFNGLTEXGENDVPROC;
// pub const PFNGLTEXGENFPROC = ?extern fn (GLenum, GLenum, GLfloat) void;
// pub extern var glad_glTexGenf: PFNGLTEXGENFPROC;
// pub const PFNGLTEXGENFVPROC = ?extern fn (GLenum, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glTexGenfv: PFNGLTEXGENFVPROC;
// pub const PFNGLTEXGENIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glTexGeni: PFNGLTEXGENIPROC;
// pub const PFNGLTEXGENIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glTexGeniv: PFNGLTEXGENIVPROC;
// pub const PFNGLFEEDBACKBUFFERPROC = ?extern fn (GLsizei, GLenum, [*c]GLfloat) void;
// pub extern var glad_glFeedbackBuffer: PFNGLFEEDBACKBUFFERPROC;
// pub const PFNGLSELECTBUFFERPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glSelectBuffer: PFNGLSELECTBUFFERPROC;
// pub const PFNGLRENDERMODEPROC = ?extern fn (GLenum) GLint;
// pub extern var glad_glRenderMode: PFNGLRENDERMODEPROC;
// pub const PFNGLINITNAMESPROC = ?extern fn () void;
// pub extern var glad_glInitNames: PFNGLINITNAMESPROC;
// pub const PFNGLLOADNAMEPROC = ?extern fn (GLuint) void;
// pub extern var glad_glLoadName: PFNGLLOADNAMEPROC;
// pub const PFNGLPASSTHROUGHPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glPassThrough: PFNGLPASSTHROUGHPROC;
// pub const PFNGLPOPNAMEPROC = ?extern fn () void;
// pub extern var glad_glPopName: PFNGLPOPNAMEPROC;
// pub const PFNGLPUSHNAMEPROC = ?extern fn (GLuint) void;
// pub extern var glad_glPushName: PFNGLPUSHNAMEPROC;
// pub const PFNGLCLEARACCUMPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glClearAccum: PFNGLCLEARACCUMPROC;
// pub const PFNGLCLEARINDEXPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glClearIndex: PFNGLCLEARINDEXPROC;
// pub const PFNGLINDEXMASKPROC = ?extern fn (GLuint) void;
// pub extern var glad_glIndexMask: PFNGLINDEXMASKPROC;
// pub const PFNGLACCUMPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glAccum: PFNGLACCUMPROC;
// pub const PFNGLPOPATTRIBPROC = ?extern fn () void;
// pub extern var glad_glPopAttrib: PFNGLPOPATTRIBPROC;
// pub const PFNGLPUSHATTRIBPROC = ?extern fn (GLbitfield) void;
// pub extern var glad_glPushAttrib: PFNGLPUSHATTRIBPROC;
// pub const PFNGLMAP1DPROC = ?extern fn (GLenum, GLdouble, GLdouble, GLint, GLint, [*c]const GLdouble) void;
// pub extern var glad_glMap1d: PFNGLMAP1DPROC;
// pub const PFNGLMAP1FPROC = ?extern fn (GLenum, GLfloat, GLfloat, GLint, GLint, [*c]const GLfloat) void;
// pub extern var glad_glMap1f: PFNGLMAP1FPROC;
// pub const PFNGLMAP2DPROC = ?extern fn (GLenum, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, [*c]const GLdouble) void;
// pub extern var glad_glMap2d: PFNGLMAP2DPROC;
// pub const PFNGLMAP2FPROC = ?extern fn (GLenum, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, [*c]const GLfloat) void;
// pub extern var glad_glMap2f: PFNGLMAP2FPROC;
// pub const PFNGLMAPGRID1DPROC = ?extern fn (GLint, GLdouble, GLdouble) void;
// pub extern var glad_glMapGrid1d: PFNGLMAPGRID1DPROC;
// pub const PFNGLMAPGRID1FPROC = ?extern fn (GLint, GLfloat, GLfloat) void;
// pub extern var glad_glMapGrid1f: PFNGLMAPGRID1FPROC;
// pub const PFNGLMAPGRID2DPROC = ?extern fn (GLint, GLdouble, GLdouble, GLint, GLdouble, GLdouble) void;
// pub extern var glad_glMapGrid2d: PFNGLMAPGRID2DPROC;
// pub const PFNGLMAPGRID2FPROC = ?extern fn (GLint, GLfloat, GLfloat, GLint, GLfloat, GLfloat) void;
// pub extern var glad_glMapGrid2f: PFNGLMAPGRID2FPROC;
// pub const PFNGLEVALCOORD1DPROC = ?extern fn (GLdouble) void;
// pub extern var glad_glEvalCoord1d: PFNGLEVALCOORD1DPROC;
// pub const PFNGLEVALCOORD1DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glEvalCoord1dv: PFNGLEVALCOORD1DVPROC;
// pub const PFNGLEVALCOORD1FPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glEvalCoord1f: PFNGLEVALCOORD1FPROC;
// pub const PFNGLEVALCOORD1FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glEvalCoord1fv: PFNGLEVALCOORD1FVPROC;
// pub const PFNGLEVALCOORD2DPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glEvalCoord2d: PFNGLEVALCOORD2DPROC;
// pub const PFNGLEVALCOORD2DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glEvalCoord2dv: PFNGLEVALCOORD2DVPROC;
// pub const PFNGLEVALCOORD2FPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glEvalCoord2f: PFNGLEVALCOORD2FPROC;
// pub const PFNGLEVALCOORD2FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glEvalCoord2fv: PFNGLEVALCOORD2FVPROC;
// pub const PFNGLEVALMESH1PROC = ?extern fn (GLenum, GLint, GLint) void;
// pub extern var glad_glEvalMesh1: PFNGLEVALMESH1PROC;
// pub const PFNGLEVALPOINT1PROC = ?extern fn (GLint) void;
// pub extern var glad_glEvalPoint1: PFNGLEVALPOINT1PROC;
// pub const PFNGLEVALMESH2PROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glEvalMesh2: PFNGLEVALMESH2PROC;
// pub const PFNGLEVALPOINT2PROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glEvalPoint2: PFNGLEVALPOINT2PROC;
// pub const PFNGLALPHAFUNCPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glAlphaFunc: PFNGLALPHAFUNCPROC;
// pub const PFNGLPIXELZOOMPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glPixelZoom: PFNGLPIXELZOOMPROC;
// pub const PFNGLPIXELTRANSFERFPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glPixelTransferf: PFNGLPIXELTRANSFERFPROC;
// pub const PFNGLPIXELTRANSFERIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glPixelTransferi: PFNGLPIXELTRANSFERIPROC;
// pub const PFNGLPIXELMAPFVPROC = ?extern fn (GLenum, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glPixelMapfv: PFNGLPIXELMAPFVPROC;
// pub const PFNGLPIXELMAPUIVPROC = ?extern fn (GLenum, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glPixelMapuiv: PFNGLPIXELMAPUIVPROC;
// pub const PFNGLPIXELMAPUSVPROC = ?extern fn (GLenum, GLsizei, [*c]const GLushort) void;
// pub extern var glad_glPixelMapusv: PFNGLPIXELMAPUSVPROC;
// pub const PFNGLCOPYPIXELSPROC = ?extern fn (GLint, GLint, GLsizei, GLsizei, GLenum) void;
// pub extern var glad_glCopyPixels: PFNGLCOPYPIXELSPROC;
// pub const PFNGLDRAWPIXELSPROC = ?extern fn (GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glDrawPixels: PFNGLDRAWPIXELSPROC;
// pub const PFNGLGETCLIPPLANEPROC = ?extern fn (GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetClipPlane: PFNGLGETCLIPPLANEPROC;
// pub const PFNGLGETLIGHTFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetLightfv: PFNGLGETLIGHTFVPROC;
// pub const PFNGLGETLIGHTIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetLightiv: PFNGLGETLIGHTIVPROC;
// pub const PFNGLGETMAPDVPROC = ?extern fn (GLenum, GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetMapdv: PFNGLGETMAPDVPROC;
// pub const PFNGLGETMAPFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetMapfv: PFNGLGETMAPFVPROC;
// pub const PFNGLGETMAPIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetMapiv: PFNGLGETMAPIVPROC;
// pub const PFNGLGETMATERIALFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetMaterialfv: PFNGLGETMATERIALFVPROC;
// pub const PFNGLGETMATERIALIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetMaterialiv: PFNGLGETMATERIALIVPROC;
// pub const PFNGLGETPIXELMAPFVPROC = ?extern fn (GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetPixelMapfv: PFNGLGETPIXELMAPFVPROC;
// pub const PFNGLGETPIXELMAPUIVPROC = ?extern fn (GLenum, [*c]GLuint) void;
// pub extern var glad_glGetPixelMapuiv: PFNGLGETPIXELMAPUIVPROC;
// pub const PFNGLGETPIXELMAPUSVPROC = ?extern fn (GLenum, [*c]GLushort) void;
// pub extern var glad_glGetPixelMapusv: PFNGLGETPIXELMAPUSVPROC;
// pub const PFNGLGETPOLYGONSTIPPLEPROC = ?extern fn ([*c]GLubyte) void;
// pub extern var glad_glGetPolygonStipple: PFNGLGETPOLYGONSTIPPLEPROC;
// pub const PFNGLGETTEXENVFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTexEnvfv: PFNGLGETTEXENVFVPROC;
// pub const PFNGLGETTEXENVIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTexEnviv: PFNGLGETTEXENVIVPROC;
// pub const PFNGLGETTEXGENDVPROC = ?extern fn (GLenum, GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetTexGendv: PFNGLGETTEXGENDVPROC;
// pub const PFNGLGETTEXGENFVPROC = ?extern fn (GLenum, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTexGenfv: PFNGLGETTEXGENFVPROC;
// pub const PFNGLGETTEXGENIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTexGeniv: PFNGLGETTEXGENIVPROC;
// pub const PFNGLISLISTPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsList: PFNGLISLISTPROC;
// pub const PFNGLFRUSTUMPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glFrustum: PFNGLFRUSTUMPROC;
// pub const PFNGLLOADIDENTITYPROC = ?extern fn () void;
// pub extern var glad_glLoadIdentity: PFNGLLOADIDENTITYPROC;
// pub const PFNGLLOADMATRIXFPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glLoadMatrixf: PFNGLLOADMATRIXFPROC;
// pub const PFNGLLOADMATRIXDPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glLoadMatrixd: PFNGLLOADMATRIXDPROC;
// pub const PFNGLMATRIXMODEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glMatrixMode: PFNGLMATRIXMODEPROC;
// pub const PFNGLMULTMATRIXFPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glMultMatrixf: PFNGLMULTMATRIXFPROC;
// pub const PFNGLMULTMATRIXDPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glMultMatrixd: PFNGLMULTMATRIXDPROC;
// pub const PFNGLORTHOPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glOrtho: PFNGLORTHOPROC;
// pub const PFNGLPOPMATRIXPROC = ?extern fn () void;
// pub extern var glad_glPopMatrix: PFNGLPOPMATRIXPROC;
// pub const PFNGLPUSHMATRIXPROC = ?extern fn () void;
// pub extern var glad_glPushMatrix: PFNGLPUSHMATRIXPROC;
// pub const PFNGLROTATEDPROC = ?extern fn (GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glRotated: PFNGLROTATEDPROC;
// pub const PFNGLROTATEFPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glRotatef: PFNGLROTATEFPROC;
// pub const PFNGLSCALEDPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glScaled: PFNGLSCALEDPROC;
// pub const PFNGLSCALEFPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glScalef: PFNGLSCALEFPROC;
// pub const PFNGLTRANSLATEDPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glTranslated: PFNGLTRANSLATEDPROC;
// pub const PFNGLTRANSLATEFPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glTranslatef: PFNGLTRANSLATEFPROC;
// pub extern var GLAD_GL_VERSION_1_1: c_int;
// pub const PFNGLDRAWARRAYSPROC = ?extern fn (GLenum, GLint, GLsizei) void;
// pub extern var glad_glDrawArrays: PFNGLDRAWARRAYSPROC;
// pub const PFNGLDRAWELEMENTSPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void) void;
// pub extern var glad_glDrawElements: PFNGLDRAWELEMENTSPROC;
// pub const PFNGLGETPOINTERVPROC = ?extern fn (GLenum, [*c](?*c_void)) void;
// pub extern var glad_glGetPointerv: PFNGLGETPOINTERVPROC;
// pub const PFNGLPOLYGONOFFSETPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glPolygonOffset: PFNGLPOLYGONOFFSETPROC;
// pub const PFNGLCOPYTEXIMAGE1DPROC = ?extern fn (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLint) void;
// pub extern var glad_glCopyTexImage1D: PFNGLCOPYTEXIMAGE1DPROC;
// pub const PFNGLCOPYTEXIMAGE2DPROC = ?extern fn (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLsizei, GLint) void;
// pub extern var glad_glCopyTexImage2D: PFNGLCOPYTEXIMAGE2DPROC;
// pub const PFNGLCOPYTEXSUBIMAGE1DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint, GLsizei) void;
// pub extern var glad_glCopyTexSubImage1D: PFNGLCOPYTEXSUBIMAGE1DPROC;
// pub const PFNGLCOPYTEXSUBIMAGE2DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glCopyTexSubImage2D: PFNGLCOPYTEXSUBIMAGE2DPROC;
// pub const PFNGLTEXSUBIMAGE1DPROC = ?extern fn (GLenum, GLint, GLint, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexSubImage1D: PFNGLTEXSUBIMAGE1DPROC;
// pub const PFNGLTEXSUBIMAGE2DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexSubImage2D: PFNGLTEXSUBIMAGE2DPROC;
// pub const PFNGLBINDTEXTUREPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBindTexture: PFNGLBINDTEXTUREPROC;
// pub const PFNGLDELETETEXTURESPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteTextures: PFNGLDELETETEXTURESPROC;
// pub const PFNGLGENTEXTURESPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenTextures: PFNGLGENTEXTURESPROC;
// pub const PFNGLISTEXTUREPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsTexture: PFNGLISTEXTUREPROC;
// pub const PFNGLARRAYELEMENTPROC = ?extern fn (GLint) void;
// pub extern var glad_glArrayElement: PFNGLARRAYELEMENTPROC;
// pub const PFNGLCOLORPOINTERPROC = ?extern fn (GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glColorPointer: PFNGLCOLORPOINTERPROC;
// pub const PFNGLDISABLECLIENTSTATEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glDisableClientState: PFNGLDISABLECLIENTSTATEPROC;
// pub const PFNGLEDGEFLAGPOINTERPROC = ?extern fn (GLsizei, ?*const c_void) void;
// pub extern var glad_glEdgeFlagPointer: PFNGLEDGEFLAGPOINTERPROC;
// pub const PFNGLENABLECLIENTSTATEPROC = ?extern fn (GLenum) void;
// pub extern var glad_glEnableClientState: PFNGLENABLECLIENTSTATEPROC;
// pub const PFNGLINDEXPOINTERPROC = ?extern fn (GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glIndexPointer: PFNGLINDEXPOINTERPROC;
// pub const PFNGLINTERLEAVEDARRAYSPROC = ?extern fn (GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glInterleavedArrays: PFNGLINTERLEAVEDARRAYSPROC;
// pub const PFNGLNORMALPOINTERPROC = ?extern fn (GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glNormalPointer: PFNGLNORMALPOINTERPROC;
// pub const PFNGLTEXCOORDPOINTERPROC = ?extern fn (GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glTexCoordPointer: PFNGLTEXCOORDPOINTERPROC;
// pub const PFNGLVERTEXPOINTERPROC = ?extern fn (GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glVertexPointer: PFNGLVERTEXPOINTERPROC;
// pub const PFNGLARETEXTURESRESIDENTPROC = ?extern fn (GLsizei, [*c]const GLuint, [*c]GLboolean) GLboolean;
// pub extern var glad_glAreTexturesResident: PFNGLARETEXTURESRESIDENTPROC;
// pub const PFNGLPRIORITIZETEXTURESPROC = ?extern fn (GLsizei, [*c]const GLuint, [*c]const GLfloat) void;
// pub extern var glad_glPrioritizeTextures: PFNGLPRIORITIZETEXTURESPROC;
// pub const PFNGLINDEXUBPROC = ?extern fn (GLubyte) void;
// pub extern var glad_glIndexub: PFNGLINDEXUBPROC;
// pub const PFNGLINDEXUBVPROC = ?extern fn ([*c]const GLubyte) void;
// pub extern var glad_glIndexubv: PFNGLINDEXUBVPROC;
// pub const PFNGLPOPCLIENTATTRIBPROC = ?extern fn () void;
// pub extern var glad_glPopClientAttrib: PFNGLPOPCLIENTATTRIBPROC;
// pub const PFNGLPUSHCLIENTATTRIBPROC = ?extern fn (GLbitfield) void;
// pub extern var glad_glPushClientAttrib: PFNGLPUSHCLIENTATTRIBPROC;
// pub extern var GLAD_GL_VERSION_1_2: c_int;
// pub const PFNGLDRAWRANGEELEMENTSPROC = ?extern fn (GLenum, GLuint, GLuint, GLsizei, GLenum, ?*const c_void) void;
// pub extern var glad_glDrawRangeElements: PFNGLDRAWRANGEELEMENTSPROC;
// pub const PFNGLTEXIMAGE3DPROC = ?extern fn (GLenum, GLint, GLint, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexImage3D: PFNGLTEXIMAGE3DPROC;
// pub const PFNGLTEXSUBIMAGE3DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTexSubImage3D: PFNGLTEXSUBIMAGE3DPROC;
// pub const PFNGLCOPYTEXSUBIMAGE3DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glCopyTexSubImage3D: PFNGLCOPYTEXSUBIMAGE3DPROC;
// pub extern var GLAD_GL_VERSION_1_3: c_int;
// pub const PFNGLACTIVETEXTUREPROC = ?extern fn (GLenum) void;
// pub extern var glad_glActiveTexture: PFNGLACTIVETEXTUREPROC;
// pub const PFNGLSAMPLECOVERAGEPROC = ?extern fn (GLfloat, GLboolean) void;
// pub extern var glad_glSampleCoverage: PFNGLSAMPLECOVERAGEPROC;
// pub const PFNGLCOMPRESSEDTEXIMAGE3DPROC = ?extern fn (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexImage3D: PFNGLCOMPRESSEDTEXIMAGE3DPROC;
// pub const PFNGLCOMPRESSEDTEXIMAGE2DPROC = ?extern fn (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexImage2D: PFNGLCOMPRESSEDTEXIMAGE2DPROC;
// pub const PFNGLCOMPRESSEDTEXIMAGE1DPROC = ?extern fn (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexImage1D: PFNGLCOMPRESSEDTEXIMAGE1DPROC;
// pub const PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexSubImage3D: PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC;
// pub const PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexSubImage2D: PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC;
// pub const PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC = ?extern fn (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTexSubImage1D: PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC;
// pub const PFNGLGETCOMPRESSEDTEXIMAGEPROC = ?extern fn (GLenum, GLint, ?*c_void) void;
// pub extern var glad_glGetCompressedTexImage: PFNGLGETCOMPRESSEDTEXIMAGEPROC;
// pub const PFNGLCLIENTACTIVETEXTUREPROC = ?extern fn (GLenum) void;
// pub extern var glad_glClientActiveTexture: PFNGLCLIENTACTIVETEXTUREPROC;
// pub const PFNGLMULTITEXCOORD1DPROC = ?extern fn (GLenum, GLdouble) void;
// pub extern var glad_glMultiTexCoord1d: PFNGLMULTITEXCOORD1DPROC;
// pub const PFNGLMULTITEXCOORD1DVPROC = ?extern fn (GLenum, [*c]const GLdouble) void;
// pub extern var glad_glMultiTexCoord1dv: PFNGLMULTITEXCOORD1DVPROC;
// pub const PFNGLMULTITEXCOORD1FPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glMultiTexCoord1f: PFNGLMULTITEXCOORD1FPROC;
// pub const PFNGLMULTITEXCOORD1FVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glMultiTexCoord1fv: PFNGLMULTITEXCOORD1FVPROC;
// pub const PFNGLMULTITEXCOORD1IPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glMultiTexCoord1i: PFNGLMULTITEXCOORD1IPROC;
// pub const PFNGLMULTITEXCOORD1IVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glMultiTexCoord1iv: PFNGLMULTITEXCOORD1IVPROC;
// pub const PFNGLMULTITEXCOORD1SPROC = ?extern fn (GLenum, GLshort) void;
// pub extern var glad_glMultiTexCoord1s: PFNGLMULTITEXCOORD1SPROC;
// pub const PFNGLMULTITEXCOORD1SVPROC = ?extern fn (GLenum, [*c]const GLshort) void;
// pub extern var glad_glMultiTexCoord1sv: PFNGLMULTITEXCOORD1SVPROC;
// pub const PFNGLMULTITEXCOORD2DPROC = ?extern fn (GLenum, GLdouble, GLdouble) void;
// pub extern var glad_glMultiTexCoord2d: PFNGLMULTITEXCOORD2DPROC;
// pub const PFNGLMULTITEXCOORD2DVPROC = ?extern fn (GLenum, [*c]const GLdouble) void;
// pub extern var glad_glMultiTexCoord2dv: PFNGLMULTITEXCOORD2DVPROC;
// pub const PFNGLMULTITEXCOORD2FPROC = ?extern fn (GLenum, GLfloat, GLfloat) void;
// pub extern var glad_glMultiTexCoord2f: PFNGLMULTITEXCOORD2FPROC;
// pub const PFNGLMULTITEXCOORD2FVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glMultiTexCoord2fv: PFNGLMULTITEXCOORD2FVPROC;
// pub const PFNGLMULTITEXCOORD2IPROC = ?extern fn (GLenum, GLint, GLint) void;
// pub extern var glad_glMultiTexCoord2i: PFNGLMULTITEXCOORD2IPROC;
// pub const PFNGLMULTITEXCOORD2IVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glMultiTexCoord2iv: PFNGLMULTITEXCOORD2IVPROC;
// pub const PFNGLMULTITEXCOORD2SPROC = ?extern fn (GLenum, GLshort, GLshort) void;
// pub extern var glad_glMultiTexCoord2s: PFNGLMULTITEXCOORD2SPROC;
// pub const PFNGLMULTITEXCOORD2SVPROC = ?extern fn (GLenum, [*c]const GLshort) void;
// pub extern var glad_glMultiTexCoord2sv: PFNGLMULTITEXCOORD2SVPROC;
// pub const PFNGLMULTITEXCOORD3DPROC = ?extern fn (GLenum, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glMultiTexCoord3d: PFNGLMULTITEXCOORD3DPROC;
// pub const PFNGLMULTITEXCOORD3DVPROC = ?extern fn (GLenum, [*c]const GLdouble) void;
// pub extern var glad_glMultiTexCoord3dv: PFNGLMULTITEXCOORD3DVPROC;
// pub const PFNGLMULTITEXCOORD3FPROC = ?extern fn (GLenum, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glMultiTexCoord3f: PFNGLMULTITEXCOORD3FPROC;
// pub const PFNGLMULTITEXCOORD3FVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glMultiTexCoord3fv: PFNGLMULTITEXCOORD3FVPROC;
// pub const PFNGLMULTITEXCOORD3IPROC = ?extern fn (GLenum, GLint, GLint, GLint) void;
// pub extern var glad_glMultiTexCoord3i: PFNGLMULTITEXCOORD3IPROC;
// pub const PFNGLMULTITEXCOORD3IVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glMultiTexCoord3iv: PFNGLMULTITEXCOORD3IVPROC;
// pub const PFNGLMULTITEXCOORD3SPROC = ?extern fn (GLenum, GLshort, GLshort, GLshort) void;
// pub extern var glad_glMultiTexCoord3s: PFNGLMULTITEXCOORD3SPROC;
// pub const PFNGLMULTITEXCOORD3SVPROC = ?extern fn (GLenum, [*c]const GLshort) void;
// pub extern var glad_glMultiTexCoord3sv: PFNGLMULTITEXCOORD3SVPROC;
// pub const PFNGLMULTITEXCOORD4DPROC = ?extern fn (GLenum, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glMultiTexCoord4d: PFNGLMULTITEXCOORD4DPROC;
// pub const PFNGLMULTITEXCOORD4DVPROC = ?extern fn (GLenum, [*c]const GLdouble) void;
// pub extern var glad_glMultiTexCoord4dv: PFNGLMULTITEXCOORD4DVPROC;
// pub const PFNGLMULTITEXCOORD4FPROC = ?extern fn (GLenum, GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glMultiTexCoord4f: PFNGLMULTITEXCOORD4FPROC;
// pub const PFNGLMULTITEXCOORD4FVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glMultiTexCoord4fv: PFNGLMULTITEXCOORD4FVPROC;
// pub const PFNGLMULTITEXCOORD4IPROC = ?extern fn (GLenum, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glMultiTexCoord4i: PFNGLMULTITEXCOORD4IPROC;
// pub const PFNGLMULTITEXCOORD4IVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glMultiTexCoord4iv: PFNGLMULTITEXCOORD4IVPROC;
// pub const PFNGLMULTITEXCOORD4SPROC = ?extern fn (GLenum, GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glMultiTexCoord4s: PFNGLMULTITEXCOORD4SPROC;
// pub const PFNGLMULTITEXCOORD4SVPROC = ?extern fn (GLenum, [*c]const GLshort) void;
// pub extern var glad_glMultiTexCoord4sv: PFNGLMULTITEXCOORD4SVPROC;
// pub const PFNGLLOADTRANSPOSEMATRIXFPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glLoadTransposeMatrixf: PFNGLLOADTRANSPOSEMATRIXFPROC;
// pub const PFNGLLOADTRANSPOSEMATRIXDPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glLoadTransposeMatrixd: PFNGLLOADTRANSPOSEMATRIXDPROC;
// pub const PFNGLMULTTRANSPOSEMATRIXFPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glMultTransposeMatrixf: PFNGLMULTTRANSPOSEMATRIXFPROC;
// pub const PFNGLMULTTRANSPOSEMATRIXDPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glMultTransposeMatrixd: PFNGLMULTTRANSPOSEMATRIXDPROC;
// pub extern var GLAD_GL_VERSION_1_4: c_int;
// pub const PFNGLBLENDFUNCSEPARATEPROC = ?extern fn (GLenum, GLenum, GLenum, GLenum) void;
// pub extern var glad_glBlendFuncSeparate: PFNGLBLENDFUNCSEPARATEPROC;
// pub const PFNGLMULTIDRAWARRAYSPROC = ?extern fn (GLenum, [*c]const GLint, [*c]const GLsizei, GLsizei) void;
// pub extern var glad_glMultiDrawArrays: PFNGLMULTIDRAWARRAYSPROC;
// pub const PFNGLMULTIDRAWELEMENTSPROC = ?extern fn (GLenum, [*c]const GLsizei, GLenum, [*c]const (?*const c_void), GLsizei) void;
// pub extern var glad_glMultiDrawElements: PFNGLMULTIDRAWELEMENTSPROC;
// pub const PFNGLPOINTPARAMETERFPROC = ?extern fn (GLenum, GLfloat) void;
// pub extern var glad_glPointParameterf: PFNGLPOINTPARAMETERFPROC;
// pub const PFNGLPOINTPARAMETERFVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glPointParameterfv: PFNGLPOINTPARAMETERFVPROC;
// pub const PFNGLPOINTPARAMETERIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glPointParameteri: PFNGLPOINTPARAMETERIPROC;
// pub const PFNGLPOINTPARAMETERIVPROC = ?extern fn (GLenum, [*c]const GLint) void;
// pub extern var glad_glPointParameteriv: PFNGLPOINTPARAMETERIVPROC;
// pub const PFNGLFOGCOORDFPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glFogCoordf: PFNGLFOGCOORDFPROC;
// pub const PFNGLFOGCOORDFVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glFogCoordfv: PFNGLFOGCOORDFVPROC;
// pub const PFNGLFOGCOORDDPROC = ?extern fn (GLdouble) void;
// pub extern var glad_glFogCoordd: PFNGLFOGCOORDDPROC;
// pub const PFNGLFOGCOORDDVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glFogCoorddv: PFNGLFOGCOORDDVPROC;
// pub const PFNGLFOGCOORDPOINTERPROC = ?extern fn (GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glFogCoordPointer: PFNGLFOGCOORDPOINTERPROC;
// pub const PFNGLSECONDARYCOLOR3BPROC = ?extern fn (GLbyte, GLbyte, GLbyte) void;
// pub extern var glad_glSecondaryColor3b: PFNGLSECONDARYCOLOR3BPROC;
// pub const PFNGLSECONDARYCOLOR3BVPROC = ?extern fn ([*c]const GLbyte) void;
// pub extern var glad_glSecondaryColor3bv: PFNGLSECONDARYCOLOR3BVPROC;
// pub const PFNGLSECONDARYCOLOR3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glSecondaryColor3d: PFNGLSECONDARYCOLOR3DPROC;
// pub const PFNGLSECONDARYCOLOR3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glSecondaryColor3dv: PFNGLSECONDARYCOLOR3DVPROC;
// pub const PFNGLSECONDARYCOLOR3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glSecondaryColor3f: PFNGLSECONDARYCOLOR3FPROC;
// pub const PFNGLSECONDARYCOLOR3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glSecondaryColor3fv: PFNGLSECONDARYCOLOR3FVPROC;
// pub const PFNGLSECONDARYCOLOR3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glSecondaryColor3i: PFNGLSECONDARYCOLOR3IPROC;
// pub const PFNGLSECONDARYCOLOR3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glSecondaryColor3iv: PFNGLSECONDARYCOLOR3IVPROC;
// pub const PFNGLSECONDARYCOLOR3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glSecondaryColor3s: PFNGLSECONDARYCOLOR3SPROC;
// pub const PFNGLSECONDARYCOLOR3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glSecondaryColor3sv: PFNGLSECONDARYCOLOR3SVPROC;
// pub const PFNGLSECONDARYCOLOR3UBPROC = ?extern fn (GLubyte, GLubyte, GLubyte) void;
// pub extern var glad_glSecondaryColor3ub: PFNGLSECONDARYCOLOR3UBPROC;
// pub const PFNGLSECONDARYCOLOR3UBVPROC = ?extern fn ([*c]const GLubyte) void;
// pub extern var glad_glSecondaryColor3ubv: PFNGLSECONDARYCOLOR3UBVPROC;
// pub const PFNGLSECONDARYCOLOR3UIPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glSecondaryColor3ui: PFNGLSECONDARYCOLOR3UIPROC;
// pub const PFNGLSECONDARYCOLOR3UIVPROC = ?extern fn ([*c]const GLuint) void;
// pub extern var glad_glSecondaryColor3uiv: PFNGLSECONDARYCOLOR3UIVPROC;
// pub const PFNGLSECONDARYCOLOR3USPROC = ?extern fn (GLushort, GLushort, GLushort) void;
// pub extern var glad_glSecondaryColor3us: PFNGLSECONDARYCOLOR3USPROC;
// pub const PFNGLSECONDARYCOLOR3USVPROC = ?extern fn ([*c]const GLushort) void;
// pub extern var glad_glSecondaryColor3usv: PFNGLSECONDARYCOLOR3USVPROC;
// pub const PFNGLSECONDARYCOLORPOINTERPROC = ?extern fn (GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glSecondaryColorPointer: PFNGLSECONDARYCOLORPOINTERPROC;
// pub const PFNGLWINDOWPOS2DPROC = ?extern fn (GLdouble, GLdouble) void;
// pub extern var glad_glWindowPos2d: PFNGLWINDOWPOS2DPROC;
// pub const PFNGLWINDOWPOS2DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glWindowPos2dv: PFNGLWINDOWPOS2DVPROC;
// pub const PFNGLWINDOWPOS2FPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glWindowPos2f: PFNGLWINDOWPOS2FPROC;
// pub const PFNGLWINDOWPOS2FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glWindowPos2fv: PFNGLWINDOWPOS2FVPROC;
// pub const PFNGLWINDOWPOS2IPROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glWindowPos2i: PFNGLWINDOWPOS2IPROC;
// pub const PFNGLWINDOWPOS2IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glWindowPos2iv: PFNGLWINDOWPOS2IVPROC;
// pub const PFNGLWINDOWPOS2SPROC = ?extern fn (GLshort, GLshort) void;
// pub extern var glad_glWindowPos2s: PFNGLWINDOWPOS2SPROC;
// pub const PFNGLWINDOWPOS2SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glWindowPos2sv: PFNGLWINDOWPOS2SVPROC;
// pub const PFNGLWINDOWPOS3DPROC = ?extern fn (GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glWindowPos3d: PFNGLWINDOWPOS3DPROC;
// pub const PFNGLWINDOWPOS3DVPROC = ?extern fn ([*c]const GLdouble) void;
// pub extern var glad_glWindowPos3dv: PFNGLWINDOWPOS3DVPROC;
// pub const PFNGLWINDOWPOS3FPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glWindowPos3f: PFNGLWINDOWPOS3FPROC;
// pub const PFNGLWINDOWPOS3FVPROC = ?extern fn ([*c]const GLfloat) void;
// pub extern var glad_glWindowPos3fv: PFNGLWINDOWPOS3FVPROC;
// pub const PFNGLWINDOWPOS3IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glWindowPos3i: PFNGLWINDOWPOS3IPROC;
// pub const PFNGLWINDOWPOS3IVPROC = ?extern fn ([*c]const GLint) void;
// pub extern var glad_glWindowPos3iv: PFNGLWINDOWPOS3IVPROC;
// pub const PFNGLWINDOWPOS3SPROC = ?extern fn (GLshort, GLshort, GLshort) void;
// pub extern var glad_glWindowPos3s: PFNGLWINDOWPOS3SPROC;
// pub const PFNGLWINDOWPOS3SVPROC = ?extern fn ([*c]const GLshort) void;
// pub extern var glad_glWindowPos3sv: PFNGLWINDOWPOS3SVPROC;
// pub const PFNGLBLENDCOLORPROC = ?extern fn (GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glBlendColor: PFNGLBLENDCOLORPROC;
// pub const PFNGLBLENDEQUATIONPROC = ?extern fn (GLenum) void;
// pub extern var glad_glBlendEquation: PFNGLBLENDEQUATIONPROC;
// pub extern var GLAD_GL_VERSION_1_5: c_int;
// pub const PFNGLGENQUERIESPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenQueries: PFNGLGENQUERIESPROC;
// pub const PFNGLDELETEQUERIESPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteQueries: PFNGLDELETEQUERIESPROC;
// pub const PFNGLISQUERYPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsQuery: PFNGLISQUERYPROC;
// pub const PFNGLBEGINQUERYPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBeginQuery: PFNGLBEGINQUERYPROC;
// pub const PFNGLENDQUERYPROC = ?extern fn (GLenum) void;
// pub extern var glad_glEndQuery: PFNGLENDQUERYPROC;
// pub const PFNGLGETQUERYIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetQueryiv: PFNGLGETQUERYIVPROC;
// pub const PFNGLGETQUERYOBJECTIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetQueryObjectiv: PFNGLGETQUERYOBJECTIVPROC;
// pub const PFNGLGETQUERYOBJECTUIVPROC = ?extern fn (GLuint, GLenum, [*c]GLuint) void;
// pub extern var glad_glGetQueryObjectuiv: PFNGLGETQUERYOBJECTUIVPROC;
// pub const PFNGLBINDBUFFERPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBindBuffer: PFNGLBINDBUFFERPROC;
// pub const PFNGLDELETEBUFFERSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteBuffers: PFNGLDELETEBUFFERSPROC;
// pub const PFNGLGENBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenBuffers: PFNGLGENBUFFERSPROC;
// pub const PFNGLISBUFFERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsBuffer: PFNGLISBUFFERPROC;
// pub const PFNGLBUFFERDATAPROC = ?extern fn (GLenum, GLsizeiptr, ?*const c_void, GLenum) void;
// pub extern var glad_glBufferData: PFNGLBUFFERDATAPROC;
// pub const PFNGLBUFFERSUBDATAPROC = ?extern fn (GLenum, GLintptr, GLsizeiptr, ?*const c_void) void;
// pub extern var glad_glBufferSubData: PFNGLBUFFERSUBDATAPROC;
// pub const PFNGLGETBUFFERSUBDATAPROC = ?extern fn (GLenum, GLintptr, GLsizeiptr, ?*c_void) void;
// pub extern var glad_glGetBufferSubData: PFNGLGETBUFFERSUBDATAPROC;
// pub const PFNGLMAPBUFFERPROC = ?extern fn (GLenum, GLenum) ?*c_void;
// pub extern var glad_glMapBuffer: PFNGLMAPBUFFERPROC;
// pub const PFNGLUNMAPBUFFERPROC = ?extern fn (GLenum) GLboolean;
// pub extern var glad_glUnmapBuffer: PFNGLUNMAPBUFFERPROC;
// pub const PFNGLGETBUFFERPARAMETERIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetBufferParameteriv: PFNGLGETBUFFERPARAMETERIVPROC;
// pub const PFNGLGETBUFFERPOINTERVPROC = ?extern fn (GLenum, GLenum, [*c](?*c_void)) void;
// pub extern var glad_glGetBufferPointerv: PFNGLGETBUFFERPOINTERVPROC;
// pub extern var GLAD_GL_VERSION_2_0: c_int;
// pub const PFNGLBLENDEQUATIONSEPARATEPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glBlendEquationSeparate: PFNGLBLENDEQUATIONSEPARATEPROC;
// pub const PFNGLDRAWBUFFERSPROC = ?extern fn (GLsizei, [*c]const GLenum) void;
// pub extern var glad_glDrawBuffers: PFNGLDRAWBUFFERSPROC;
// pub const PFNGLSTENCILOPSEPARATEPROC = ?extern fn (GLenum, GLenum, GLenum, GLenum) void;
// pub extern var glad_glStencilOpSeparate: PFNGLSTENCILOPSEPARATEPROC;
// pub const PFNGLSTENCILFUNCSEPARATEPROC = ?extern fn (GLenum, GLenum, GLint, GLuint) void;
// pub extern var glad_glStencilFuncSeparate: PFNGLSTENCILFUNCSEPARATEPROC;
// pub const PFNGLSTENCILMASKSEPARATEPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glStencilMaskSeparate: PFNGLSTENCILMASKSEPARATEPROC;
// pub const PFNGLATTACHSHADERPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glAttachShader: PFNGLATTACHSHADERPROC;
// pub const PFNGLBINDATTRIBLOCATIONPROC = ?extern fn (GLuint, GLuint, [*c]const GLchar) void;
// pub extern var glad_glBindAttribLocation: PFNGLBINDATTRIBLOCATIONPROC;
// pub const PFNGLCOMPILESHADERPROC = ?extern fn (GLuint) void;
// pub extern var glad_glCompileShader: PFNGLCOMPILESHADERPROC;
// pub const PFNGLCREATEPROGRAMPROC = ?extern fn () GLuint;
// pub extern var glad_glCreateProgram: PFNGLCREATEPROGRAMPROC;
// pub const PFNGLCREATESHADERPROC = ?extern fn (GLenum) GLuint;
// pub extern var glad_glCreateShader: PFNGLCREATESHADERPROC;
// pub const PFNGLDELETEPROGRAMPROC = ?extern fn (GLuint) void;
// pub extern var glad_glDeleteProgram: PFNGLDELETEPROGRAMPROC;
// pub const PFNGLDELETESHADERPROC = ?extern fn (GLuint) void;
// pub extern var glad_glDeleteShader: PFNGLDELETESHADERPROC;
// pub const PFNGLDETACHSHADERPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glDetachShader: PFNGLDETACHSHADERPROC;
// pub const PFNGLDISABLEVERTEXATTRIBARRAYPROC = ?extern fn (GLuint) void;
// pub extern var glad_glDisableVertexAttribArray: PFNGLDISABLEVERTEXATTRIBARRAYPROC;
// pub const PFNGLENABLEVERTEXATTRIBARRAYPROC = ?extern fn (GLuint) void;
// pub extern var glad_glEnableVertexAttribArray: PFNGLENABLEVERTEXATTRIBARRAYPROC;
// pub const PFNGLGETACTIVEATTRIBPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLint, [*c]GLenum, [*c]GLchar) void;
// pub extern var glad_glGetActiveAttrib: PFNGLGETACTIVEATTRIBPROC;
// pub const PFNGLGETACTIVEUNIFORMPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLint, [*c]GLenum, [*c]GLchar) void;
// pub extern var glad_glGetActiveUniform: PFNGLGETACTIVEUNIFORMPROC;
// pub const PFNGLGETATTACHEDSHADERSPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLuint) void;
// pub extern var glad_glGetAttachedShaders: PFNGLGETATTACHEDSHADERSPROC;
// pub const PFNGLGETATTRIBLOCATIONPROC = ?extern fn (GLuint, [*c]const GLchar) GLint;
// pub extern var glad_glGetAttribLocation: PFNGLGETATTRIBLOCATIONPROC;
// pub const PFNGLGETPROGRAMIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetProgramiv: PFNGLGETPROGRAMIVPROC;
// pub const PFNGLGETPROGRAMINFOLOGPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetProgramInfoLog: PFNGLGETPROGRAMINFOLOGPROC;
// pub const PFNGLGETSHADERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetShaderiv: PFNGLGETSHADERIVPROC;
// pub const PFNGLGETSHADERINFOLOGPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetShaderInfoLog: PFNGLGETSHADERINFOLOGPROC;
// pub const PFNGLGETSHADERSOURCEPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetShaderSource: PFNGLGETSHADERSOURCEPROC;
// pub const PFNGLGETUNIFORMLOCATIONPROC = ?extern fn (GLuint, [*c]const GLchar) GLint;
// pub extern var glad_glGetUniformLocation: PFNGLGETUNIFORMLOCATIONPROC;
// pub const PFNGLGETUNIFORMFVPROC = ?extern fn (GLuint, GLint, [*c]GLfloat) void;
// pub extern var glad_glGetUniformfv: PFNGLGETUNIFORMFVPROC;
// pub const PFNGLGETUNIFORMIVPROC = ?extern fn (GLuint, GLint, [*c]GLint) void;
// pub extern var glad_glGetUniformiv: PFNGLGETUNIFORMIVPROC;
// pub const PFNGLGETVERTEXATTRIBDVPROC = ?extern fn (GLuint, GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetVertexAttribdv: PFNGLGETVERTEXATTRIBDVPROC;
// pub const PFNGLGETVERTEXATTRIBFVPROC = ?extern fn (GLuint, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetVertexAttribfv: PFNGLGETVERTEXATTRIBFVPROC;
// pub const PFNGLGETVERTEXATTRIBIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetVertexAttribiv: PFNGLGETVERTEXATTRIBIVPROC;
// pub const PFNGLGETVERTEXATTRIBPOINTERVPROC = ?extern fn (GLuint, GLenum, [*c](?*c_void)) void;
// pub extern var glad_glGetVertexAttribPointerv: PFNGLGETVERTEXATTRIBPOINTERVPROC;
// pub const PFNGLISPROGRAMPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsProgram: PFNGLISPROGRAMPROC;
// pub const PFNGLISSHADERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsShader: PFNGLISSHADERPROC;
// pub const PFNGLLINKPROGRAMPROC = ?extern fn (GLuint) void;
// pub extern var glad_glLinkProgram: PFNGLLINKPROGRAMPROC;
// pub const PFNGLSHADERSOURCEPROC = ?extern fn (GLuint, GLsizei, [*c]const ([*c]const GLchar), [*c]const GLint) void;
// pub extern var glad_glShaderSource: PFNGLSHADERSOURCEPROC;
// pub const PFNGLUSEPROGRAMPROC = ?extern fn (GLuint) void;
// pub extern var glad_glUseProgram: PFNGLUSEPROGRAMPROC;
// pub const PFNGLUNIFORM1FPROC = ?extern fn (GLint, GLfloat) void;
// pub extern var glad_glUniform1f: PFNGLUNIFORM1FPROC;
// pub const PFNGLUNIFORM2FPROC = ?extern fn (GLint, GLfloat, GLfloat) void;
// pub extern var glad_glUniform2f: PFNGLUNIFORM2FPROC;
// pub const PFNGLUNIFORM3FPROC = ?extern fn (GLint, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glUniform3f: PFNGLUNIFORM3FPROC;
// pub const PFNGLUNIFORM4FPROC = ?extern fn (GLint, GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glUniform4f: PFNGLUNIFORM4FPROC;
// pub const PFNGLUNIFORM1IPROC = ?extern fn (GLint, GLint) void;
// pub extern var glad_glUniform1i: PFNGLUNIFORM1IPROC;
// pub const PFNGLUNIFORM2IPROC = ?extern fn (GLint, GLint, GLint) void;
// pub extern var glad_glUniform2i: PFNGLUNIFORM2IPROC;
// pub const PFNGLUNIFORM3IPROC = ?extern fn (GLint, GLint, GLint, GLint) void;
// pub extern var glad_glUniform3i: PFNGLUNIFORM3IPROC;
// pub const PFNGLUNIFORM4IPROC = ?extern fn (GLint, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glUniform4i: PFNGLUNIFORM4IPROC;
// pub const PFNGLUNIFORM1FVPROC = ?extern fn (GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glUniform1fv: PFNGLUNIFORM1FVPROC;
// pub const PFNGLUNIFORM2FVPROC = ?extern fn (GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glUniform2fv: PFNGLUNIFORM2FVPROC;
// pub const PFNGLUNIFORM3FVPROC = ?extern fn (GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glUniform3fv: PFNGLUNIFORM3FVPROC;
// pub const PFNGLUNIFORM4FVPROC = ?extern fn (GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glUniform4fv: PFNGLUNIFORM4FVPROC;
// pub const PFNGLUNIFORM1IVPROC = ?extern fn (GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glUniform1iv: PFNGLUNIFORM1IVPROC;
// pub const PFNGLUNIFORM2IVPROC = ?extern fn (GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glUniform2iv: PFNGLUNIFORM2IVPROC;
// pub const PFNGLUNIFORM3IVPROC = ?extern fn (GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glUniform3iv: PFNGLUNIFORM3IVPROC;
// pub const PFNGLUNIFORM4IVPROC = ?extern fn (GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glUniform4iv: PFNGLUNIFORM4IVPROC;
// pub const PFNGLUNIFORMMATRIX2FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix2fv: PFNGLUNIFORMMATRIX2FVPROC;
// pub const PFNGLUNIFORMMATRIX3FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix3fv: PFNGLUNIFORMMATRIX3FVPROC;
// pub const PFNGLUNIFORMMATRIX4FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix4fv: PFNGLUNIFORMMATRIX4FVPROC;
// pub const PFNGLVALIDATEPROGRAMPROC = ?extern fn (GLuint) void;
// pub extern var glad_glValidateProgram: PFNGLVALIDATEPROGRAMPROC;
// pub const PFNGLVERTEXATTRIB1DPROC = ?extern fn (GLuint, GLdouble) void;
// pub extern var glad_glVertexAttrib1d: PFNGLVERTEXATTRIB1DPROC;
// pub const PFNGLVERTEXATTRIB1DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttrib1dv: PFNGLVERTEXATTRIB1DVPROC;
// pub const PFNGLVERTEXATTRIB1FPROC = ?extern fn (GLuint, GLfloat) void;
// pub extern var glad_glVertexAttrib1f: PFNGLVERTEXATTRIB1FPROC;
// pub const PFNGLVERTEXATTRIB1FVPROC = ?extern fn (GLuint, [*c]const GLfloat) void;
// pub extern var glad_glVertexAttrib1fv: PFNGLVERTEXATTRIB1FVPROC;
// pub const PFNGLVERTEXATTRIB1SPROC = ?extern fn (GLuint, GLshort) void;
// pub extern var glad_glVertexAttrib1s: PFNGLVERTEXATTRIB1SPROC;
// pub const PFNGLVERTEXATTRIB1SVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttrib1sv: PFNGLVERTEXATTRIB1SVPROC;
// pub const PFNGLVERTEXATTRIB2DPROC = ?extern fn (GLuint, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttrib2d: PFNGLVERTEXATTRIB2DPROC;
// pub const PFNGLVERTEXATTRIB2DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttrib2dv: PFNGLVERTEXATTRIB2DVPROC;
// pub const PFNGLVERTEXATTRIB2FPROC = ?extern fn (GLuint, GLfloat, GLfloat) void;
// pub extern var glad_glVertexAttrib2f: PFNGLVERTEXATTRIB2FPROC;
// pub const PFNGLVERTEXATTRIB2FVPROC = ?extern fn (GLuint, [*c]const GLfloat) void;
// pub extern var glad_glVertexAttrib2fv: PFNGLVERTEXATTRIB2FVPROC;
// pub const PFNGLVERTEXATTRIB2SPROC = ?extern fn (GLuint, GLshort, GLshort) void;
// pub extern var glad_glVertexAttrib2s: PFNGLVERTEXATTRIB2SPROC;
// pub const PFNGLVERTEXATTRIB2SVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttrib2sv: PFNGLVERTEXATTRIB2SVPROC;
// pub const PFNGLVERTEXATTRIB3DPROC = ?extern fn (GLuint, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttrib3d: PFNGLVERTEXATTRIB3DPROC;
// pub const PFNGLVERTEXATTRIB3DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttrib3dv: PFNGLVERTEXATTRIB3DVPROC;
// pub const PFNGLVERTEXATTRIB3FPROC = ?extern fn (GLuint, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glVertexAttrib3f: PFNGLVERTEXATTRIB3FPROC;
// pub const PFNGLVERTEXATTRIB3FVPROC = ?extern fn (GLuint, [*c]const GLfloat) void;
// pub extern var glad_glVertexAttrib3fv: PFNGLVERTEXATTRIB3FVPROC;
// pub const PFNGLVERTEXATTRIB3SPROC = ?extern fn (GLuint, GLshort, GLshort, GLshort) void;
// pub extern var glad_glVertexAttrib3s: PFNGLVERTEXATTRIB3SPROC;
// pub const PFNGLVERTEXATTRIB3SVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttrib3sv: PFNGLVERTEXATTRIB3SVPROC;
// pub const PFNGLVERTEXATTRIB4NBVPROC = ?extern fn (GLuint, [*c]const GLbyte) void;
// pub extern var glad_glVertexAttrib4Nbv: PFNGLVERTEXATTRIB4NBVPROC;
// pub const PFNGLVERTEXATTRIB4NIVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttrib4Niv: PFNGLVERTEXATTRIB4NIVPROC;
// pub const PFNGLVERTEXATTRIB4NSVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttrib4Nsv: PFNGLVERTEXATTRIB4NSVPROC;
// pub const PFNGLVERTEXATTRIB4NUBPROC = ?extern fn (GLuint, GLubyte, GLubyte, GLubyte, GLubyte) void;
// pub extern var glad_glVertexAttrib4Nub: PFNGLVERTEXATTRIB4NUBPROC;
// pub const PFNGLVERTEXATTRIB4NUBVPROC = ?extern fn (GLuint, [*c]const GLubyte) void;
// pub extern var glad_glVertexAttrib4Nubv: PFNGLVERTEXATTRIB4NUBVPROC;
// pub const PFNGLVERTEXATTRIB4NUIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttrib4Nuiv: PFNGLVERTEXATTRIB4NUIVPROC;
// pub const PFNGLVERTEXATTRIB4NUSVPROC = ?extern fn (GLuint, [*c]const GLushort) void;
// pub extern var glad_glVertexAttrib4Nusv: PFNGLVERTEXATTRIB4NUSVPROC;
// pub const PFNGLVERTEXATTRIB4BVPROC = ?extern fn (GLuint, [*c]const GLbyte) void;
// pub extern var glad_glVertexAttrib4bv: PFNGLVERTEXATTRIB4BVPROC;
// pub const PFNGLVERTEXATTRIB4DPROC = ?extern fn (GLuint, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttrib4d: PFNGLVERTEXATTRIB4DPROC;
// pub const PFNGLVERTEXATTRIB4DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttrib4dv: PFNGLVERTEXATTRIB4DVPROC;
// pub const PFNGLVERTEXATTRIB4FPROC = ?extern fn (GLuint, GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glVertexAttrib4f: PFNGLVERTEXATTRIB4FPROC;
// pub const PFNGLVERTEXATTRIB4FVPROC = ?extern fn (GLuint, [*c]const GLfloat) void;
// pub extern var glad_glVertexAttrib4fv: PFNGLVERTEXATTRIB4FVPROC;
// pub const PFNGLVERTEXATTRIB4IVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttrib4iv: PFNGLVERTEXATTRIB4IVPROC;
// pub const PFNGLVERTEXATTRIB4SPROC = ?extern fn (GLuint, GLshort, GLshort, GLshort, GLshort) void;
// pub extern var glad_glVertexAttrib4s: PFNGLVERTEXATTRIB4SPROC;
// pub const PFNGLVERTEXATTRIB4SVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttrib4sv: PFNGLVERTEXATTRIB4SVPROC;
// pub const PFNGLVERTEXATTRIB4UBVPROC = ?extern fn (GLuint, [*c]const GLubyte) void;
// pub extern var glad_glVertexAttrib4ubv: PFNGLVERTEXATTRIB4UBVPROC;
// pub const PFNGLVERTEXATTRIB4UIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttrib4uiv: PFNGLVERTEXATTRIB4UIVPROC;
// pub const PFNGLVERTEXATTRIB4USVPROC = ?extern fn (GLuint, [*c]const GLushort) void;
// pub extern var glad_glVertexAttrib4usv: PFNGLVERTEXATTRIB4USVPROC;
// pub const PFNGLVERTEXATTRIBPOINTERPROC = ?extern fn (GLuint, GLint, GLenum, GLboolean, GLsizei, ?*const c_void) void;
// pub extern var glad_glVertexAttribPointer: PFNGLVERTEXATTRIBPOINTERPROC;
// pub extern var GLAD_GL_VERSION_2_1: c_int;
// pub const PFNGLUNIFORMMATRIX2X3FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix2x3fv: PFNGLUNIFORMMATRIX2X3FVPROC;
// pub const PFNGLUNIFORMMATRIX3X2FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix3x2fv: PFNGLUNIFORMMATRIX3X2FVPROC;
// pub const PFNGLUNIFORMMATRIX2X4FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix2x4fv: PFNGLUNIFORMMATRIX2X4FVPROC;
// pub const PFNGLUNIFORMMATRIX4X2FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix4x2fv: PFNGLUNIFORMMATRIX4X2FVPROC;
// pub const PFNGLUNIFORMMATRIX3X4FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix3x4fv: PFNGLUNIFORMMATRIX3X4FVPROC;
// pub const PFNGLUNIFORMMATRIX4X3FVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glUniformMatrix4x3fv: PFNGLUNIFORMMATRIX4X3FVPROC;
// pub extern var GLAD_GL_VERSION_3_0: c_int;
// pub const PFNGLCOLORMASKIPROC = ?extern fn (GLuint, GLboolean, GLboolean, GLboolean, GLboolean) void;
// pub extern var glad_glColorMaski: PFNGLCOLORMASKIPROC;
// pub const PFNGLGETBOOLEANI_VPROC = ?extern fn (GLenum, GLuint, [*c]GLboolean) void;
// pub extern var glad_glGetBooleani_v: PFNGLGETBOOLEANI_VPROC;
// pub const PFNGLGETINTEGERI_VPROC = ?extern fn (GLenum, GLuint, [*c]GLint) void;
// pub extern var glad_glGetIntegeri_v: PFNGLGETINTEGERI_VPROC;
// pub const PFNGLENABLEIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glEnablei: PFNGLENABLEIPROC;
// pub const PFNGLDISABLEIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glDisablei: PFNGLDISABLEIPROC;
// pub const PFNGLISENABLEDIPROC = ?extern fn (GLenum, GLuint) GLboolean;
// pub extern var glad_glIsEnabledi: PFNGLISENABLEDIPROC;
// pub const PFNGLBEGINTRANSFORMFEEDBACKPROC = ?extern fn (GLenum) void;
// pub extern var glad_glBeginTransformFeedback: PFNGLBEGINTRANSFORMFEEDBACKPROC;
// pub const PFNGLENDTRANSFORMFEEDBACKPROC = ?extern fn () void;
// pub extern var glad_glEndTransformFeedback: PFNGLENDTRANSFORMFEEDBACKPROC;
// pub const PFNGLBINDBUFFERRANGEPROC = ?extern fn (GLenum, GLuint, GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glBindBufferRange: PFNGLBINDBUFFERRANGEPROC;
// pub const PFNGLBINDBUFFERBASEPROC = ?extern fn (GLenum, GLuint, GLuint) void;
// pub extern var glad_glBindBufferBase: PFNGLBINDBUFFERBASEPROC;
// pub const PFNGLTRANSFORMFEEDBACKVARYINGSPROC = ?extern fn (GLuint, GLsizei, [*c]const ([*c]const GLchar), GLenum) void;
// pub extern var glad_glTransformFeedbackVaryings: PFNGLTRANSFORMFEEDBACKVARYINGSPROC;
// pub const PFNGLGETTRANSFORMFEEDBACKVARYINGPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLsizei, [*c]GLenum, [*c]GLchar) void;
// pub extern var glad_glGetTransformFeedbackVarying: PFNGLGETTRANSFORMFEEDBACKVARYINGPROC;
// pub const PFNGLCLAMPCOLORPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glClampColor: PFNGLCLAMPCOLORPROC;
// pub const PFNGLBEGINCONDITIONALRENDERPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glBeginConditionalRender: PFNGLBEGINCONDITIONALRENDERPROC;
// pub const PFNGLENDCONDITIONALRENDERPROC = ?extern fn () void;
// pub extern var glad_glEndConditionalRender: PFNGLENDCONDITIONALRENDERPROC;
// pub const PFNGLVERTEXATTRIBIPOINTERPROC = ?extern fn (GLuint, GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glVertexAttribIPointer: PFNGLVERTEXATTRIBIPOINTERPROC;
// pub const PFNGLGETVERTEXATTRIBIIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetVertexAttribIiv: PFNGLGETVERTEXATTRIBIIVPROC;
// pub const PFNGLGETVERTEXATTRIBIUIVPROC = ?extern fn (GLuint, GLenum, [*c]GLuint) void;
// pub extern var glad_glGetVertexAttribIuiv: PFNGLGETVERTEXATTRIBIUIVPROC;
// pub const PFNGLVERTEXATTRIBI1IPROC = ?extern fn (GLuint, GLint) void;
// pub extern var glad_glVertexAttribI1i: PFNGLVERTEXATTRIBI1IPROC;
// pub const PFNGLVERTEXATTRIBI2IPROC = ?extern fn (GLuint, GLint, GLint) void;
// pub extern var glad_glVertexAttribI2i: PFNGLVERTEXATTRIBI2IPROC;
// pub const PFNGLVERTEXATTRIBI3IPROC = ?extern fn (GLuint, GLint, GLint, GLint) void;
// pub extern var glad_glVertexAttribI3i: PFNGLVERTEXATTRIBI3IPROC;
// pub const PFNGLVERTEXATTRIBI4IPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glVertexAttribI4i: PFNGLVERTEXATTRIBI4IPROC;
// pub const PFNGLVERTEXATTRIBI1UIPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glVertexAttribI1ui: PFNGLVERTEXATTRIBI1UIPROC;
// pub const PFNGLVERTEXATTRIBI2UIPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glVertexAttribI2ui: PFNGLVERTEXATTRIBI2UIPROC;
// pub const PFNGLVERTEXATTRIBI3UIPROC = ?extern fn (GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glVertexAttribI3ui: PFNGLVERTEXATTRIBI3UIPROC;
// pub const PFNGLVERTEXATTRIBI4UIPROC = ?extern fn (GLuint, GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glVertexAttribI4ui: PFNGLVERTEXATTRIBI4UIPROC;
// pub const PFNGLVERTEXATTRIBI1IVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttribI1iv: PFNGLVERTEXATTRIBI1IVPROC;
// pub const PFNGLVERTEXATTRIBI2IVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttribI2iv: PFNGLVERTEXATTRIBI2IVPROC;
// pub const PFNGLVERTEXATTRIBI3IVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttribI3iv: PFNGLVERTEXATTRIBI3IVPROC;
// pub const PFNGLVERTEXATTRIBI4IVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glVertexAttribI4iv: PFNGLVERTEXATTRIBI4IVPROC;
// pub const PFNGLVERTEXATTRIBI1UIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribI1uiv: PFNGLVERTEXATTRIBI1UIVPROC;
// pub const PFNGLVERTEXATTRIBI2UIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribI2uiv: PFNGLVERTEXATTRIBI2UIVPROC;
// pub const PFNGLVERTEXATTRIBI3UIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribI3uiv: PFNGLVERTEXATTRIBI3UIVPROC;
// pub const PFNGLVERTEXATTRIBI4UIVPROC = ?extern fn (GLuint, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribI4uiv: PFNGLVERTEXATTRIBI4UIVPROC;
// pub const PFNGLVERTEXATTRIBI4BVPROC = ?extern fn (GLuint, [*c]const GLbyte) void;
// pub extern var glad_glVertexAttribI4bv: PFNGLVERTEXATTRIBI4BVPROC;
// pub const PFNGLVERTEXATTRIBI4SVPROC = ?extern fn (GLuint, [*c]const GLshort) void;
// pub extern var glad_glVertexAttribI4sv: PFNGLVERTEXATTRIBI4SVPROC;
// pub const PFNGLVERTEXATTRIBI4UBVPROC = ?extern fn (GLuint, [*c]const GLubyte) void;
// pub extern var glad_glVertexAttribI4ubv: PFNGLVERTEXATTRIBI4UBVPROC;
// pub const PFNGLVERTEXATTRIBI4USVPROC = ?extern fn (GLuint, [*c]const GLushort) void;
// pub extern var glad_glVertexAttribI4usv: PFNGLVERTEXATTRIBI4USVPROC;
// pub const PFNGLGETUNIFORMUIVPROC = ?extern fn (GLuint, GLint, [*c]GLuint) void;
// pub extern var glad_glGetUniformuiv: PFNGLGETUNIFORMUIVPROC;
// pub const PFNGLBINDFRAGDATALOCATIONPROC = ?extern fn (GLuint, GLuint, [*c]const GLchar) void;
// pub extern var glad_glBindFragDataLocation: PFNGLBINDFRAGDATALOCATIONPROC;
// pub const PFNGLGETFRAGDATALOCATIONPROC = ?extern fn (GLuint, [*c]const GLchar) GLint;
// pub extern var glad_glGetFragDataLocation: PFNGLGETFRAGDATALOCATIONPROC;
// pub const PFNGLUNIFORM1UIPROC = ?extern fn (GLint, GLuint) void;
// pub extern var glad_glUniform1ui: PFNGLUNIFORM1UIPROC;
// pub const PFNGLUNIFORM2UIPROC = ?extern fn (GLint, GLuint, GLuint) void;
// pub extern var glad_glUniform2ui: PFNGLUNIFORM2UIPROC;
// pub const PFNGLUNIFORM3UIPROC = ?extern fn (GLint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glUniform3ui: PFNGLUNIFORM3UIPROC;
// pub const PFNGLUNIFORM4UIPROC = ?extern fn (GLint, GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glUniform4ui: PFNGLUNIFORM4UIPROC;
// pub const PFNGLUNIFORM1UIVPROC = ?extern fn (GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glUniform1uiv: PFNGLUNIFORM1UIVPROC;
// pub const PFNGLUNIFORM2UIVPROC = ?extern fn (GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glUniform2uiv: PFNGLUNIFORM2UIVPROC;
// pub const PFNGLUNIFORM3UIVPROC = ?extern fn (GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glUniform3uiv: PFNGLUNIFORM3UIVPROC;
// pub const PFNGLUNIFORM4UIVPROC = ?extern fn (GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glUniform4uiv: PFNGLUNIFORM4UIVPROC;
// pub const PFNGLTEXPARAMETERIIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLint) void;
// pub extern var glad_glTexParameterIiv: PFNGLTEXPARAMETERIIVPROC;
// pub const PFNGLTEXPARAMETERIUIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLuint) void;
// pub extern var glad_glTexParameterIuiv: PFNGLTEXPARAMETERIUIVPROC;
// pub const PFNGLGETTEXPARAMETERIIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTexParameterIiv: PFNGLGETTEXPARAMETERIIVPROC;
// pub const PFNGLGETTEXPARAMETERIUIVPROC = ?extern fn (GLenum, GLenum, [*c]GLuint) void;
// pub extern var glad_glGetTexParameterIuiv: PFNGLGETTEXPARAMETERIUIVPROC;
// pub const PFNGLCLEARBUFFERIVPROC = ?extern fn (GLenum, GLint, [*c]const GLint) void;
// pub extern var glad_glClearBufferiv: PFNGLCLEARBUFFERIVPROC;
// pub const PFNGLCLEARBUFFERUIVPROC = ?extern fn (GLenum, GLint, [*c]const GLuint) void;
// pub extern var glad_glClearBufferuiv: PFNGLCLEARBUFFERUIVPROC;
// pub const PFNGLCLEARBUFFERFVPROC = ?extern fn (GLenum, GLint, [*c]const GLfloat) void;
// pub extern var glad_glClearBufferfv: PFNGLCLEARBUFFERFVPROC;
// pub const PFNGLCLEARBUFFERFIPROC = ?extern fn (GLenum, GLint, GLfloat, GLint) void;
// pub extern var glad_glClearBufferfi: PFNGLCLEARBUFFERFIPROC;
// pub const PFNGLGETSTRINGIPROC = ?extern fn (GLenum, GLuint) [*c]const GLubyte;
// pub extern var glad_glGetStringi: PFNGLGETSTRINGIPROC;
// pub const PFNGLISRENDERBUFFERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsRenderbuffer: PFNGLISRENDERBUFFERPROC;
// pub const PFNGLBINDRENDERBUFFERPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBindRenderbuffer: PFNGLBINDRENDERBUFFERPROC;
// pub const PFNGLDELETERENDERBUFFERSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteRenderbuffers: PFNGLDELETERENDERBUFFERSPROC;
// pub const PFNGLGENRENDERBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenRenderbuffers: PFNGLGENRENDERBUFFERSPROC;
// pub const PFNGLRENDERBUFFERSTORAGEPROC = ?extern fn (GLenum, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glRenderbufferStorage: PFNGLRENDERBUFFERSTORAGEPROC;
// pub const PFNGLGETRENDERBUFFERPARAMETERIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetRenderbufferParameteriv: PFNGLGETRENDERBUFFERPARAMETERIVPROC;
// pub const PFNGLISFRAMEBUFFERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsFramebuffer: PFNGLISFRAMEBUFFERPROC;
// pub const PFNGLBINDFRAMEBUFFERPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBindFramebuffer: PFNGLBINDFRAMEBUFFERPROC;
// pub const PFNGLDELETEFRAMEBUFFERSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteFramebuffers: PFNGLDELETEFRAMEBUFFERSPROC;
// pub const PFNGLGENFRAMEBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenFramebuffers: PFNGLGENFRAMEBUFFERSPROC;
// pub const PFNGLCHECKFRAMEBUFFERSTATUSPROC = ?extern fn (GLenum) GLenum;
// pub extern var glad_glCheckFramebufferStatus: PFNGLCHECKFRAMEBUFFERSTATUSPROC;
// pub const PFNGLFRAMEBUFFERTEXTURE1DPROC = ?extern fn (GLenum, GLenum, GLenum, GLuint, GLint) void;
// pub extern var glad_glFramebufferTexture1D: PFNGLFRAMEBUFFERTEXTURE1DPROC;
// pub const PFNGLFRAMEBUFFERTEXTURE2DPROC = ?extern fn (GLenum, GLenum, GLenum, GLuint, GLint) void;
// pub extern var glad_glFramebufferTexture2D: PFNGLFRAMEBUFFERTEXTURE2DPROC;
// pub const PFNGLFRAMEBUFFERTEXTURE3DPROC = ?extern fn (GLenum, GLenum, GLenum, GLuint, GLint, GLint) void;
// pub extern var glad_glFramebufferTexture3D: PFNGLFRAMEBUFFERTEXTURE3DPROC;
// pub const PFNGLFRAMEBUFFERRENDERBUFFERPROC = ?extern fn (GLenum, GLenum, GLenum, GLuint) void;
// pub extern var glad_glFramebufferRenderbuffer: PFNGLFRAMEBUFFERRENDERBUFFERPROC;
// pub const PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC = ?extern fn (GLenum, GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetFramebufferAttachmentParameteriv: PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC;
// pub const PFNGLGENERATEMIPMAPPROC = ?extern fn (GLenum) void;
// pub extern var glad_glGenerateMipmap: PFNGLGENERATEMIPMAPPROC;
// pub const PFNGLBLITFRAMEBUFFERPROC = ?extern fn (GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum) void;
// pub extern var glad_glBlitFramebuffer: PFNGLBLITFRAMEBUFFERPROC;
// pub const PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glRenderbufferStorageMultisample: PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC;
// pub const PFNGLFRAMEBUFFERTEXTURELAYERPROC = ?extern fn (GLenum, GLenum, GLuint, GLint, GLint) void;
// pub extern var glad_glFramebufferTextureLayer: PFNGLFRAMEBUFFERTEXTURELAYERPROC;
// pub const PFNGLMAPBUFFERRANGEPROC = ?extern fn (GLenum, GLintptr, GLsizeiptr, GLbitfield) ?*c_void;
// pub extern var glad_glMapBufferRange: PFNGLMAPBUFFERRANGEPROC;
// pub const PFNGLFLUSHMAPPEDBUFFERRANGEPROC = ?extern fn (GLenum, GLintptr, GLsizeiptr) void;
// pub extern var glad_glFlushMappedBufferRange: PFNGLFLUSHMAPPEDBUFFERRANGEPROC;
// pub const PFNGLBINDVERTEXARRAYPROC = ?extern fn (GLuint) void;
// pub extern var glad_glBindVertexArray: PFNGLBINDVERTEXARRAYPROC;
// pub const PFNGLDELETEVERTEXARRAYSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteVertexArrays: PFNGLDELETEVERTEXARRAYSPROC;
// pub const PFNGLGENVERTEXARRAYSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenVertexArrays: PFNGLGENVERTEXARRAYSPROC;
// pub const PFNGLISVERTEXARRAYPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsVertexArray: PFNGLISVERTEXARRAYPROC;
// pub extern var GLAD_GL_VERSION_3_1: c_int;
// pub const PFNGLDRAWARRAYSINSTANCEDPROC = ?extern fn (GLenum, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glDrawArraysInstanced: PFNGLDRAWARRAYSINSTANCEDPROC;
// pub const PFNGLDRAWELEMENTSINSTANCEDPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void, GLsizei) void;
// pub extern var glad_glDrawElementsInstanced: PFNGLDRAWELEMENTSINSTANCEDPROC;
// pub const PFNGLTEXBUFFERPROC = ?extern fn (GLenum, GLenum, GLuint) void;
// pub extern var glad_glTexBuffer: PFNGLTEXBUFFERPROC;
// pub const PFNGLPRIMITIVERESTARTINDEXPROC = ?extern fn (GLuint) void;
// pub extern var glad_glPrimitiveRestartIndex: PFNGLPRIMITIVERESTARTINDEXPROC;
// pub const PFNGLCOPYBUFFERSUBDATAPROC = ?extern fn (GLenum, GLenum, GLintptr, GLintptr, GLsizeiptr) void;
// pub extern var glad_glCopyBufferSubData: PFNGLCOPYBUFFERSUBDATAPROC;
// pub const PFNGLGETUNIFORMINDICESPROC = ?extern fn (GLuint, GLsizei, [*c]const ([*c]const GLchar), [*c]GLuint) void;
// pub extern var glad_glGetUniformIndices: PFNGLGETUNIFORMINDICESPROC;
// pub const PFNGLGETACTIVEUNIFORMSIVPROC = ?extern fn (GLuint, GLsizei, [*c]const GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetActiveUniformsiv: PFNGLGETACTIVEUNIFORMSIVPROC;
// pub const PFNGLGETACTIVEUNIFORMNAMEPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetActiveUniformName: PFNGLGETACTIVEUNIFORMNAMEPROC;
// pub const PFNGLGETUNIFORMBLOCKINDEXPROC = ?extern fn (GLuint, [*c]const GLchar) GLuint;
// pub extern var glad_glGetUniformBlockIndex: PFNGLGETUNIFORMBLOCKINDEXPROC;
// pub const PFNGLGETACTIVEUNIFORMBLOCKIVPROC = ?extern fn (GLuint, GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetActiveUniformBlockiv: PFNGLGETACTIVEUNIFORMBLOCKIVPROC;
// pub const PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetActiveUniformBlockName: PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC;
// pub const PFNGLUNIFORMBLOCKBINDINGPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glUniformBlockBinding: PFNGLUNIFORMBLOCKBINDINGPROC;
// pub extern var GLAD_GL_VERSION_3_2: c_int;
// pub const PFNGLDRAWELEMENTSBASEVERTEXPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void, GLint) void;
// pub extern var glad_glDrawElementsBaseVertex: PFNGLDRAWELEMENTSBASEVERTEXPROC;
// pub const PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC = ?extern fn (GLenum, GLuint, GLuint, GLsizei, GLenum, ?*const c_void, GLint) void;
// pub extern var glad_glDrawRangeElementsBaseVertex: PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC;
// pub const PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void, GLsizei, GLint) void;
// pub extern var glad_glDrawElementsInstancedBaseVertex: PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC;
// pub const PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC = ?extern fn (GLenum, [*c]const GLsizei, GLenum, [*c]const (?*const c_void), GLsizei, [*c]const GLint) void;
// pub extern var glad_glMultiDrawElementsBaseVertex: PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC;
// pub const PFNGLPROVOKINGVERTEXPROC = ?extern fn (GLenum) void;
// pub extern var glad_glProvokingVertex: PFNGLPROVOKINGVERTEXPROC;
// pub const PFNGLFENCESYNCPROC = ?extern fn (GLenum, GLbitfield) GLsync;
// pub extern var glad_glFenceSync: PFNGLFENCESYNCPROC;
// pub const PFNGLISSYNCPROC = ?extern fn (GLsync) GLboolean;
// pub extern var glad_glIsSync: PFNGLISSYNCPROC;
// pub const PFNGLDELETESYNCPROC = ?extern fn (GLsync) void;
// pub extern var glad_glDeleteSync: PFNGLDELETESYNCPROC;
// pub const PFNGLCLIENTWAITSYNCPROC = ?extern fn (GLsync, GLbitfield, GLuint64) GLenum;
// pub extern var glad_glClientWaitSync: PFNGLCLIENTWAITSYNCPROC;
// pub const PFNGLWAITSYNCPROC = ?extern fn (GLsync, GLbitfield, GLuint64) void;
// pub extern var glad_glWaitSync: PFNGLWAITSYNCPROC;
// pub const PFNGLGETINTEGER64VPROC = ?extern fn (GLenum, [*c]GLint64) void;
// pub extern var glad_glGetInteger64v: PFNGLGETINTEGER64VPROC;
// pub const PFNGLGETSYNCIVPROC = ?extern fn (GLsync, GLenum, GLsizei, [*c]GLsizei, [*c]GLint) void;
// pub extern var glad_glGetSynciv: PFNGLGETSYNCIVPROC;
// pub const PFNGLGETINTEGER64I_VPROC = ?extern fn (GLenum, GLuint, [*c]GLint64) void;
// pub extern var glad_glGetInteger64i_v: PFNGLGETINTEGER64I_VPROC;
// pub const PFNGLGETBUFFERPARAMETERI64VPROC = ?extern fn (GLenum, GLenum, [*c]GLint64) void;
// pub extern var glad_glGetBufferParameteri64v: PFNGLGETBUFFERPARAMETERI64VPROC;
// pub const PFNGLFRAMEBUFFERTEXTUREPROC = ?extern fn (GLenum, GLenum, GLuint, GLint) void;
// pub extern var glad_glFramebufferTexture: PFNGLFRAMEBUFFERTEXTUREPROC;
// pub const PFNGLTEXIMAGE2DMULTISAMPLEPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTexImage2DMultisample: PFNGLTEXIMAGE2DMULTISAMPLEPROC;
// pub const PFNGLTEXIMAGE3DMULTISAMPLEPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTexImage3DMultisample: PFNGLTEXIMAGE3DMULTISAMPLEPROC;
// pub const PFNGLGETMULTISAMPLEFVPROC = ?extern fn (GLenum, GLuint, [*c]GLfloat) void;
// pub extern var glad_glGetMultisamplefv: PFNGLGETMULTISAMPLEFVPROC;
// pub const PFNGLSAMPLEMASKIPROC = ?extern fn (GLuint, GLbitfield) void;
// pub extern var glad_glSampleMaski: PFNGLSAMPLEMASKIPROC;
// pub extern var GLAD_GL_VERSION_3_3: c_int;
// pub const PFNGLBINDFRAGDATALOCATIONINDEXEDPROC = ?extern fn (GLuint, GLuint, GLuint, [*c]const GLchar) void;
// pub extern var glad_glBindFragDataLocationIndexed: PFNGLBINDFRAGDATALOCATIONINDEXEDPROC;
// pub const PFNGLGETFRAGDATAINDEXPROC = ?extern fn (GLuint, [*c]const GLchar) GLint;
// pub extern var glad_glGetFragDataIndex: PFNGLGETFRAGDATAINDEXPROC;
// pub const PFNGLGENSAMPLERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenSamplers: PFNGLGENSAMPLERSPROC;
// pub const PFNGLDELETESAMPLERSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteSamplers: PFNGLDELETESAMPLERSPROC;
// pub const PFNGLISSAMPLERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsSampler: PFNGLISSAMPLERPROC;
// pub const PFNGLBINDSAMPLERPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glBindSampler: PFNGLBINDSAMPLERPROC;
// pub const PFNGLSAMPLERPARAMETERIPROC = ?extern fn (GLuint, GLenum, GLint) void;
// pub extern var glad_glSamplerParameteri: PFNGLSAMPLERPARAMETERIPROC;
// pub const PFNGLSAMPLERPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLint) void;
// pub extern var glad_glSamplerParameteriv: PFNGLSAMPLERPARAMETERIVPROC;
// pub const PFNGLSAMPLERPARAMETERFPROC = ?extern fn (GLuint, GLenum, GLfloat) void;
// pub extern var glad_glSamplerParameterf: PFNGLSAMPLERPARAMETERFPROC;
// pub const PFNGLSAMPLERPARAMETERFVPROC = ?extern fn (GLuint, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glSamplerParameterfv: PFNGLSAMPLERPARAMETERFVPROC;
// pub const PFNGLSAMPLERPARAMETERIIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLint) void;
// pub extern var glad_glSamplerParameterIiv: PFNGLSAMPLERPARAMETERIIVPROC;
// pub const PFNGLSAMPLERPARAMETERIUIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLuint) void;
// pub extern var glad_glSamplerParameterIuiv: PFNGLSAMPLERPARAMETERIUIVPROC;
// pub const PFNGLGETSAMPLERPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetSamplerParameteriv: PFNGLGETSAMPLERPARAMETERIVPROC;
// pub const PFNGLGETSAMPLERPARAMETERIIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetSamplerParameterIiv: PFNGLGETSAMPLERPARAMETERIIVPROC;
// pub const PFNGLGETSAMPLERPARAMETERFVPROC = ?extern fn (GLuint, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetSamplerParameterfv: PFNGLGETSAMPLERPARAMETERFVPROC;
// pub const PFNGLGETSAMPLERPARAMETERIUIVPROC = ?extern fn (GLuint, GLenum, [*c]GLuint) void;
// pub extern var glad_glGetSamplerParameterIuiv: PFNGLGETSAMPLERPARAMETERIUIVPROC;
// pub const PFNGLQUERYCOUNTERPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glQueryCounter: PFNGLQUERYCOUNTERPROC;
// pub const PFNGLGETQUERYOBJECTI64VPROC = ?extern fn (GLuint, GLenum, [*c]GLint64) void;
// pub extern var glad_glGetQueryObjecti64v: PFNGLGETQUERYOBJECTI64VPROC;
// pub const PFNGLGETQUERYOBJECTUI64VPROC = ?extern fn (GLuint, GLenum, [*c]GLuint64) void;
// pub extern var glad_glGetQueryObjectui64v: PFNGLGETQUERYOBJECTUI64VPROC;
// pub const PFNGLVERTEXATTRIBDIVISORPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glVertexAttribDivisor: PFNGLVERTEXATTRIBDIVISORPROC;
// pub const PFNGLVERTEXATTRIBP1UIPROC = ?extern fn (GLuint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexAttribP1ui: PFNGLVERTEXATTRIBP1UIPROC;
// pub const PFNGLVERTEXATTRIBP1UIVPROC = ?extern fn (GLuint, GLenum, GLboolean, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribP1uiv: PFNGLVERTEXATTRIBP1UIVPROC;
// pub const PFNGLVERTEXATTRIBP2UIPROC = ?extern fn (GLuint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexAttribP2ui: PFNGLVERTEXATTRIBP2UIPROC;
// pub const PFNGLVERTEXATTRIBP2UIVPROC = ?extern fn (GLuint, GLenum, GLboolean, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribP2uiv: PFNGLVERTEXATTRIBP2UIVPROC;
// pub const PFNGLVERTEXATTRIBP3UIPROC = ?extern fn (GLuint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexAttribP3ui: PFNGLVERTEXATTRIBP3UIPROC;
// pub const PFNGLVERTEXATTRIBP3UIVPROC = ?extern fn (GLuint, GLenum, GLboolean, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribP3uiv: PFNGLVERTEXATTRIBP3UIVPROC;
// pub const PFNGLVERTEXATTRIBP4UIPROC = ?extern fn (GLuint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexAttribP4ui: PFNGLVERTEXATTRIBP4UIPROC;
// pub const PFNGLVERTEXATTRIBP4UIVPROC = ?extern fn (GLuint, GLenum, GLboolean, [*c]const GLuint) void;
// pub extern var glad_glVertexAttribP4uiv: PFNGLVERTEXATTRIBP4UIVPROC;
// pub const PFNGLVERTEXP2UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glVertexP2ui: PFNGLVERTEXP2UIPROC;
// pub const PFNGLVERTEXP2UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glVertexP2uiv: PFNGLVERTEXP2UIVPROC;
// pub const PFNGLVERTEXP3UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glVertexP3ui: PFNGLVERTEXP3UIPROC;
// pub const PFNGLVERTEXP3UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glVertexP3uiv: PFNGLVERTEXP3UIVPROC;
// pub const PFNGLVERTEXP4UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glVertexP4ui: PFNGLVERTEXP4UIPROC;
// pub const PFNGLVERTEXP4UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glVertexP4uiv: PFNGLVERTEXP4UIVPROC;
// pub const PFNGLTEXCOORDP1UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glTexCoordP1ui: PFNGLTEXCOORDP1UIPROC;
// pub const PFNGLTEXCOORDP1UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glTexCoordP1uiv: PFNGLTEXCOORDP1UIVPROC;
// pub const PFNGLTEXCOORDP2UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glTexCoordP2ui: PFNGLTEXCOORDP2UIPROC;
// pub const PFNGLTEXCOORDP2UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glTexCoordP2uiv: PFNGLTEXCOORDP2UIVPROC;
// pub const PFNGLTEXCOORDP3UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glTexCoordP3ui: PFNGLTEXCOORDP3UIPROC;
// pub const PFNGLTEXCOORDP3UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glTexCoordP3uiv: PFNGLTEXCOORDP3UIVPROC;
// pub const PFNGLTEXCOORDP4UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glTexCoordP4ui: PFNGLTEXCOORDP4UIPROC;
// pub const PFNGLTEXCOORDP4UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glTexCoordP4uiv: PFNGLTEXCOORDP4UIVPROC;
// pub const PFNGLMULTITEXCOORDP1UIPROC = ?extern fn (GLenum, GLenum, GLuint) void;
// pub extern var glad_glMultiTexCoordP1ui: PFNGLMULTITEXCOORDP1UIPROC;
// pub const PFNGLMULTITEXCOORDP1UIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLuint) void;
// pub extern var glad_glMultiTexCoordP1uiv: PFNGLMULTITEXCOORDP1UIVPROC;
// pub const PFNGLMULTITEXCOORDP2UIPROC = ?extern fn (GLenum, GLenum, GLuint) void;
// pub extern var glad_glMultiTexCoordP2ui: PFNGLMULTITEXCOORDP2UIPROC;
// pub const PFNGLMULTITEXCOORDP2UIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLuint) void;
// pub extern var glad_glMultiTexCoordP2uiv: PFNGLMULTITEXCOORDP2UIVPROC;
// pub const PFNGLMULTITEXCOORDP3UIPROC = ?extern fn (GLenum, GLenum, GLuint) void;
// pub extern var glad_glMultiTexCoordP3ui: PFNGLMULTITEXCOORDP3UIPROC;
// pub const PFNGLMULTITEXCOORDP3UIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLuint) void;
// pub extern var glad_glMultiTexCoordP3uiv: PFNGLMULTITEXCOORDP3UIVPROC;
// pub const PFNGLMULTITEXCOORDP4UIPROC = ?extern fn (GLenum, GLenum, GLuint) void;
// pub extern var glad_glMultiTexCoordP4ui: PFNGLMULTITEXCOORDP4UIPROC;
// pub const PFNGLMULTITEXCOORDP4UIVPROC = ?extern fn (GLenum, GLenum, [*c]const GLuint) void;
// pub extern var glad_glMultiTexCoordP4uiv: PFNGLMULTITEXCOORDP4UIVPROC;
// pub const PFNGLNORMALP3UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glNormalP3ui: PFNGLNORMALP3UIPROC;
// pub const PFNGLNORMALP3UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glNormalP3uiv: PFNGLNORMALP3UIVPROC;
// pub const PFNGLCOLORP3UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glColorP3ui: PFNGLCOLORP3UIPROC;
// pub const PFNGLCOLORP3UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glColorP3uiv: PFNGLCOLORP3UIVPROC;
// pub const PFNGLCOLORP4UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glColorP4ui: PFNGLCOLORP4UIPROC;
// pub const PFNGLCOLORP4UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glColorP4uiv: PFNGLCOLORP4UIVPROC;
// pub const PFNGLSECONDARYCOLORP3UIPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glSecondaryColorP3ui: PFNGLSECONDARYCOLORP3UIPROC;
// pub const PFNGLSECONDARYCOLORP3UIVPROC = ?extern fn (GLenum, [*c]const GLuint) void;
// pub extern var glad_glSecondaryColorP3uiv: PFNGLSECONDARYCOLORP3UIVPROC;
// pub extern var GLAD_GL_VERSION_4_0: c_int;
// pub const PFNGLMINSAMPLESHADINGPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glMinSampleShading: PFNGLMINSAMPLESHADINGPROC;
// pub const PFNGLBLENDEQUATIONIPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glBlendEquationi: PFNGLBLENDEQUATIONIPROC;
// pub const PFNGLBLENDEQUATIONSEPARATEIPROC = ?extern fn (GLuint, GLenum, GLenum) void;
// pub extern var glad_glBlendEquationSeparatei: PFNGLBLENDEQUATIONSEPARATEIPROC;
// pub const PFNGLBLENDFUNCIPROC = ?extern fn (GLuint, GLenum, GLenum) void;
// pub extern var glad_glBlendFunci: PFNGLBLENDFUNCIPROC;
// pub const PFNGLBLENDFUNCSEPARATEIPROC = ?extern fn (GLuint, GLenum, GLenum, GLenum, GLenum) void;
// pub extern var glad_glBlendFuncSeparatei: PFNGLBLENDFUNCSEPARATEIPROC;
// pub const PFNGLDRAWARRAYSINDIRECTPROC = ?extern fn (GLenum, ?*const c_void) void;
// pub extern var glad_glDrawArraysIndirect: PFNGLDRAWARRAYSINDIRECTPROC;
// pub const PFNGLDRAWELEMENTSINDIRECTPROC = ?extern fn (GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glDrawElementsIndirect: PFNGLDRAWELEMENTSINDIRECTPROC;
// pub const PFNGLUNIFORM1DPROC = ?extern fn (GLint, GLdouble) void;
// pub extern var glad_glUniform1d: PFNGLUNIFORM1DPROC;
// pub const PFNGLUNIFORM2DPROC = ?extern fn (GLint, GLdouble, GLdouble) void;
// pub extern var glad_glUniform2d: PFNGLUNIFORM2DPROC;
// pub const PFNGLUNIFORM3DPROC = ?extern fn (GLint, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glUniform3d: PFNGLUNIFORM3DPROC;
// pub const PFNGLUNIFORM4DPROC = ?extern fn (GLint, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glUniform4d: PFNGLUNIFORM4DPROC;
// pub const PFNGLUNIFORM1DVPROC = ?extern fn (GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glUniform1dv: PFNGLUNIFORM1DVPROC;
// pub const PFNGLUNIFORM2DVPROC = ?extern fn (GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glUniform2dv: PFNGLUNIFORM2DVPROC;
// pub const PFNGLUNIFORM3DVPROC = ?extern fn (GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glUniform3dv: PFNGLUNIFORM3DVPROC;
// pub const PFNGLUNIFORM4DVPROC = ?extern fn (GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glUniform4dv: PFNGLUNIFORM4DVPROC;
// pub const PFNGLUNIFORMMATRIX2DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix2dv: PFNGLUNIFORMMATRIX2DVPROC;
// pub const PFNGLUNIFORMMATRIX3DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix3dv: PFNGLUNIFORMMATRIX3DVPROC;
// pub const PFNGLUNIFORMMATRIX4DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix4dv: PFNGLUNIFORMMATRIX4DVPROC;
// pub const PFNGLUNIFORMMATRIX2X3DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix2x3dv: PFNGLUNIFORMMATRIX2X3DVPROC;
// pub const PFNGLUNIFORMMATRIX2X4DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix2x4dv: PFNGLUNIFORMMATRIX2X4DVPROC;
// pub const PFNGLUNIFORMMATRIX3X2DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix3x2dv: PFNGLUNIFORMMATRIX3X2DVPROC;
// pub const PFNGLUNIFORMMATRIX3X4DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix3x4dv: PFNGLUNIFORMMATRIX3X4DVPROC;
// pub const PFNGLUNIFORMMATRIX4X2DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix4x2dv: PFNGLUNIFORMMATRIX4X2DVPROC;
// pub const PFNGLUNIFORMMATRIX4X3DVPROC = ?extern fn (GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glUniformMatrix4x3dv: PFNGLUNIFORMMATRIX4X3DVPROC;
// pub const PFNGLGETUNIFORMDVPROC = ?extern fn (GLuint, GLint, [*c]GLdouble) void;
// pub extern var glad_glGetUniformdv: PFNGLGETUNIFORMDVPROC;
// pub const PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC = ?extern fn (GLuint, GLenum, [*c]const GLchar) GLint;
// pub extern var glad_glGetSubroutineUniformLocation: PFNGLGETSUBROUTINEUNIFORMLOCATIONPROC;
// pub const PFNGLGETSUBROUTINEINDEXPROC = ?extern fn (GLuint, GLenum, [*c]const GLchar) GLuint;
// pub extern var glad_glGetSubroutineIndex: PFNGLGETSUBROUTINEINDEXPROC;
// pub const PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC = ?extern fn (GLuint, GLenum, GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetActiveSubroutineUniformiv: PFNGLGETACTIVESUBROUTINEUNIFORMIVPROC;
// pub const PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC = ?extern fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetActiveSubroutineUniformName: PFNGLGETACTIVESUBROUTINEUNIFORMNAMEPROC;
// pub const PFNGLGETACTIVESUBROUTINENAMEPROC = ?extern fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetActiveSubroutineName: PFNGLGETACTIVESUBROUTINENAMEPROC;
// pub const PFNGLUNIFORMSUBROUTINESUIVPROC = ?extern fn (GLenum, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glUniformSubroutinesuiv: PFNGLUNIFORMSUBROUTINESUIVPROC;
// pub const PFNGLGETUNIFORMSUBROUTINEUIVPROC = ?extern fn (GLenum, GLint, [*c]GLuint) void;
// pub extern var glad_glGetUniformSubroutineuiv: PFNGLGETUNIFORMSUBROUTINEUIVPROC;
// pub const PFNGLGETPROGRAMSTAGEIVPROC = ?extern fn (GLuint, GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetProgramStageiv: PFNGLGETPROGRAMSTAGEIVPROC;
// pub const PFNGLPATCHPARAMETERIPROC = ?extern fn (GLenum, GLint) void;
// pub extern var glad_glPatchParameteri: PFNGLPATCHPARAMETERIPROC;
// pub const PFNGLPATCHPARAMETERFVPROC = ?extern fn (GLenum, [*c]const GLfloat) void;
// pub extern var glad_glPatchParameterfv: PFNGLPATCHPARAMETERFVPROC;
// pub const PFNGLBINDTRANSFORMFEEDBACKPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glBindTransformFeedback: PFNGLBINDTRANSFORMFEEDBACKPROC;
// pub const PFNGLDELETETRANSFORMFEEDBACKSPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteTransformFeedbacks: PFNGLDELETETRANSFORMFEEDBACKSPROC;
// pub const PFNGLGENTRANSFORMFEEDBACKSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenTransformFeedbacks: PFNGLGENTRANSFORMFEEDBACKSPROC;
// pub const PFNGLISTRANSFORMFEEDBACKPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsTransformFeedback: PFNGLISTRANSFORMFEEDBACKPROC;
// pub const PFNGLPAUSETRANSFORMFEEDBACKPROC = ?extern fn () void;
// pub extern var glad_glPauseTransformFeedback: PFNGLPAUSETRANSFORMFEEDBACKPROC;
// pub const PFNGLRESUMETRANSFORMFEEDBACKPROC = ?extern fn () void;
// pub extern var glad_glResumeTransformFeedback: PFNGLRESUMETRANSFORMFEEDBACKPROC;
// pub const PFNGLDRAWTRANSFORMFEEDBACKPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glDrawTransformFeedback: PFNGLDRAWTRANSFORMFEEDBACKPROC;
// pub const PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC = ?extern fn (GLenum, GLuint, GLuint) void;
// pub extern var glad_glDrawTransformFeedbackStream: PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC;
// pub const PFNGLBEGINQUERYINDEXEDPROC = ?extern fn (GLenum, GLuint, GLuint) void;
// pub extern var glad_glBeginQueryIndexed: PFNGLBEGINQUERYINDEXEDPROC;
// pub const PFNGLENDQUERYINDEXEDPROC = ?extern fn (GLenum, GLuint) void;
// pub extern var glad_glEndQueryIndexed: PFNGLENDQUERYINDEXEDPROC;
// pub const PFNGLGETQUERYINDEXEDIVPROC = ?extern fn (GLenum, GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetQueryIndexediv: PFNGLGETQUERYINDEXEDIVPROC;
// pub extern var GLAD_GL_VERSION_4_1: c_int;
// pub const PFNGLRELEASESHADERCOMPILERPROC = ?extern fn () void;
// pub extern var glad_glReleaseShaderCompiler: PFNGLRELEASESHADERCOMPILERPROC;
// pub const PFNGLSHADERBINARYPROC = ?extern fn (GLsizei, [*c]const GLuint, GLenum, ?*const c_void, GLsizei) void;
// pub extern var glad_glShaderBinary: PFNGLSHADERBINARYPROC;
// pub const PFNGLGETSHADERPRECISIONFORMATPROC = ?extern fn (GLenum, GLenum, [*c]GLint, [*c]GLint) void;
// pub extern var glad_glGetShaderPrecisionFormat: PFNGLGETSHADERPRECISIONFORMATPROC;
// pub const PFNGLDEPTHRANGEFPROC = ?extern fn (GLfloat, GLfloat) void;
// pub extern var glad_glDepthRangef: PFNGLDEPTHRANGEFPROC;
// pub const PFNGLCLEARDEPTHFPROC = ?extern fn (GLfloat) void;
// pub extern var glad_glClearDepthf: PFNGLCLEARDEPTHFPROC;
// pub const PFNGLGETPROGRAMBINARYPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLenum, ?*c_void) void;
// pub extern var glad_glGetProgramBinary: PFNGLGETPROGRAMBINARYPROC;
// pub const PFNGLPROGRAMBINARYPROC = ?extern fn (GLuint, GLenum, ?*const c_void, GLsizei) void;
// pub extern var glad_glProgramBinary: PFNGLPROGRAMBINARYPROC;
// pub const PFNGLPROGRAMPARAMETERIPROC = ?extern fn (GLuint, GLenum, GLint) void;
// pub extern var glad_glProgramParameteri: PFNGLPROGRAMPARAMETERIPROC;
// pub const PFNGLUSEPROGRAMSTAGESPROC = ?extern fn (GLuint, GLbitfield, GLuint) void;
// pub extern var glad_glUseProgramStages: PFNGLUSEPROGRAMSTAGESPROC;
// pub const PFNGLACTIVESHADERPROGRAMPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glActiveShaderProgram: PFNGLACTIVESHADERPROGRAMPROC;
// pub const PFNGLCREATESHADERPROGRAMVPROC = ?extern fn (GLenum, GLsizei, [*c]const ([*c]const GLchar)) GLuint;
// pub extern var glad_glCreateShaderProgramv: PFNGLCREATESHADERPROGRAMVPROC;
// pub const PFNGLBINDPROGRAMPIPELINEPROC = ?extern fn (GLuint) void;
// pub extern var glad_glBindProgramPipeline: PFNGLBINDPROGRAMPIPELINEPROC;
// pub const PFNGLDELETEPROGRAMPIPELINESPROC = ?extern fn (GLsizei, [*c]const GLuint) void;
// pub extern var glad_glDeleteProgramPipelines: PFNGLDELETEPROGRAMPIPELINESPROC;
// pub const PFNGLGENPROGRAMPIPELINESPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glGenProgramPipelines: PFNGLGENPROGRAMPIPELINESPROC;
// pub const PFNGLISPROGRAMPIPELINEPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glIsProgramPipeline: PFNGLISPROGRAMPIPELINEPROC;
// pub const PFNGLGETPROGRAMPIPELINEIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetProgramPipelineiv: PFNGLGETPROGRAMPIPELINEIVPROC;
// pub const PFNGLPROGRAMUNIFORM1IPROC = ?extern fn (GLuint, GLint, GLint) void;
// pub extern var glad_glProgramUniform1i: PFNGLPROGRAMUNIFORM1IPROC;
// pub const PFNGLPROGRAMUNIFORM1IVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glProgramUniform1iv: PFNGLPROGRAMUNIFORM1IVPROC;
// pub const PFNGLPROGRAMUNIFORM1FPROC = ?extern fn (GLuint, GLint, GLfloat) void;
// pub extern var glad_glProgramUniform1f: PFNGLPROGRAMUNIFORM1FPROC;
// pub const PFNGLPROGRAMUNIFORM1FVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniform1fv: PFNGLPROGRAMUNIFORM1FVPROC;
// pub const PFNGLPROGRAMUNIFORM1DPROC = ?extern fn (GLuint, GLint, GLdouble) void;
// pub extern var glad_glProgramUniform1d: PFNGLPROGRAMUNIFORM1DPROC;
// pub const PFNGLPROGRAMUNIFORM1DVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniform1dv: PFNGLPROGRAMUNIFORM1DVPROC;
// pub const PFNGLPROGRAMUNIFORM1UIPROC = ?extern fn (GLuint, GLint, GLuint) void;
// pub extern var glad_glProgramUniform1ui: PFNGLPROGRAMUNIFORM1UIPROC;
// pub const PFNGLPROGRAMUNIFORM1UIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glProgramUniform1uiv: PFNGLPROGRAMUNIFORM1UIVPROC;
// pub const PFNGLPROGRAMUNIFORM2IPROC = ?extern fn (GLuint, GLint, GLint, GLint) void;
// pub extern var glad_glProgramUniform2i: PFNGLPROGRAMUNIFORM2IPROC;
// pub const PFNGLPROGRAMUNIFORM2IVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glProgramUniform2iv: PFNGLPROGRAMUNIFORM2IVPROC;
// pub const PFNGLPROGRAMUNIFORM2FPROC = ?extern fn (GLuint, GLint, GLfloat, GLfloat) void;
// pub extern var glad_glProgramUniform2f: PFNGLPROGRAMUNIFORM2FPROC;
// pub const PFNGLPROGRAMUNIFORM2FVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniform2fv: PFNGLPROGRAMUNIFORM2FVPROC;
// pub const PFNGLPROGRAMUNIFORM2DPROC = ?extern fn (GLuint, GLint, GLdouble, GLdouble) void;
// pub extern var glad_glProgramUniform2d: PFNGLPROGRAMUNIFORM2DPROC;
// pub const PFNGLPROGRAMUNIFORM2DVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniform2dv: PFNGLPROGRAMUNIFORM2DVPROC;
// pub const PFNGLPROGRAMUNIFORM2UIPROC = ?extern fn (GLuint, GLint, GLuint, GLuint) void;
// pub extern var glad_glProgramUniform2ui: PFNGLPROGRAMUNIFORM2UIPROC;
// pub const PFNGLPROGRAMUNIFORM2UIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glProgramUniform2uiv: PFNGLPROGRAMUNIFORM2UIVPROC;
// pub const PFNGLPROGRAMUNIFORM3IPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glProgramUniform3i: PFNGLPROGRAMUNIFORM3IPROC;
// pub const PFNGLPROGRAMUNIFORM3IVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glProgramUniform3iv: PFNGLPROGRAMUNIFORM3IVPROC;
// pub const PFNGLPROGRAMUNIFORM3FPROC = ?extern fn (GLuint, GLint, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glProgramUniform3f: PFNGLPROGRAMUNIFORM3FPROC;
// pub const PFNGLPROGRAMUNIFORM3FVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniform3fv: PFNGLPROGRAMUNIFORM3FVPROC;
// pub const PFNGLPROGRAMUNIFORM3DPROC = ?extern fn (GLuint, GLint, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glProgramUniform3d: PFNGLPROGRAMUNIFORM3DPROC;
// pub const PFNGLPROGRAMUNIFORM3DVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniform3dv: PFNGLPROGRAMUNIFORM3DVPROC;
// pub const PFNGLPROGRAMUNIFORM3UIPROC = ?extern fn (GLuint, GLint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glProgramUniform3ui: PFNGLPROGRAMUNIFORM3UIPROC;
// pub const PFNGLPROGRAMUNIFORM3UIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glProgramUniform3uiv: PFNGLPROGRAMUNIFORM3UIVPROC;
// pub const PFNGLPROGRAMUNIFORM4IPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLint) void;
// pub extern var glad_glProgramUniform4i: PFNGLPROGRAMUNIFORM4IPROC;
// pub const PFNGLPROGRAMUNIFORM4IVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glProgramUniform4iv: PFNGLPROGRAMUNIFORM4IVPROC;
// pub const PFNGLPROGRAMUNIFORM4FPROC = ?extern fn (GLuint, GLint, GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glProgramUniform4f: PFNGLPROGRAMUNIFORM4FPROC;
// pub const PFNGLPROGRAMUNIFORM4FVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniform4fv: PFNGLPROGRAMUNIFORM4FVPROC;
// pub const PFNGLPROGRAMUNIFORM4DPROC = ?extern fn (GLuint, GLint, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glProgramUniform4d: PFNGLPROGRAMUNIFORM4DPROC;
// pub const PFNGLPROGRAMUNIFORM4DVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniform4dv: PFNGLPROGRAMUNIFORM4DVPROC;
// pub const PFNGLPROGRAMUNIFORM4UIPROC = ?extern fn (GLuint, GLint, GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glProgramUniform4ui: PFNGLPROGRAMUNIFORM4UIPROC;
// pub const PFNGLPROGRAMUNIFORM4UIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glProgramUniform4uiv: PFNGLPROGRAMUNIFORM4UIVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix2fv: PFNGLPROGRAMUNIFORMMATRIX2FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix3fv: PFNGLPROGRAMUNIFORMMATRIX3FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix4fv: PFNGLPROGRAMUNIFORMMATRIX4FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix2dv: PFNGLPROGRAMUNIFORMMATRIX2DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix3dv: PFNGLPROGRAMUNIFORMMATRIX3DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix4dv: PFNGLPROGRAMUNIFORMMATRIX4DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix2x3fv: PFNGLPROGRAMUNIFORMMATRIX2X3FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix3x2fv: PFNGLPROGRAMUNIFORMMATRIX3X2FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix2x4fv: PFNGLPROGRAMUNIFORMMATRIX2X4FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix4x2fv: PFNGLPROGRAMUNIFORMMATRIX4X2FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix3x4fv: PFNGLPROGRAMUNIFORMMATRIX3X4FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLfloat) void;
// pub extern var glad_glProgramUniformMatrix4x3fv: PFNGLPROGRAMUNIFORMMATRIX4X3FVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix2x3dv: PFNGLPROGRAMUNIFORMMATRIX2X3DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix3x2dv: PFNGLPROGRAMUNIFORMMATRIX3X2DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix2x4dv: PFNGLPROGRAMUNIFORMMATRIX2X4DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix4x2dv: PFNGLPROGRAMUNIFORMMATRIX4X2DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix3x4dv: PFNGLPROGRAMUNIFORMMATRIX3X4DVPROC;
// pub const PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC = ?extern fn (GLuint, GLint, GLsizei, GLboolean, [*c]const GLdouble) void;
// pub extern var glad_glProgramUniformMatrix4x3dv: PFNGLPROGRAMUNIFORMMATRIX4X3DVPROC;
// pub const PFNGLVALIDATEPROGRAMPIPELINEPROC = ?extern fn (GLuint) void;
// pub extern var glad_glValidateProgramPipeline: PFNGLVALIDATEPROGRAMPIPELINEPROC;
// pub const PFNGLGETPROGRAMPIPELINEINFOLOGPROC = ?extern fn (GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetProgramPipelineInfoLog: PFNGLGETPROGRAMPIPELINEINFOLOGPROC;
// pub const PFNGLVERTEXATTRIBL1DPROC = ?extern fn (GLuint, GLdouble) void;
// pub extern var glad_glVertexAttribL1d: PFNGLVERTEXATTRIBL1DPROC;
// pub const PFNGLVERTEXATTRIBL2DPROC = ?extern fn (GLuint, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttribL2d: PFNGLVERTEXATTRIBL2DPROC;
// pub const PFNGLVERTEXATTRIBL3DPROC = ?extern fn (GLuint, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttribL3d: PFNGLVERTEXATTRIBL3DPROC;
// pub const PFNGLVERTEXATTRIBL4DPROC = ?extern fn (GLuint, GLdouble, GLdouble, GLdouble, GLdouble) void;
// pub extern var glad_glVertexAttribL4d: PFNGLVERTEXATTRIBL4DPROC;
// pub const PFNGLVERTEXATTRIBL1DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttribL1dv: PFNGLVERTEXATTRIBL1DVPROC;
// pub const PFNGLVERTEXATTRIBL2DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttribL2dv: PFNGLVERTEXATTRIBL2DVPROC;
// pub const PFNGLVERTEXATTRIBL3DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttribL3dv: PFNGLVERTEXATTRIBL3DVPROC;
// pub const PFNGLVERTEXATTRIBL4DVPROC = ?extern fn (GLuint, [*c]const GLdouble) void;
// pub extern var glad_glVertexAttribL4dv: PFNGLVERTEXATTRIBL4DVPROC;
// pub const PFNGLVERTEXATTRIBLPOINTERPROC = ?extern fn (GLuint, GLint, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glVertexAttribLPointer: PFNGLVERTEXATTRIBLPOINTERPROC;
// pub const PFNGLGETVERTEXATTRIBLDVPROC = ?extern fn (GLuint, GLenum, [*c]GLdouble) void;
// pub extern var glad_glGetVertexAttribLdv: PFNGLGETVERTEXATTRIBLDVPROC;
// pub const PFNGLVIEWPORTARRAYVPROC = ?extern fn (GLuint, GLsizei, [*c]const GLfloat) void;
// pub extern var glad_glViewportArrayv: PFNGLVIEWPORTARRAYVPROC;
// pub const PFNGLVIEWPORTINDEXEDFPROC = ?extern fn (GLuint, GLfloat, GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glViewportIndexedf: PFNGLVIEWPORTINDEXEDFPROC;
// pub const PFNGLVIEWPORTINDEXEDFVPROC = ?extern fn (GLuint, [*c]const GLfloat) void;
// pub extern var glad_glViewportIndexedfv: PFNGLVIEWPORTINDEXEDFVPROC;
// pub const PFNGLSCISSORARRAYVPROC = ?extern fn (GLuint, GLsizei, [*c]const GLint) void;
// pub extern var glad_glScissorArrayv: PFNGLSCISSORARRAYVPROC;
// pub const PFNGLSCISSORINDEXEDPROC = ?extern fn (GLuint, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glScissorIndexed: PFNGLSCISSORINDEXEDPROC;
// pub const PFNGLSCISSORINDEXEDVPROC = ?extern fn (GLuint, [*c]const GLint) void;
// pub extern var glad_glScissorIndexedv: PFNGLSCISSORINDEXEDVPROC;
// pub const PFNGLDEPTHRANGEARRAYVPROC = ?extern fn (GLuint, GLsizei, [*c]const GLdouble) void;
// pub extern var glad_glDepthRangeArrayv: PFNGLDEPTHRANGEARRAYVPROC;
// pub const PFNGLDEPTHRANGEINDEXEDPROC = ?extern fn (GLuint, GLdouble, GLdouble) void;
// pub extern var glad_glDepthRangeIndexed: PFNGLDEPTHRANGEINDEXEDPROC;
// pub const PFNGLGETFLOATI_VPROC = ?extern fn (GLenum, GLuint, [*c]GLfloat) void;
// pub extern var glad_glGetFloati_v: PFNGLGETFLOATI_VPROC;
// pub const PFNGLGETDOUBLEI_VPROC = ?extern fn (GLenum, GLuint, [*c]GLdouble) void;
// pub extern var glad_glGetDoublei_v: PFNGLGETDOUBLEI_VPROC;
// pub extern var GLAD_GL_VERSION_4_2: c_int;
// pub const PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC = ?extern fn (GLenum, GLint, GLsizei, GLsizei, GLuint) void;
// pub extern var glad_glDrawArraysInstancedBaseInstance: PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC;
// pub const PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void, GLsizei, GLuint) void;
// pub extern var glad_glDrawElementsInstancedBaseInstance: PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC;
// pub const PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC = ?extern fn (GLenum, GLsizei, GLenum, ?*const c_void, GLsizei, GLint, GLuint) void;
// pub extern var glad_glDrawElementsInstancedBaseVertexBaseInstance: PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC;
// pub const PFNGLGETINTERNALFORMATIVPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, [*c]GLint) void;
// pub extern var glad_glGetInternalformativ: PFNGLGETINTERNALFORMATIVPROC;
// pub const PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC = ?extern fn (GLuint, GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetActiveAtomicCounterBufferiv: PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC;
// pub const PFNGLBINDIMAGETEXTUREPROC = ?extern fn (GLuint, GLuint, GLint, GLboolean, GLint, GLenum, GLenum) void;
// pub extern var glad_glBindImageTexture: PFNGLBINDIMAGETEXTUREPROC;
// pub const PFNGLMEMORYBARRIERPROC = ?extern fn (GLbitfield) void;
// pub extern var glad_glMemoryBarrier: PFNGLMEMORYBARRIERPROC;
// pub const PFNGLTEXSTORAGE1DPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei) void;
// pub extern var glad_glTexStorage1D: PFNGLTEXSTORAGE1DPROC;
// pub const PFNGLTEXSTORAGE2DPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glTexStorage2D: PFNGLTEXSTORAGE2DPROC;
// pub const PFNGLTEXSTORAGE3DPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei) void;
// pub extern var glad_glTexStorage3D: PFNGLTEXSTORAGE3DPROC;
// pub const PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC = ?extern fn (GLenum, GLuint, GLsizei) void;
// pub extern var glad_glDrawTransformFeedbackInstanced: PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC;
// pub const PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC = ?extern fn (GLenum, GLuint, GLuint, GLsizei) void;
// pub extern var glad_glDrawTransformFeedbackStreamInstanced: PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC;
// pub extern var GLAD_GL_VERSION_4_3: c_int;
// pub const PFNGLCLEARBUFFERDATAPROC = ?extern fn (GLenum, GLenum, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearBufferData: PFNGLCLEARBUFFERDATAPROC;
// pub const PFNGLCLEARBUFFERSUBDATAPROC = ?extern fn (GLenum, GLenum, GLintptr, GLsizeiptr, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearBufferSubData: PFNGLCLEARBUFFERSUBDATAPROC;
// pub const PFNGLDISPATCHCOMPUTEPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glDispatchCompute: PFNGLDISPATCHCOMPUTEPROC;
// pub const PFNGLDISPATCHCOMPUTEINDIRECTPROC = ?extern fn (GLintptr) void;
// pub extern var glad_glDispatchComputeIndirect: PFNGLDISPATCHCOMPUTEINDIRECTPROC;
// pub const PFNGLCOPYIMAGESUBDATAPROC = ?extern fn (GLuint, GLenum, GLint, GLint, GLint, GLint, GLuint, GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei) void;
// pub extern var glad_glCopyImageSubData: PFNGLCOPYIMAGESUBDATAPROC;
// pub const PFNGLFRAMEBUFFERPARAMETERIPROC = ?extern fn (GLenum, GLenum, GLint) void;
// pub extern var glad_glFramebufferParameteri: PFNGLFRAMEBUFFERPARAMETERIPROC;
// pub const PFNGLGETFRAMEBUFFERPARAMETERIVPROC = ?extern fn (GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetFramebufferParameteriv: PFNGLGETFRAMEBUFFERPARAMETERIVPROC;
// pub const PFNGLGETINTERNALFORMATI64VPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, [*c]GLint64) void;
// pub extern var glad_glGetInternalformati64v: PFNGLGETINTERNALFORMATI64VPROC;
// pub const PFNGLINVALIDATETEXSUBIMAGEPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei) void;
// pub extern var glad_glInvalidateTexSubImage: PFNGLINVALIDATETEXSUBIMAGEPROC;
// pub const PFNGLINVALIDATETEXIMAGEPROC = ?extern fn (GLuint, GLint) void;
// pub extern var glad_glInvalidateTexImage: PFNGLINVALIDATETEXIMAGEPROC;
// pub const PFNGLINVALIDATEBUFFERSUBDATAPROC = ?extern fn (GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glInvalidateBufferSubData: PFNGLINVALIDATEBUFFERSUBDATAPROC;
// pub const PFNGLINVALIDATEBUFFERDATAPROC = ?extern fn (GLuint) void;
// pub extern var glad_glInvalidateBufferData: PFNGLINVALIDATEBUFFERDATAPROC;
// pub const PFNGLINVALIDATEFRAMEBUFFERPROC = ?extern fn (GLenum, GLsizei, [*c]const GLenum) void;
// pub extern var glad_glInvalidateFramebuffer: PFNGLINVALIDATEFRAMEBUFFERPROC;
// pub const PFNGLINVALIDATESUBFRAMEBUFFERPROC = ?extern fn (GLenum, GLsizei, [*c]const GLenum, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glInvalidateSubFramebuffer: PFNGLINVALIDATESUBFRAMEBUFFERPROC;
// pub const PFNGLMULTIDRAWARRAYSINDIRECTPROC = ?extern fn (GLenum, ?*const c_void, GLsizei, GLsizei) void;
// pub extern var glad_glMultiDrawArraysIndirect: PFNGLMULTIDRAWARRAYSINDIRECTPROC;
// pub const PFNGLMULTIDRAWELEMENTSINDIRECTPROC = ?extern fn (GLenum, GLenum, ?*const c_void, GLsizei, GLsizei) void;
// pub extern var glad_glMultiDrawElementsIndirect: PFNGLMULTIDRAWELEMENTSINDIRECTPROC;
// pub const PFNGLGETPROGRAMINTERFACEIVPROC = ?extern fn (GLuint, GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetProgramInterfaceiv: PFNGLGETPROGRAMINTERFACEIVPROC;
// pub const PFNGLGETPROGRAMRESOURCEINDEXPROC = ?extern fn (GLuint, GLenum, [*c]const GLchar) GLuint;
// pub extern var glad_glGetProgramResourceIndex: PFNGLGETPROGRAMRESOURCEINDEXPROC;
// pub const PFNGLGETPROGRAMRESOURCENAMEPROC = ?extern fn (GLuint, GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetProgramResourceName: PFNGLGETPROGRAMRESOURCENAMEPROC;
// pub const PFNGLGETPROGRAMRESOURCEIVPROC = ?extern fn (GLuint, GLenum, GLuint, GLsizei, [*c]const GLenum, GLsizei, [*c]GLsizei, [*c]GLint) void;
// pub extern var glad_glGetProgramResourceiv: PFNGLGETPROGRAMRESOURCEIVPROC;
// pub const PFNGLGETPROGRAMRESOURCELOCATIONPROC = ?extern fn (GLuint, GLenum, [*c]const GLchar) GLint;
// pub extern var glad_glGetProgramResourceLocation: PFNGLGETPROGRAMRESOURCELOCATIONPROC;
// pub const PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC = ?extern fn (GLuint, GLenum, [*c]const GLchar) GLint;
// pub extern var glad_glGetProgramResourceLocationIndex: PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC;
// pub const PFNGLSHADERSTORAGEBLOCKBINDINGPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glShaderStorageBlockBinding: PFNGLSHADERSTORAGEBLOCKBINDINGPROC;
// pub const PFNGLTEXBUFFERRANGEPROC = ?extern fn (GLenum, GLenum, GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glTexBufferRange: PFNGLTEXBUFFERRANGEPROC;
// pub const PFNGLTEXSTORAGE2DMULTISAMPLEPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTexStorage2DMultisample: PFNGLTEXSTORAGE2DMULTISAMPLEPROC;
// pub const PFNGLTEXSTORAGE3DMULTISAMPLEPROC = ?extern fn (GLenum, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTexStorage3DMultisample: PFNGLTEXSTORAGE3DMULTISAMPLEPROC;
// pub const PFNGLTEXTUREVIEWPROC = ?extern fn (GLuint, GLenum, GLuint, GLenum, GLuint, GLuint, GLuint, GLuint) void;
// pub extern var glad_glTextureView: PFNGLTEXTUREVIEWPROC;
// pub const PFNGLBINDVERTEXBUFFERPROC = ?extern fn (GLuint, GLuint, GLintptr, GLsizei) void;
// pub extern var glad_glBindVertexBuffer: PFNGLBINDVERTEXBUFFERPROC;
// pub const PFNGLVERTEXATTRIBFORMATPROC = ?extern fn (GLuint, GLint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexAttribFormat: PFNGLVERTEXATTRIBFORMATPROC;
// pub const PFNGLVERTEXATTRIBIFORMATPROC = ?extern fn (GLuint, GLint, GLenum, GLuint) void;
// pub extern var glad_glVertexAttribIFormat: PFNGLVERTEXATTRIBIFORMATPROC;
// pub const PFNGLVERTEXATTRIBLFORMATPROC = ?extern fn (GLuint, GLint, GLenum, GLuint) void;
// pub extern var glad_glVertexAttribLFormat: PFNGLVERTEXATTRIBLFORMATPROC;
// pub const PFNGLVERTEXATTRIBBINDINGPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glVertexAttribBinding: PFNGLVERTEXATTRIBBINDINGPROC;
// pub const PFNGLVERTEXBINDINGDIVISORPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glVertexBindingDivisor: PFNGLVERTEXBINDINGDIVISORPROC;
// pub const PFNGLDEBUGMESSAGECONTROLPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, [*c]const GLuint, GLboolean) void;
// pub extern var glad_glDebugMessageControl: PFNGLDEBUGMESSAGECONTROLPROC;
// pub const PFNGLDEBUGMESSAGEINSERTPROC = ?extern fn (GLenum, GLenum, GLuint, GLenum, GLsizei, [*c]const GLchar) void;
// pub extern var glad_glDebugMessageInsert: PFNGLDEBUGMESSAGEINSERTPROC;
// pub const PFNGLDEBUGMESSAGECALLBACKPROC = ?extern fn (GLDEBUGPROC, ?*const c_void) void;
// pub extern var glad_glDebugMessageCallback: PFNGLDEBUGMESSAGECALLBACKPROC;
// pub const PFNGLGETDEBUGMESSAGELOGPROC = ?extern fn (GLuint, GLsizei, [*c]GLenum, [*c]GLenum, [*c]GLuint, [*c]GLenum, [*c]GLsizei, [*c]GLchar) GLuint;
// pub extern var glad_glGetDebugMessageLog: PFNGLGETDEBUGMESSAGELOGPROC;
// pub const PFNGLPUSHDEBUGGROUPPROC = ?extern fn (GLenum, GLuint, GLsizei, [*c]const GLchar) void;
// pub extern var glad_glPushDebugGroup: PFNGLPUSHDEBUGGROUPPROC;
// pub const PFNGLPOPDEBUGGROUPPROC = ?extern fn () void;
// pub extern var glad_glPopDebugGroup: PFNGLPOPDEBUGGROUPPROC;
// pub const PFNGLOBJECTLABELPROC = ?extern fn (GLenum, GLuint, GLsizei, [*c]const GLchar) void;
// pub extern var glad_glObjectLabel: PFNGLOBJECTLABELPROC;
// pub const PFNGLGETOBJECTLABELPROC = ?extern fn (GLenum, GLuint, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetObjectLabel: PFNGLGETOBJECTLABELPROC;
// pub const PFNGLOBJECTPTRLABELPROC = ?extern fn (?*const c_void, GLsizei, [*c]const GLchar) void;
// pub extern var glad_glObjectPtrLabel: PFNGLOBJECTPTRLABELPROC;
// pub const PFNGLGETOBJECTPTRLABELPROC = ?extern fn (?*const c_void, GLsizei, [*c]GLsizei, [*c]GLchar) void;
// pub extern var glad_glGetObjectPtrLabel: PFNGLGETOBJECTPTRLABELPROC;
// pub extern var GLAD_GL_VERSION_4_4: c_int;
// pub const PFNGLBUFFERSTORAGEPROC = ?extern fn (GLenum, GLsizeiptr, ?*const c_void, GLbitfield) void;
// pub extern var glad_glBufferStorage: PFNGLBUFFERSTORAGEPROC;
// pub const PFNGLCLEARTEXIMAGEPROC = ?extern fn (GLuint, GLint, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearTexImage: PFNGLCLEARTEXIMAGEPROC;
// pub const PFNGLCLEARTEXSUBIMAGEPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearTexSubImage: PFNGLCLEARTEXSUBIMAGEPROC;
// pub const PFNGLBINDBUFFERSBASEPROC = ?extern fn (GLenum, GLuint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glBindBuffersBase: PFNGLBINDBUFFERSBASEPROC;
// pub const PFNGLBINDBUFFERSRANGEPROC = ?extern fn (GLenum, GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizeiptr) void;
// pub extern var glad_glBindBuffersRange: PFNGLBINDBUFFERSRANGEPROC;
// pub const PFNGLBINDTEXTURESPROC = ?extern fn (GLuint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glBindTextures: PFNGLBINDTEXTURESPROC;
// pub const PFNGLBINDSAMPLERSPROC = ?extern fn (GLuint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glBindSamplers: PFNGLBINDSAMPLERSPROC;
// pub const PFNGLBINDIMAGETEXTURESPROC = ?extern fn (GLuint, GLsizei, [*c]const GLuint) void;
// pub extern var glad_glBindImageTextures: PFNGLBINDIMAGETEXTURESPROC;
// pub const PFNGLBINDVERTEXBUFFERSPROC = ?extern fn (GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizei) void;
// pub extern var glad_glBindVertexBuffers: PFNGLBINDVERTEXBUFFERSPROC;
// pub extern var GLAD_GL_VERSION_4_5: c_int;
// pub const PFNGLCLIPCONTROLPROC = ?extern fn (GLenum, GLenum) void;
// pub extern var glad_glClipControl: PFNGLCLIPCONTROLPROC;
// pub const PFNGLCREATETRANSFORMFEEDBACKSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateTransformFeedbacks: PFNGLCREATETRANSFORMFEEDBACKSPROC;
// pub const PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glTransformFeedbackBufferBase: PFNGLTRANSFORMFEEDBACKBUFFERBASEPROC;
// pub const PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC = ?extern fn (GLuint, GLuint, GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glTransformFeedbackBufferRange: PFNGLTRANSFORMFEEDBACKBUFFERRANGEPROC;
// pub const PFNGLGETTRANSFORMFEEDBACKIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTransformFeedbackiv: PFNGLGETTRANSFORMFEEDBACKIVPROC;
// pub const PFNGLGETTRANSFORMFEEDBACKI_VPROC = ?extern fn (GLuint, GLenum, GLuint, [*c]GLint) void;
// pub extern var glad_glGetTransformFeedbacki_v: PFNGLGETTRANSFORMFEEDBACKI_VPROC;
// pub const PFNGLGETTRANSFORMFEEDBACKI64_VPROC = ?extern fn (GLuint, GLenum, GLuint, [*c]GLint64) void;
// pub extern var glad_glGetTransformFeedbacki64_v: PFNGLGETTRANSFORMFEEDBACKI64_VPROC;
// pub const PFNGLCREATEBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateBuffers: PFNGLCREATEBUFFERSPROC;
// pub const PFNGLNAMEDBUFFERSTORAGEPROC = ?extern fn (GLuint, GLsizeiptr, ?*const c_void, GLbitfield) void;
// pub extern var glad_glNamedBufferStorage: PFNGLNAMEDBUFFERSTORAGEPROC;
// pub const PFNGLNAMEDBUFFERDATAPROC = ?extern fn (GLuint, GLsizeiptr, ?*const c_void, GLenum) void;
// pub extern var glad_glNamedBufferData: PFNGLNAMEDBUFFERDATAPROC;
// pub const PFNGLNAMEDBUFFERSUBDATAPROC = ?extern fn (GLuint, GLintptr, GLsizeiptr, ?*const c_void) void;
// pub extern var glad_glNamedBufferSubData: PFNGLNAMEDBUFFERSUBDATAPROC;
// pub const PFNGLCOPYNAMEDBUFFERSUBDATAPROC = ?extern fn (GLuint, GLuint, GLintptr, GLintptr, GLsizeiptr) void;
// pub extern var glad_glCopyNamedBufferSubData: PFNGLCOPYNAMEDBUFFERSUBDATAPROC;
// pub const PFNGLCLEARNAMEDBUFFERDATAPROC = ?extern fn (GLuint, GLenum, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearNamedBufferData: PFNGLCLEARNAMEDBUFFERDATAPROC;
// pub const PFNGLCLEARNAMEDBUFFERSUBDATAPROC = ?extern fn (GLuint, GLenum, GLintptr, GLsizeiptr, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glClearNamedBufferSubData: PFNGLCLEARNAMEDBUFFERSUBDATAPROC;
// pub const PFNGLMAPNAMEDBUFFERPROC = ?extern fn (GLuint, GLenum) ?*c_void;
// pub extern var glad_glMapNamedBuffer: PFNGLMAPNAMEDBUFFERPROC;
// pub const PFNGLMAPNAMEDBUFFERRANGEPROC = ?extern fn (GLuint, GLintptr, GLsizeiptr, GLbitfield) ?*c_void;
// pub extern var glad_glMapNamedBufferRange: PFNGLMAPNAMEDBUFFERRANGEPROC;
// pub const PFNGLUNMAPNAMEDBUFFERPROC = ?extern fn (GLuint) GLboolean;
// pub extern var glad_glUnmapNamedBuffer: PFNGLUNMAPNAMEDBUFFERPROC;
// pub const PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC = ?extern fn (GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glFlushMappedNamedBufferRange: PFNGLFLUSHMAPPEDNAMEDBUFFERRANGEPROC;
// pub const PFNGLGETNAMEDBUFFERPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetNamedBufferParameteriv: PFNGLGETNAMEDBUFFERPARAMETERIVPROC;
// pub const PFNGLGETNAMEDBUFFERPARAMETERI64VPROC = ?extern fn (GLuint, GLenum, [*c]GLint64) void;
// pub extern var glad_glGetNamedBufferParameteri64v: PFNGLGETNAMEDBUFFERPARAMETERI64VPROC;
// pub const PFNGLGETNAMEDBUFFERPOINTERVPROC = ?extern fn (GLuint, GLenum, [*c](?*c_void)) void;
// pub extern var glad_glGetNamedBufferPointerv: PFNGLGETNAMEDBUFFERPOINTERVPROC;
// pub const PFNGLGETNAMEDBUFFERSUBDATAPROC = ?extern fn (GLuint, GLintptr, GLsizeiptr, ?*c_void) void;
// pub extern var glad_glGetNamedBufferSubData: PFNGLGETNAMEDBUFFERSUBDATAPROC;
// pub const PFNGLCREATEFRAMEBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateFramebuffers: PFNGLCREATEFRAMEBUFFERSPROC;
// pub const PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC = ?extern fn (GLuint, GLenum, GLenum, GLuint) void;
// pub extern var glad_glNamedFramebufferRenderbuffer: PFNGLNAMEDFRAMEBUFFERRENDERBUFFERPROC;
// pub const PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC = ?extern fn (GLuint, GLenum, GLint) void;
// pub extern var glad_glNamedFramebufferParameteri: PFNGLNAMEDFRAMEBUFFERPARAMETERIPROC;
// pub const PFNGLNAMEDFRAMEBUFFERTEXTUREPROC = ?extern fn (GLuint, GLenum, GLuint, GLint) void;
// pub extern var glad_glNamedFramebufferTexture: PFNGLNAMEDFRAMEBUFFERTEXTUREPROC;
// pub const PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC = ?extern fn (GLuint, GLenum, GLuint, GLint, GLint) void;
// pub extern var glad_glNamedFramebufferTextureLayer: PFNGLNAMEDFRAMEBUFFERTEXTURELAYERPROC;
// pub const PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glNamedFramebufferDrawBuffer: PFNGLNAMEDFRAMEBUFFERDRAWBUFFERPROC;
// pub const PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC = ?extern fn (GLuint, GLsizei, [*c]const GLenum) void;
// pub extern var glad_glNamedFramebufferDrawBuffers: PFNGLNAMEDFRAMEBUFFERDRAWBUFFERSPROC;
// pub const PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC = ?extern fn (GLuint, GLenum) void;
// pub extern var glad_glNamedFramebufferReadBuffer: PFNGLNAMEDFRAMEBUFFERREADBUFFERPROC;
// pub const PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC = ?extern fn (GLuint, GLsizei, [*c]const GLenum) void;
// pub extern var glad_glInvalidateNamedFramebufferData: PFNGLINVALIDATENAMEDFRAMEBUFFERDATAPROC;
// pub const PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC = ?extern fn (GLuint, GLsizei, [*c]const GLenum, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glInvalidateNamedFramebufferSubData: PFNGLINVALIDATENAMEDFRAMEBUFFERSUBDATAPROC;
// pub const PFNGLCLEARNAMEDFRAMEBUFFERIVPROC = ?extern fn (GLuint, GLenum, GLint, [*c]const GLint) void;
// pub extern var glad_glClearNamedFramebufferiv: PFNGLCLEARNAMEDFRAMEBUFFERIVPROC;
// pub const PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC = ?extern fn (GLuint, GLenum, GLint, [*c]const GLuint) void;
// pub extern var glad_glClearNamedFramebufferuiv: PFNGLCLEARNAMEDFRAMEBUFFERUIVPROC;
// pub const PFNGLCLEARNAMEDFRAMEBUFFERFVPROC = ?extern fn (GLuint, GLenum, GLint, [*c]const GLfloat) void;
// pub extern var glad_glClearNamedFramebufferfv: PFNGLCLEARNAMEDFRAMEBUFFERFVPROC;
// pub const PFNGLCLEARNAMEDFRAMEBUFFERFIPROC = ?extern fn (GLuint, GLenum, GLint, GLfloat, GLint) void;
// pub extern var glad_glClearNamedFramebufferfi: PFNGLCLEARNAMEDFRAMEBUFFERFIPROC;
// pub const PFNGLBLITNAMEDFRAMEBUFFERPROC = ?extern fn (GLuint, GLuint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum) void;
// pub extern var glad_glBlitNamedFramebuffer: PFNGLBLITNAMEDFRAMEBUFFERPROC;
// pub const PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC = ?extern fn (GLuint, GLenum) GLenum;
// pub extern var glad_glCheckNamedFramebufferStatus: PFNGLCHECKNAMEDFRAMEBUFFERSTATUSPROC;
// pub const PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetNamedFramebufferParameteriv: PFNGLGETNAMEDFRAMEBUFFERPARAMETERIVPROC;
// pub const PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC = ?extern fn (GLuint, GLenum, GLenum, [*c]GLint) void;
// pub extern var glad_glGetNamedFramebufferAttachmentParameteriv: PFNGLGETNAMEDFRAMEBUFFERATTACHMENTPARAMETERIVPROC;
// pub const PFNGLCREATERENDERBUFFERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateRenderbuffers: PFNGLCREATERENDERBUFFERSPROC;
// pub const PFNGLNAMEDRENDERBUFFERSTORAGEPROC = ?extern fn (GLuint, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glNamedRenderbufferStorage: PFNGLNAMEDRENDERBUFFERSTORAGEPROC;
// pub const PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glNamedRenderbufferStorageMultisample: PFNGLNAMEDRENDERBUFFERSTORAGEMULTISAMPLEPROC;
// pub const PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetNamedRenderbufferParameteriv: PFNGLGETNAMEDRENDERBUFFERPARAMETERIVPROC;
// pub const PFNGLCREATETEXTURESPROC = ?extern fn (GLenum, GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateTextures: PFNGLCREATETEXTURESPROC;
// pub const PFNGLTEXTUREBUFFERPROC = ?extern fn (GLuint, GLenum, GLuint) void;
// pub extern var glad_glTextureBuffer: PFNGLTEXTUREBUFFERPROC;
// pub const PFNGLTEXTUREBUFFERRANGEPROC = ?extern fn (GLuint, GLenum, GLuint, GLintptr, GLsizeiptr) void;
// pub extern var glad_glTextureBufferRange: PFNGLTEXTUREBUFFERRANGEPROC;
// pub const PFNGLTEXTURESTORAGE1DPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei) void;
// pub extern var glad_glTextureStorage1D: PFNGLTEXTURESTORAGE1DPROC;
// pub const PFNGLTEXTURESTORAGE2DPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei) void;
// pub extern var glad_glTextureStorage2D: PFNGLTEXTURESTORAGE2DPROC;
// pub const PFNGLTEXTURESTORAGE3DPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLsizei) void;
// pub extern var glad_glTextureStorage3D: PFNGLTEXTURESTORAGE3DPROC;
// pub const PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTextureStorage2DMultisample: PFNGLTEXTURESTORAGE2DMULTISAMPLEPROC;
// pub const PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC = ?extern fn (GLuint, GLsizei, GLenum, GLsizei, GLsizei, GLsizei, GLboolean) void;
// pub extern var glad_glTextureStorage3DMultisample: PFNGLTEXTURESTORAGE3DMULTISAMPLEPROC;
// pub const PFNGLTEXTURESUBIMAGE1DPROC = ?extern fn (GLuint, GLint, GLint, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTextureSubImage1D: PFNGLTEXTURESUBIMAGE1DPROC;
// pub const PFNGLTEXTURESUBIMAGE2DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTextureSubImage2D: PFNGLTEXTURESUBIMAGE2DPROC;
// pub const PFNGLTEXTURESUBIMAGE3DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, ?*const c_void) void;
// pub extern var glad_glTextureSubImage3D: PFNGLTEXTURESUBIMAGE3DPROC;
// pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC = ?extern fn (GLuint, GLint, GLint, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTextureSubImage1D: PFNGLCOMPRESSEDTEXTURESUBIMAGE1DPROC;
// pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTextureSubImage2D: PFNGLCOMPRESSEDTEXTURESUBIMAGE2DPROC;
// pub const PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, ?*const c_void) void;
// pub extern var glad_glCompressedTextureSubImage3D: PFNGLCOMPRESSEDTEXTURESUBIMAGE3DPROC;
// pub const PFNGLCOPYTEXTURESUBIMAGE1DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei) void;
// pub extern var glad_glCopyTextureSubImage1D: PFNGLCOPYTEXTURESUBIMAGE1DPROC;
// pub const PFNGLCOPYTEXTURESUBIMAGE2DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glCopyTextureSubImage2D: PFNGLCOPYTEXTURESUBIMAGE2DPROC;
// pub const PFNGLCOPYTEXTURESUBIMAGE3DPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei) void;
// pub extern var glad_glCopyTextureSubImage3D: PFNGLCOPYTEXTURESUBIMAGE3DPROC;
// pub const PFNGLTEXTUREPARAMETERFPROC = ?extern fn (GLuint, GLenum, GLfloat) void;
// pub extern var glad_glTextureParameterf: PFNGLTEXTUREPARAMETERFPROC;
// pub const PFNGLTEXTUREPARAMETERFVPROC = ?extern fn (GLuint, GLenum, [*c]const GLfloat) void;
// pub extern var glad_glTextureParameterfv: PFNGLTEXTUREPARAMETERFVPROC;
// pub const PFNGLTEXTUREPARAMETERIPROC = ?extern fn (GLuint, GLenum, GLint) void;
// pub extern var glad_glTextureParameteri: PFNGLTEXTUREPARAMETERIPROC;
// pub const PFNGLTEXTUREPARAMETERIIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLint) void;
// pub extern var glad_glTextureParameterIiv: PFNGLTEXTUREPARAMETERIIVPROC;
// pub const PFNGLTEXTUREPARAMETERIUIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLuint) void;
// pub extern var glad_glTextureParameterIuiv: PFNGLTEXTUREPARAMETERIUIVPROC;
// pub const PFNGLTEXTUREPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]const GLint) void;
// pub extern var glad_glTextureParameteriv: PFNGLTEXTUREPARAMETERIVPROC;
// pub const PFNGLGENERATETEXTUREMIPMAPPROC = ?extern fn (GLuint) void;
// pub extern var glad_glGenerateTextureMipmap: PFNGLGENERATETEXTUREMIPMAPPROC;
// pub const PFNGLBINDTEXTUREUNITPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glBindTextureUnit: PFNGLBINDTEXTUREUNITPROC;
// pub const PFNGLGETTEXTUREIMAGEPROC = ?extern fn (GLuint, GLint, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetTextureImage: PFNGLGETTEXTUREIMAGEPROC;
// pub const PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC = ?extern fn (GLuint, GLint, GLsizei, ?*c_void) void;
// pub extern var glad_glGetCompressedTextureImage: PFNGLGETCOMPRESSEDTEXTUREIMAGEPROC;
// pub const PFNGLGETTEXTURELEVELPARAMETERFVPROC = ?extern fn (GLuint, GLint, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTextureLevelParameterfv: PFNGLGETTEXTURELEVELPARAMETERFVPROC;
// pub const PFNGLGETTEXTURELEVELPARAMETERIVPROC = ?extern fn (GLuint, GLint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTextureLevelParameteriv: PFNGLGETTEXTURELEVELPARAMETERIVPROC;
// pub const PFNGLGETTEXTUREPARAMETERFVPROC = ?extern fn (GLuint, GLenum, [*c]GLfloat) void;
// pub extern var glad_glGetTextureParameterfv: PFNGLGETTEXTUREPARAMETERFVPROC;
// pub const PFNGLGETTEXTUREPARAMETERIIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTextureParameterIiv: PFNGLGETTEXTUREPARAMETERIIVPROC;
// pub const PFNGLGETTEXTUREPARAMETERIUIVPROC = ?extern fn (GLuint, GLenum, [*c]GLuint) void;
// pub extern var glad_glGetTextureParameterIuiv: PFNGLGETTEXTUREPARAMETERIUIVPROC;
// pub const PFNGLGETTEXTUREPARAMETERIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetTextureParameteriv: PFNGLGETTEXTUREPARAMETERIVPROC;
// pub const PFNGLCREATEVERTEXARRAYSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateVertexArrays: PFNGLCREATEVERTEXARRAYSPROC;
// pub const PFNGLDISABLEVERTEXARRAYATTRIBPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glDisableVertexArrayAttrib: PFNGLDISABLEVERTEXARRAYATTRIBPROC;
// pub const PFNGLENABLEVERTEXARRAYATTRIBPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glEnableVertexArrayAttrib: PFNGLENABLEVERTEXARRAYATTRIBPROC;
// pub const PFNGLVERTEXARRAYELEMENTBUFFERPROC = ?extern fn (GLuint, GLuint) void;
// pub extern var glad_glVertexArrayElementBuffer: PFNGLVERTEXARRAYELEMENTBUFFERPROC;
// pub const PFNGLVERTEXARRAYVERTEXBUFFERPROC = ?extern fn (GLuint, GLuint, GLuint, GLintptr, GLsizei) void;
// pub extern var glad_glVertexArrayVertexBuffer: PFNGLVERTEXARRAYVERTEXBUFFERPROC;
// pub const PFNGLVERTEXARRAYVERTEXBUFFERSPROC = ?extern fn (GLuint, GLuint, GLsizei, [*c]const GLuint, [*c]const GLintptr, [*c]const GLsizei) void;
// pub extern var glad_glVertexArrayVertexBuffers: PFNGLVERTEXARRAYVERTEXBUFFERSPROC;
// pub const PFNGLVERTEXARRAYATTRIBBINDINGPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glVertexArrayAttribBinding: PFNGLVERTEXARRAYATTRIBBINDINGPROC;
// pub const PFNGLVERTEXARRAYATTRIBFORMATPROC = ?extern fn (GLuint, GLuint, GLint, GLenum, GLboolean, GLuint) void;
// pub extern var glad_glVertexArrayAttribFormat: PFNGLVERTEXARRAYATTRIBFORMATPROC;
// pub const PFNGLVERTEXARRAYATTRIBIFORMATPROC = ?extern fn (GLuint, GLuint, GLint, GLenum, GLuint) void;
// pub extern var glad_glVertexArrayAttribIFormat: PFNGLVERTEXARRAYATTRIBIFORMATPROC;
// pub const PFNGLVERTEXARRAYATTRIBLFORMATPROC = ?extern fn (GLuint, GLuint, GLint, GLenum, GLuint) void;
// pub extern var glad_glVertexArrayAttribLFormat: PFNGLVERTEXARRAYATTRIBLFORMATPROC;
// pub const PFNGLVERTEXARRAYBINDINGDIVISORPROC = ?extern fn (GLuint, GLuint, GLuint) void;
// pub extern var glad_glVertexArrayBindingDivisor: PFNGLVERTEXARRAYBINDINGDIVISORPROC;
// pub const PFNGLGETVERTEXARRAYIVPROC = ?extern fn (GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetVertexArrayiv: PFNGLGETVERTEXARRAYIVPROC;
// pub const PFNGLGETVERTEXARRAYINDEXEDIVPROC = ?extern fn (GLuint, GLuint, GLenum, [*c]GLint) void;
// pub extern var glad_glGetVertexArrayIndexediv: PFNGLGETVERTEXARRAYINDEXEDIVPROC;
// pub const PFNGLGETVERTEXARRAYINDEXED64IVPROC = ?extern fn (GLuint, GLuint, GLenum, [*c]GLint64) void;
// pub extern var glad_glGetVertexArrayIndexed64iv: PFNGLGETVERTEXARRAYINDEXED64IVPROC;
// pub const PFNGLCREATESAMPLERSPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateSamplers: PFNGLCREATESAMPLERSPROC;
// pub const PFNGLCREATEPROGRAMPIPELINESPROC = ?extern fn (GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateProgramPipelines: PFNGLCREATEPROGRAMPIPELINESPROC;
// pub const PFNGLCREATEQUERIESPROC = ?extern fn (GLenum, GLsizei, [*c]GLuint) void;
// pub extern var glad_glCreateQueries: PFNGLCREATEQUERIESPROC;
// pub const PFNGLGETQUERYBUFFEROBJECTI64VPROC = ?extern fn (GLuint, GLuint, GLenum, GLintptr) void;
// pub extern var glad_glGetQueryBufferObjecti64v: PFNGLGETQUERYBUFFEROBJECTI64VPROC;
// pub const PFNGLGETQUERYBUFFEROBJECTIVPROC = ?extern fn (GLuint, GLuint, GLenum, GLintptr) void;
// pub extern var glad_glGetQueryBufferObjectiv: PFNGLGETQUERYBUFFEROBJECTIVPROC;
// pub const PFNGLGETQUERYBUFFEROBJECTUI64VPROC = ?extern fn (GLuint, GLuint, GLenum, GLintptr) void;
// pub extern var glad_glGetQueryBufferObjectui64v: PFNGLGETQUERYBUFFEROBJECTUI64VPROC;
// pub const PFNGLGETQUERYBUFFEROBJECTUIVPROC = ?extern fn (GLuint, GLuint, GLenum, GLintptr) void;
// pub extern var glad_glGetQueryBufferObjectuiv: PFNGLGETQUERYBUFFEROBJECTUIVPROC;
// pub const PFNGLMEMORYBARRIERBYREGIONPROC = ?extern fn (GLbitfield) void;
// pub extern var glad_glMemoryBarrierByRegion: PFNGLMEMORYBARRIERBYREGIONPROC;
// pub const PFNGLGETTEXTURESUBIMAGEPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetTextureSubImage: PFNGLGETTEXTURESUBIMAGEPROC;
// pub const PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC = ?extern fn (GLuint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLsizei, ?*c_void) void;
// pub extern var glad_glGetCompressedTextureSubImage: PFNGLGETCOMPRESSEDTEXTURESUBIMAGEPROC;
// pub const PFNGLGETGRAPHICSRESETSTATUSPROC = ?extern fn () GLenum;
// pub extern var glad_glGetGraphicsResetStatus: PFNGLGETGRAPHICSRESETSTATUSPROC;
// pub const PFNGLGETNCOMPRESSEDTEXIMAGEPROC = ?extern fn (GLenum, GLint, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnCompressedTexImage: PFNGLGETNCOMPRESSEDTEXIMAGEPROC;
// pub const PFNGLGETNTEXIMAGEPROC = ?extern fn (GLenum, GLint, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnTexImage: PFNGLGETNTEXIMAGEPROC;
// pub const PFNGLGETNUNIFORMDVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]GLdouble) void;
// pub extern var glad_glGetnUniformdv: PFNGLGETNUNIFORMDVPROC;
// pub const PFNGLGETNUNIFORMFVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]GLfloat) void;
// pub extern var glad_glGetnUniformfv: PFNGLGETNUNIFORMFVPROC;
// pub const PFNGLGETNUNIFORMIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]GLint) void;
// pub extern var glad_glGetnUniformiv: PFNGLGETNUNIFORMIVPROC;
// pub const PFNGLGETNUNIFORMUIVPROC = ?extern fn (GLuint, GLint, GLsizei, [*c]GLuint) void;
// pub extern var glad_glGetnUniformuiv: PFNGLGETNUNIFORMUIVPROC;
// pub const PFNGLREADNPIXELSPROC = ?extern fn (GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glReadnPixels: PFNGLREADNPIXELSPROC;
// pub const PFNGLGETNMAPDVPROC = ?extern fn (GLenum, GLenum, GLsizei, [*c]GLdouble) void;
// pub extern var glad_glGetnMapdv: PFNGLGETNMAPDVPROC;
// pub const PFNGLGETNMAPFVPROC = ?extern fn (GLenum, GLenum, GLsizei, [*c]GLfloat) void;
// pub extern var glad_glGetnMapfv: PFNGLGETNMAPFVPROC;
// pub const PFNGLGETNMAPIVPROC = ?extern fn (GLenum, GLenum, GLsizei, [*c]GLint) void;
// pub extern var glad_glGetnMapiv: PFNGLGETNMAPIVPROC;
// pub const PFNGLGETNPIXELMAPFVPROC = ?extern fn (GLenum, GLsizei, [*c]GLfloat) void;
// pub extern var glad_glGetnPixelMapfv: PFNGLGETNPIXELMAPFVPROC;
// pub const PFNGLGETNPIXELMAPUIVPROC = ?extern fn (GLenum, GLsizei, [*c]GLuint) void;
// pub extern var glad_glGetnPixelMapuiv: PFNGLGETNPIXELMAPUIVPROC;
// pub const PFNGLGETNPIXELMAPUSVPROC = ?extern fn (GLenum, GLsizei, [*c]GLushort) void;
// pub extern var glad_glGetnPixelMapusv: PFNGLGETNPIXELMAPUSVPROC;
// pub const PFNGLGETNPOLYGONSTIPPLEPROC = ?extern fn (GLsizei, [*c]GLubyte) void;
// pub extern var glad_glGetnPolygonStipple: PFNGLGETNPOLYGONSTIPPLEPROC;
// pub const PFNGLGETNCOLORTABLEPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnColorTable: PFNGLGETNCOLORTABLEPROC;
// pub const PFNGLGETNCONVOLUTIONFILTERPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnConvolutionFilter: PFNGLGETNCONVOLUTIONFILTERPROC;
// pub const PFNGLGETNSEPARABLEFILTERPROC = ?extern fn (GLenum, GLenum, GLenum, GLsizei, ?*c_void, GLsizei, ?*c_void, ?*c_void) void;
// pub extern var glad_glGetnSeparableFilter: PFNGLGETNSEPARABLEFILTERPROC;
// pub const PFNGLGETNHISTOGRAMPROC = ?extern fn (GLenum, GLboolean, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnHistogram: PFNGLGETNHISTOGRAMPROC;
// pub const PFNGLGETNMINMAXPROC = ?extern fn (GLenum, GLboolean, GLenum, GLenum, GLsizei, ?*c_void) void;
// pub extern var glad_glGetnMinmax: PFNGLGETNMINMAXPROC;
// pub const PFNGLTEXTUREBARRIERPROC = ?extern fn () void;
// pub extern var glad_glTextureBarrier: PFNGLTEXTUREBARRIERPROC;
// pub extern var GLAD_GL_VERSION_4_6: c_int;
// pub const PFNGLSPECIALIZESHADERPROC = ?extern fn (GLuint, [*c]const GLchar, GLuint, [*c]const GLuint, [*c]const GLuint) void;
// pub extern var glad_glSpecializeShader: PFNGLSPECIALIZESHADERPROC;
// pub const PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC = ?extern fn (GLenum, ?*const c_void, GLintptr, GLsizei, GLsizei) void;
// pub extern var glad_glMultiDrawArraysIndirectCount: PFNGLMULTIDRAWARRAYSINDIRECTCOUNTPROC;
// pub const PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC = ?extern fn (GLenum, GLenum, ?*const c_void, GLintptr, GLsizei, GLsizei) void;
// pub extern var glad_glMultiDrawElementsIndirectCount: PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTPROC;
// pub const PFNGLPOLYGONOFFSETCLAMPPROC = ?extern fn (GLfloat, GLfloat, GLfloat) void;
// pub extern var glad_glPolygonOffsetClamp: PFNGLPOLYGONOFFSETCLAMPPROC;
// pub inline fn glMultiTexCoord2s(arg0: GLenum, arg1: GLshort, arg2: GLshort) void {
//     return glad_glMultiTexCoord2s.?(arg0, arg1, arg2);
// }
// pub const GL_RGBA2 = 32853;
// pub const GL_PRIMITIVES_SUBMITTED = 33519;
// pub const GL_HALF_FLOAT = 5131;
// pub const GL_QUERY_RESULT_NO_WAIT = 37268;
// pub const GL_RGBA8UI = 36220;
// pub const GL_POINT = 6912;
// pub const INT_FAST64_MIN = INT64_MIN;
// pub const GL_PIXEL_MAP_I_TO_G_SIZE = 3251;
// pub inline fn glGetTransformFeedbackiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTransformFeedbackiv.?(arg0, arg1, arg2);
// }
// pub const GL_SEPARATE_ATTRIBS = 35981;
// pub inline fn glUniform1f(arg0: GLint, arg1: GLfloat) void {
//     return glad_glUniform1f.?(arg0, arg1);
// }
// pub const GL_LIGHT_MODEL_TWO_SIDE = 2898;
// pub inline fn glGetVertexAttribPointerv(arg0: GLuint, arg1: GLenum, arg2: [*c](?*c_void)) void {
//     return glad_glGetVertexAttribPointerv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE29 = 34013;
// pub const GL_STENCIL_BACK_REF = 36003;
// pub const GL_UNSIGNED_NORMALIZED = 35863;
// pub const GL_TRANSPOSE_PROJECTION_MATRIX = 34020;
// pub const UINTMAX_MAX = UINT64_MAX;
// pub inline fn glWindowPos2sv(arg0: [*c]const GLshort) void {
//     return glad_glWindowPos2sv.?(arg0);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051;
// pub inline fn glVertex2sv(arg0: [*c]const GLshort) void {
//     return glad_glVertex2sv.?(arg0);
// }
// pub inline fn glColor3usv(arg0: [*c]const GLushort) void {
//     return glad_glColor3usv.?(arg0);
// }
// pub inline fn glVertexAttrib4fv(arg0: GLuint, arg1: [*c]const GLfloat) void {
//     return glad_glVertexAttrib4fv.?(arg0, arg1);
// }
// pub const INTPTR_MAX = INT64_MAX;
// pub inline fn glUniformMatrix3dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix3dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_BGRA_INTEGER = 36251;
// pub const GL_POINT_FADE_THRESHOLD_SIZE = 33064;
// pub const GL_CLIP_DISTANCE6 = 12294;
// pub const __WCHAR_WIDTH__ = 16;
// pub const __requires_lock_not_held = lock;
// pub const GL_CONTEXT_FLAGS = 33310;
// pub inline fn glPopAttrib() void {
//     return glad_glPopAttrib.?();
// }
// pub const GL_POLYGON = 9;
// pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub const GL_COLOR_ATTACHMENT22 = 36086;
// pub inline fn glVertexP3uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glVertexP3uiv.?(arg0, arg1);
// }
// pub inline fn glRasterPos3fv(arg0: [*c]const GLfloat) void {
//     return glad_glRasterPos3fv.?(arg0);
// }
// pub const GL_COLOR_ATTACHMENT13 = 36077;
// pub const GL_DEBUG_TYPE_PERFORMANCE = 33360;
// pub inline fn glGenerateMipmap(arg0: GLenum) void {
//     return glad_glGenerateMipmap.?(arg0);
// }
// pub const GL_FOG_INDEX = 2913;
// pub const __CONSTANT_CFSTRINGS__ = 1;
// pub inline fn glBlendFunc(arg0: GLenum, arg1: GLenum) void {
//     return glad_glBlendFunc.?(arg0, arg1);
// }
// pub inline fn glGetSamplerParameterIiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetSamplerParameterIiv.?(arg0, arg1, arg2);
// }
// pub const GL_DOUBLE_MAT4 = 36680;
// pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 33532;
// pub inline fn glEvalCoord2dv(arg0: [*c]const GLdouble) void {
//     return glad_glEvalCoord2dv.?(arg0);
// }
// pub const GL_SHADER_TYPE = 35663;
// pub const GL_IMAGE_2D = 36941;
// pub const GL_PROJECTION_MATRIX = 2983;
// pub inline fn glSecondaryColor3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glSecondaryColor3f.?(arg0, arg1, arg2);
// }
// pub inline fn glMapBufferRange(arg0: GLenum, arg1: GLintptr, arg2: GLsizeiptr, arg3: GLbitfield) ?*c_void {
//     return glad_glMapBufferRange.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNIFORM_BUFFER = 35345;
// pub const GL_STENCIL_INDEX16 = 36169;
// pub inline fn glDrawArrays(arg0: GLenum, arg1: GLint, arg2: GLsizei) void {
//     return glad_glDrawArrays.?(arg0, arg1, arg2);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 33298;
// pub inline fn glClearNamedFramebufferfv(arg0: GLuint, arg1: GLenum, arg2: GLint, arg3: [*c]const GLfloat) void {
//     return glad_glClearNamedFramebufferfv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FEEDBACK_BUFFER_SIZE = 3569;
// pub const GL_FOG_COORDINATE_ARRAY_STRIDE = 33877;
// pub const GL_SYNC_GPU_COMMANDS_COMPLETE = 37143;
// pub const GL_SRC2_ALPHA = 34186;
// pub const GL_SAMPLER_1D_ARRAY = 36288;
// pub inline fn glTexCoord3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glTexCoord3s.?(arg0, arg1, arg2);
// }
// pub inline fn glTexCoord3fv(arg0: [*c]const GLfloat) void {
//     return glad_glTexCoord3fv.?(arg0);
// }
// pub inline fn glCreateRenderbuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateRenderbuffers.?(arg0, arg1);
// }
// pub inline fn glBindAttribLocation(arg0: GLuint, arg1: GLuint, arg2: [*c]const GLchar) void {
//     return glad_glBindAttribLocation.?(arg0, arg1, arg2);
// }
// pub const __SIZEOF_PTRDIFF_T__ = 8;
// pub const GL_RGBA16F = 34842;
// pub const GL_LINE_STRIP_ADJACENCY = 11;
// pub inline fn glCreateProgram() GLuint {
//     return glad_glCreateProgram.?();
// }
// pub const GL_UNSIGNED_INT_5_9_9_9_REV = 35902;
// pub inline fn glColor3fv(arg0: [*c]const GLfloat) void {
//     return glad_glColor3fv.?(arg0);
// }
// pub const GL_TESS_EVALUATION_TEXTURE = 33437;
// pub inline fn glTexCoord1i(arg0: GLint) void {
//     return glad_glTexCoord1i.?(arg0);
// }
// pub inline fn glIsQuery(arg0: GLuint) GLboolean {
//     return glad_glIsQuery.?(arg0);
// }
// pub inline fn glDeleteSamplers(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteSamplers.?(arg0, arg1);
// }
// pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394;
// pub const GL_TESS_GEN_VERTEX_ORDER = 36472;
// pub inline fn glMaterialfv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glMaterialfv.?(arg0, arg1, arg2);
// }
// pub inline fn glFlush() void {
//     return glad_glFlush.?();
// }
// pub inline fn glVertexAttribI2iv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttribI2iv.?(arg0, arg1);
// }
// pub inline fn glSamplerParameterf(arg0: GLuint, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glSamplerParameterf.?(arg0, arg1, arg2);
// }
// pub const GL_PRIMITIVE_RESTART_FIXED_INDEX = 36201;
// pub inline fn glGetnUniformiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]GLint) void {
//     return glad_glGetnUniformiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COLOR_ATTACHMENT5 = 36069;
// pub const GL_MAP_PERSISTENT_BIT = 64;
// pub const GL_VIEW_CLASS_RGTC2_RG = 33489;
// pub inline fn glTextureSubImage2D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLsizei, arg5: GLsizei, arg6: GLenum, arg7: GLenum, arg8: ?*const c_void) void {
//     return glad_glTextureSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 36423;
// pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36972;
// pub const __UINT_LEAST8_MAX__ = 255;
// pub const GL_BUFFER_ACCESS = 35003;
// pub const GL_INTERNALFORMAT_GREEN_SIZE = 33394;
// pub const __RDRND__ = 1;
// pub const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 37279;
// pub const GL_TEXTURE_CUBE_MAP_ARRAY = 36873;
// pub const GL_NOR = 5384;
// pub inline fn glVertexAttrib1s(arg0: GLuint, arg1: GLshort) void {
//     return glad_glVertexAttrib1s.?(arg0, arg1);
// }
// pub inline fn glMapGrid2f(arg0: GLint, arg1: GLfloat, arg2: GLfloat, arg3: GLint, arg4: GLfloat, arg5: GLfloat) void {
//     return glad_glMapGrid2f.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_TEXTURE_INTENSITY_TYPE = 35861;
// pub inline fn glSamplerParameterIiv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glSamplerParameterIiv.?(arg0, arg1, arg2);
// }
// pub const GL_COPY_READ_BUFFER = 36662;
// pub const SIG_ATOMIC_MAX = INT32_MAX;
// pub const _MSC_EXTENSIONS = 1;
// pub const GL_BITMAP_TOKEN = 1796;
// pub inline fn glGetTexGenfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetTexGenfv.?(arg0, arg1, arg2);
// }
// pub const GL_VERSION_1_2 = 1;
// pub const GL_SAMPLER_2D_SHADOW = 35682;
// pub inline fn glColor4ubv(arg0: [*c]const GLubyte) void {
//     return glad_glColor4ubv.?(arg0);
// }
// pub const GL_PACK_SKIP_ROWS = 3331;
// pub const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182;
// pub inline fn glDrawElementsInstancedBaseVertexBaseInstance(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void, arg4: GLsizei, arg5: GLint, arg6: GLuint) void {
//     return glad_glDrawElementsInstancedBaseVertexBaseInstance.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_MAX_FRAMEBUFFER_WIDTH = 37653;
// pub inline fn glWindowPos3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glWindowPos3d.?(arg0, arg1, arg2);
// }
// pub const GL_OBJECT_LINEAR = 9217;
// pub const GL_DRAW_BUFFER8 = 34861;
// pub inline fn glGenTransformFeedbacks(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenTransformFeedbacks.?(arg0, arg1);
// }
// pub inline fn glGetTexParameterIuiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLuint) void {
//     return glad_glGetTexParameterIuiv.?(arg0, arg1, arg2);
// }
// pub const GL_CURRENT_RASTER_SECONDARY_COLOR = 33887;
// pub inline fn glUniform3uiv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glUniform3uiv.?(arg0, arg1, arg2);
// }
// pub const GL_SEPARATE_SPECULAR_COLOR = 33274;
// pub const __UINTMAX_FMTu__ = "llu";
// pub const GL_TEXTURE_TARGET = 4102;
// pub inline fn glGetTexParameterfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetTexParameterfv.?(arg0, arg1, arg2);
// }
// pub const GL_DOUBLE_MAT4x2 = 36685;
// pub inline fn glSamplerParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glSamplerParameteriv.?(arg0, arg1, arg2);
// }
// pub inline fn glGetnSeparableFilter(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: ?*c_void, arg5: GLsizei, arg6: ?*c_void, arg7: ?*c_void) void {
//     return glad_glGetnSeparableFilter.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_SIGNALED = 37145;
// pub inline fn glEvalMesh2(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint) void {
//     return glad_glEvalMesh2.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glCreateTextures(arg0: GLenum, arg1: GLsizei, arg2: [*c]GLuint) void {
//     return glad_glCreateTextures.?(arg0, arg1, arg2);
// }
// pub const GL_FLOAT_MAT2x4 = 35686;
// pub inline fn glGetBufferParameteri64v(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint64) void {
//     return glad_glGetBufferParameteri64v.?(arg0, arg1, arg2);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 33297;
// pub const GL_RENDERBUFFER_DEPTH_SIZE = 36180;
// pub const GL_INTERNALFORMAT_RED_TYPE = 33400;
// pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37133;
// pub inline fn glUniform4fv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glUniform4fv.?(arg0, arg1, arg2);
// }
// pub const GL_STENCIL_BACK_VALUE_MASK = 36004;
// pub const GL_RGBA16 = 32859;
// pub const GL_FIXED_ONLY = 35101;
// pub const __UINTMAX_WIDTH__ = 64;
// pub const GL_UNIFORM_BLOCK_DATA_SIZE = 35392;
// pub inline fn glVertexAttrib3sv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttrib3sv.?(arg0, arg1);
// }
// pub const GL_FRAGMENT_DEPTH = 33874;
// pub inline fn glColor3us(arg0: GLushort, arg1: GLushort, arg2: GLushort) void {
//     return glad_glColor3us.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttrib4f(arg0: GLuint, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat) void {
//     return glad_glVertexAttrib4f.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_RG32F = 33328;
// pub const GL_AND = 5377;
// pub const GL_SHADER_BINARY_FORMATS = 36344;
// pub inline fn glSecondaryColor3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glSecondaryColor3s.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLE_COVERAGE = 32928;
// pub const GL_SPECULAR = 4610;
// pub const GL_SAMPLER_2D = 35678;
// pub inline fn glVertex3fv(arg0: [*c]const GLfloat) void {
//     return glad_glVertex3fv.?(arg0);
// }
// pub const GL_INTERNALFORMAT_GREEN_TYPE = 33401;
// pub const GL_TRANSFORM_FEEDBACK_ACTIVE = 36388;
// pub inline fn glUniform1i(arg0: GLint, arg1: GLint) void {
//     return glad_glUniform1i.?(arg0, arg1);
// }
// pub const GL_DOUBLE_MAT2x4 = 36682;
// pub const GL_CURRENT_RASTER_POSITION = 2823;
// pub inline fn glDrawBuffer(arg0: GLenum) void {
//     return glad_glDrawBuffer.?(arg0);
// }
// pub const GL_UNSIGNED_INT_SAMPLER_1D = 36305;
// pub inline fn glSecondaryColorP3uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glSecondaryColorP3uiv.?(arg0, arg1);
// }
// pub inline fn glInvalidateFramebuffer(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLenum) void {
//     return glad_glInvalidateFramebuffer.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_CUBE_MAP_SEAMLESS = 34895;
// pub const GL_UNPACK_IMAGE_HEIGHT = 32878;
// pub const GL_ACTIVE_SUBROUTINE_MAX_LENGTH = 36424;
// pub const GL_CLIP_DISTANCE1 = 12289;
// pub inline fn glEnablei(arg0: GLenum, arg1: GLuint) void {
//     return glad_glEnablei.?(arg0, arg1);
// }
// pub const INT_FAST16_MIN = INT32_MIN;
// pub const GL_VIEW_CLASS_S3TC_DXT3_RGBA = 33486;
// pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
// pub const __UINT64_FMTx__ = "llx";
// pub const GL_LINE_TOKEN = 1794;
// pub const GL_DOUBLEBUFFER = 3122;
// pub const _HAS_CXX17 = 0;
// pub const GL_ACCUM_BLUE_BITS = 3418;
// pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 37588;
// pub const _Always_impl_ = annos;
// pub const GL_SHADER_SOURCE_LENGTH = 35720;
// pub const _USE_ATTRIBUTES_FOR_SAL = 0;
// pub const GL_TEXTURE31 = 34015;
// pub const GL_COLOR_ATTACHMENT23 = 36087;
// pub const GL_RG = 33319;
// pub const GL_COLOR_ATTACHMENT12 = 36076;
// pub const GL_EXTENSIONS = 7939;
// pub const GL_MAX_COMBINED_DIMENSIONS = 33410;
// pub const __UINTPTR_WIDTH__ = 64;
// pub const GL_DRAW_BUFFER15 = 34868;
// pub inline fn glRasterPos4s(arg0: GLshort, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glRasterPos4s.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_LAYER_PROVOKING_VERTEX = 33374;
// pub inline fn glGetnConvolutionFilter(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: ?*c_void) void {
//     return glad_glGetnConvolutionFilter.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_DOUBLE_MAT3 = 36679;
// pub const GL_IMAGE_TEXEL_SIZE = 33447;
// pub inline fn glMultiTexCoord2f(arg0: GLenum, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glMultiTexCoord2f.?(arg0, arg1, arg2);
// }
// pub inline fn glMateriali(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glMateriali.?(arg0, arg1, arg2);
// }
// pub const GL_RGB8UI = 36221;
// pub inline fn glGetMapfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetMapfv.?(arg0, arg1, arg2);
// }
// pub inline fn glSecondaryColor3uiv(arg0: [*c]const GLuint) void {
//     return glad_glSecondaryColor3uiv.?(arg0);
// }
// pub const GL_DEBUG_TYPE_MARKER = 33384;
// pub const __AES__ = 1;
// pub const GL_RGB16I = 36233;
// pub const GL_ZERO = 0;
// pub const GL_OR_INVERTED = 5389;
// pub const GL_VERTEX_SHADER_INVOCATIONS = 33520;
// pub inline fn glVertexAttrib1f(arg0: GLuint, arg1: GLfloat) void {
//     return glad_glVertexAttrib1f.?(arg0, arg1);
// }
// pub const GL_TEXTURE_MIN_FILTER = 10241;
// pub const GL_TEXTURE_BUFFER_DATA_STORE_BINDING = 35885;
// pub const GL_PACK_COMPRESSED_BLOCK_DEPTH = 37165;
// pub const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 36480;
// pub const GL_C3F_V3F = 10788;
// pub const GL_S = 8192;
// pub const GL_INDEX_OFFSET = 3347;
// pub const __SIZE_FMTo__ = "llo";
// pub const GL_UNSIGNED_SHORT_4_4_4_4 = 32819;
// pub inline fn glCopyTexImage2D(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLint) void {
//     return glad_glCopyTexImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub inline fn glTexSubImage3D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLenum, arg10: ?*const c_void) void {
//     return glad_glTexSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
// }
// pub const GL_AND_INVERTED = 5380;
// pub const GL_OPERAND2_RGB = 34194;
// pub const __UINT_FAST16_FMTx__ = "hx";
// pub const GL_INDEX_BITS = 3409;
// pub const GL_POINT_SMOOTH_HINT = 3153;
// pub const GL_TEXTURE_BINDING_RECTANGLE = 34038;
// pub const GL_MAX_SAMPLES = 36183;
// pub inline fn glRasterPos4iv(arg0: [*c]const GLint) void {
//     return glad_glRasterPos4iv.?(arg0);
// }
// pub inline fn glGetTransformFeedbacki64_v(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: [*c]GLint64) void {
//     return glad_glGetTransformFeedbacki64_v.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_QUERY_WAIT_INVERTED = 36375;
// pub inline fn glScaled(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glScaled.?(arg0, arg1, arg2);
// }
// pub const GL_EYE_PLANE = 9474;
// pub const GL_RGB4 = 32847;
// pub const GL_POINT_SMOOTH = 2832;
// pub const _On_failure_impl_ = annos;
// pub const GL_FRONT_LEFT = 1024;
// pub inline fn glTransformFeedbackVaryings(arg0: GLuint, arg1: GLsizei, arg2: [*c]const ([*c]const GLchar), arg3: GLenum) void {
//     return glad_glTransformFeedbackVaryings.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_IMAGE_BINDING_NAME = 36666;
// pub const INTPTR_MIN = INT64_MIN;
// pub const GL_3D_COLOR_TEXTURE = 1539;
// pub const GL_INDEX_SHIFT = 3346;
// pub const __UINT_FAST64_FMTx__ = "llx";
// pub inline fn glBlendEquationSeparate(arg0: GLenum, arg1: GLenum) void {
//     return glad_glBlendEquationSeparate.?(arg0, arg1);
// }
// pub const GL_BLEND = 3042;
// pub const GL_STENCIL_BACK_FAIL = 34817;
// pub const GL_PARAMETER_BUFFER_BINDING = 33007;
// pub inline fn glEndList() void {
//     return glad_glEndList.?();
// }
// pub inline fn glClearBufferData(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLenum, arg4: ?*const c_void) void {
//     return glad_glClearBufferData.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __SIZE_WIDTH__ = 64;
// pub const GL_CURRENT_RASTER_COLOR = 2820;
// pub const GL_PIXEL_MAP_R_TO_R = 3190;
// pub const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 36877;
// pub const GL_MAP1_NORMAL = 3474;
// pub const GL_DEBUG_CALLBACK_USER_PARAM = 33349;
// pub const __INT_MAX__ = 2147483647;
// pub const GL_TRANSFORM_FEEDBACK_OVERFLOW = 33516;
// pub inline fn glRecti(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glRecti.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_VIEW_NUM_LAYERS = 33502;
// pub inline fn glBlendFunci(arg0: GLuint, arg1: GLenum, arg2: GLenum) void {
//     return glad_glBlendFunci.?(arg0, arg1, arg2);
// }
// pub const __clang_major__ = 9;
// pub inline fn glGetPointerv(arg0: GLenum, arg1: [*c](?*c_void)) void {
//     return glad_glGetPointerv.?(arg0, arg1);
// }
// pub inline fn glVertexAttribI1ui(arg0: GLuint, arg1: GLuint) void {
//     return glad_glVertexAttribI1ui.?(arg0, arg1);
// }
// pub inline fn glUniform1fv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glUniform1fv.?(arg0, arg1, arg2);
// }
// pub const GL_IMAGE_CLASS_4_X_16 = 33468;
// pub inline fn glVertexAttrib4s(arg0: GLuint, arg1: GLshort, arg2: GLshort, arg3: GLshort, arg4: GLshort) void {
//     return glad_glVertexAttrib4s.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const UINTPTR_MAX = UINT64_MAX;
// pub const GL_R32F = 33326;
// pub inline fn glGetUniformfv(arg0: GLuint, arg1: GLint, arg2: [*c]GLfloat) void {
//     return glad_glGetUniformfv.?(arg0, arg1, arg2);
// }
// pub inline fn glDrawElementsBaseVertex(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void, arg4: GLint) void {
//     return glad_glDrawElementsBaseVertex.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glBindImageTextures(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glBindImageTextures.?(arg0, arg1, arg2);
// }
// pub const GL_POLYGON_STIPPLE = 2882;
// pub inline fn glGetProgramBinary(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLenum, arg4: ?*c_void) void {
//     return glad_glGetProgramBinary.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_INDEX_ARRAY_TYPE = 32901;
// pub const GL_SHADER = 33505;
// pub const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 36971;
// pub inline fn glUniform3iv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLint) void {
//     return glad_glUniform3iv.?(arg0, arg1, arg2);
// }
// pub const __UINT_LEAST16_MAX__ = 65535;
// pub const __XSAVES__ = 1;
// pub inline fn glDrawElementsInstanced(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void, arg4: GLsizei) void {
//     return glad_glDrawElementsInstanced.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glTextureParameterf(arg0: GLuint, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glTextureParameterf.?(arg0, arg1, arg2);
// }
// pub const GL_VERSION_1_3 = 1;
// pub const GL_VERTEX_ARRAY_BINDING = 34229;
// pub inline fn glGetMultisamplefv(arg0: GLenum, arg1: GLuint, arg2: [*c]GLfloat) void {
//     return glad_glGetMultisamplefv.?(arg0, arg1, arg2);
// }
// pub inline fn glGetMaterialiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetMaterialiv.?(arg0, arg1, arg2);
// }
// pub inline fn glStencilMaskSeparate(arg0: GLenum, arg1: GLuint) void {
//     return glad_glStencilMaskSeparate.?(arg0, arg1);
// }
// pub const GL_TESS_CONTROL_TEXTURE = 33436;
// pub const __SAL_H_VERSION = 180000000;
// pub const __UINT8_FMTu__ = "hhu";
// pub const GL_TRANSFORM_FEEDBACK_VARYING = 37620;
// pub const GL_RGB8I = 36239;
// pub const GL_MAX_COMPUTE_IMAGE_UNIFORMS = 37309;
// pub const GL_SRC1_ALPHA = 34185;
// pub inline fn glTextureParameterIiv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTextureParameterIiv.?(arg0, arg1, arg2);
// }
// pub const GL_DRAW_BUFFER9 = 34862;
// pub inline fn glRasterPos4sv(arg0: [*c]const GLshort) void {
//     return glad_glRasterPos4sv.?(arg0);
// }
// pub const GL_CLIENT_ATTRIB_STACK_DEPTH = 2993;
// pub inline fn glBindTextures(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glBindTextures.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexArrayVertexBuffers(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]const GLuint, arg4: [*c]const GLintptr, arg5: [*c]const GLsizei) void {
//     return glad_glVertexArrayVertexBuffers.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const __has_lock_property = kind;
// pub const GL_LUMINANCE_ALPHA = 6410;
// pub const GL_TRIANGLE_FAN = 6;
// pub const GL_UNSIGNED_INT_VEC4 = 36296;
// pub inline fn glCallList(arg0: GLuint) void {
//     return glad_glCallList.?(arg0);
// }
// pub const GL_TEXTURE_GEN_T = 3169;
// pub const GL_COMPRESSED_SRGB_ALPHA = 35913;
// pub inline fn glTexCoordP1ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glTexCoordP1ui.?(arg0, arg1);
// }
// pub const GL_INT_SAMPLER_2D = 36298;
// pub inline fn glProgramUniform4fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLfloat) void {
//     return glad_glProgramUniform4fv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetProgramInfoLog(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLchar) void {
//     return glad_glGetProgramInfoLog.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_MIN_LOD = 33082;
// pub const GL_MAX_FRAGMENT_UNIFORM_VECTORS = 36349;
// pub const GL_ALPHA16 = 32830;
// pub const __UINT32_FMTu__ = "u";
// pub const _Acquires_exclusive_lock_ = lock;
// pub const GL_TEXTURE_ALPHA_SIZE = 32863;
// pub const GL_COMPRESSED_SIGNED_R11_EAC = 37489;
// pub inline fn glBindProgramPipeline(arg0: GLuint) void {
//     return glad_glBindProgramPipeline.?(arg0);
// }
// pub const GL_VIEW_CLASS_128_BITS = 33476;
// pub inline fn glGetQueryiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetQueryiv.?(arg0, arg1, arg2);
// }
// pub const GL_R16F = 33325;
// pub const GL_GEOMETRY_INPUT_TYPE = 35095;
// pub inline fn glCreateProgramPipelines(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateProgramPipelines.?(arg0, arg1);
// }
// pub const GL_VERTEX_SUBROUTINE = 37608;
// pub const GL_T2F_C4UB_V3F = 10793;
// pub const GL_RGBA4 = 32854;
// pub inline fn glVertexAttrib2dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttrib2dv.?(arg0, arg1);
// }
// pub const GL_ONE = 1;
// pub const GL_TEXTURE_COORD_ARRAY_POINTER = 32914;
// pub inline fn glLoadName(arg0: GLuint) void {
//     return glad_glLoadName.?(arg0);
// }
// pub const GL_MAX_VERTEX_OUTPUT_COMPONENTS = 37154;
// pub const GL_VIEW_CLASS_BPTC_FLOAT = 33491;
// pub const __INT_LEAST16_TYPE__ = short;
// pub const GL_CURRENT_COLOR = 2816;
// pub inline fn glWindowPos3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glWindowPos3s.?(arg0, arg1, arg2);
// }
// pub const GL_PIXEL_MAP_S_TO_S = 3185;
// pub inline fn glSecondaryColor3usv(arg0: [*c]const GLushort) void {
//     return glad_glSecondaryColor3usv.?(arg0);
// }
// pub const __SIZEOF_INT__ = 4;
// pub const _Valid_ = _Valid_impl_;
// pub const _Success_impl_ = expr;
// pub const GL_CLIP_DISTANCE0 = 12288;
// pub inline fn glCompressedTexImage2D(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLint, arg6: GLsizei, arg7: ?*const c_void) void {
//     return glad_glCompressedTexImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_COMBINE_RGB = 34161;
// pub inline fn glGetFragDataLocation(arg0: GLuint, arg1: [*c]const GLchar) GLint {
//     return glad_glGetFragDataLocation.?(arg0, arg1);
// }
// pub inline fn glVertexAttribI1uiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttribI1uiv.?(arg0, arg1);
// }
// pub const GL_TEXTURE_BUFFER = 35882;
// pub const GL_MAX_TEXTURE_BUFFER_SIZE = 35883;
// pub const GL_ENABLE_BIT = 8192;
// pub inline fn glVertex4fv(arg0: [*c]const GLfloat) void {
//     return glad_glVertex4fv.?(arg0);
// }
// pub const GL_DEBUG_SEVERITY_HIGH = 37190;
// pub const GL_TEXTURE_3D = 32879;
// pub inline fn glGetVertexAttribfv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetVertexAttribfv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE30 = 34014;
// pub const GL_COLOR_ATTACHMENT24 = 36088;
// pub inline fn glVertexAttribPointer(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLboolean, arg4: GLsizei, arg5: ?*const c_void) void {
//     return glad_glVertexAttribPointer.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_COLOR_ATTACHMENT15 = 36079;
// pub const GL_C4UB_V2F = 10786;
// pub const GL_BUFFER_MAP_POINTER = 35005;
// pub const WCHAR_MIN = 0;
// pub const GL_UNPACK_COMPRESSED_BLOCK_SIZE = 37162;
// pub const GL_DEPTH_ATTACHMENT = 36096;
// pub const GL_DRAW_BUFFER14 = 34867;
// pub const __ANNOTATION = fun;
// pub const GL_DOUBLE_MAT2 = 36678;
// pub inline fn glUniformMatrix4x2fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix4x2fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_STACK_OVERFLOW = 1283;
// pub const GL_TESS_GEN_MODE = 36470;
// pub const __UINT64_FMTo__ = "llo";
// pub const GL_PROXY_TEXTURE_3D = 32880;
// pub const __ATOMIC_ACQ_REL = 4;
// pub const GL_TEXTURE_MAX_LEVEL = 33085;
// pub inline fn glStencilFuncSeparate(arg0: GLenum, arg1: GLenum, arg2: GLint, arg3: GLuint) void {
//     return glad_glStencilFuncSeparate.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTexEnvfv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glTexEnvfv.?(arg0, arg1, arg2);
// }
// pub const GL_MAP_COLOR = 3344;
// pub const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 33301;
// pub inline fn glPopName() void {
//     return glad_glPopName.?();
// }
// pub const GL_STENCIL_RENDERABLE = 33416;
// pub const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS = 36264;
// pub const GL_PIXEL_MAP_I_TO_B_SIZE = 3252;
// pub const GL_READ_FRAMEBUFFER = 36008;
// pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 33454;
// pub const GL_INCR = 7682;
// pub const GL_R = 8194;
// pub const GL_LINE_WIDTH_RANGE = 2850;
// pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const __releases_lock = lock;
// pub const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 34971;
// pub const GL_CULL_FACE_MODE = 2885;
// pub const GL_TEXTURE_BINDING_1D_ARRAY = 35868;
// pub inline fn glCompressedTextureSubImage3D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLsizei, arg10: ?*const c_void) void {
//     return glad_glCompressedTextureSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
// }
// pub inline fn glNormal3b(arg0: GLbyte, arg1: GLbyte, arg2: GLbyte) void {
//     return glad_glNormal3b.?(arg0, arg1, arg2);
// }
// pub const GL_INVALID_ENUM = 1280;
// pub const GL_RESCALE_NORMAL = 32826;
// pub const GL_CURRENT_TEXTURE_COORDS = 2819;
// pub inline fn glCallLists(arg0: GLsizei, arg1: GLenum, arg2: ?*const c_void) void {
//     return glad_glCallLists.?(arg0, arg1, arg2);
// }
// pub const _Analysis_assume_ = expr;
// pub const GL_RGB5 = 32848;
// pub const GL_TEXTURE_SWIZZLE_G = 36419;
// pub inline fn glTexSubImage1D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLenum, arg5: GLenum, arg6: ?*const c_void) void {
//     return glad_glTexSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub inline fn glGetProgramStageiv(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetProgramStageiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glNormal3sv(arg0: [*c]const GLshort) void {
//     return glad_glNormal3sv.?(arg0);
// }
// pub inline fn glProgramUniform3f(arg0: GLuint, arg1: GLint, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat) void {
//     return glad_glProgramUniform3f.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048;
// pub inline fn glTexParameterfv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glTexParameterfv.?(arg0, arg1, arg2);
// }
// pub inline fn glVertex3sv(arg0: [*c]const GLshort) void {
//     return glad_glVertex3sv.?(arg0);
// }
// pub const GL_MAX_DEPTH_TEXTURE_SAMPLES = 37135;
// pub inline fn glGetnHistogram(arg0: GLenum, arg1: GLboolean, arg2: GLenum, arg3: GLenum, arg4: GLsizei, arg5: ?*c_void) void {
//     return glad_glGetnHistogram.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_DEBUG_SOURCE_THIRD_PARTY = 33353;
// pub const __SIG_ATOMIC_WIDTH__ = 32;
// pub const GL_QUERY_COUNTER_BITS = 34916;
// pub inline fn glEnableClientState(arg0: GLenum) void {
//     return glad_glEnableClientState.?(arg0);
// }
// pub inline fn glCopyTextureSubImage2D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLsizei, arg7: GLsizei) void {
//     return glad_glCopyTextureSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_DECAL = 8449;
// pub const __UINT_FAST64_FMTX__ = "llX";
// pub const GL_MAX_VERTEX_UNIFORM_VECTORS = 36347;
// pub const KHRONOS_MAX_ENUM = 2147483647;
// pub inline fn glMultiTexCoord4sv(arg0: GLenum, arg1: [*c]const GLshort) void {
//     return glad_glMultiTexCoord4sv.?(arg0, arg1);
// }
// pub inline fn glCreateVertexArrays(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateVertexArrays.?(arg0, arg1);
// }
// pub inline fn glProgramUniformMatrix3x2dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix3x2dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_CURRENT_RASTER_TEXTURE_COORDS = 2822;
// pub inline fn glProgramUniform1fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLfloat) void {
//     return glad_glProgramUniform1fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494;
// pub const _Deref2_ret1_impl_ = p1;
// pub const GL_PIXEL_MAP_I_TO_A = 3189;
// pub const GL_SMOOTH = 7425;
// pub const GL_MAX_VARYING_COMPONENTS = 35659;
// pub inline fn glProgramUniform3iv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLint) void {
//     return glad_glProgramUniform3iv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_T2F_V3F = 10791;
// pub const GL_PIXEL_MAP_R_TO_R_SIZE = 3254;
// pub const GL_INT_SAMPLER_2D_ARRAY = 36303;
// pub inline fn glUniform2d(arg0: GLint, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glUniform2d.?(arg0, arg1, arg2);
// }
// pub const GL_ARRAY_BUFFER_BINDING = 34964;
// pub const GL_TESS_EVALUATION_SHADER_BIT = 16;
// pub const GL_INT_SAMPLER_2D_RECT = 36301;
// pub const __byte_readableTo = size;
// pub inline fn glMapGrid2d(arg0: GLint, arg1: GLdouble, arg2: GLdouble, arg3: GLint, arg4: GLdouble, arg5: GLdouble) void {
//     return glad_glMapGrid2d.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glUniform4f(arg0: GLint, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat) void {
//     return glad_glUniform4f.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __DBL_MIN_EXP__ = -1021;
// pub const GL_READ_PIXELS = 33420;
// pub const GL_VERSION_1_0 = 1;
// pub inline fn glBindFragDataLocation(arg0: GLuint, arg1: GLuint, arg2: [*c]const GLchar) void {
//     return glad_glBindFragDataLocation.?(arg0, arg1, arg2);
// }
// pub const GL_IMAGE_BINDING_FORMAT = 36974;
// pub const GL_COLOR_WRITEMASK = 3107;
// pub inline fn glIndexiv(arg0: [*c]const GLint) void {
//     return glad_glIndexiv.?(arg0);
// }
// pub inline fn glSecondaryColor3iv(arg0: [*c]const GLint) void {
//     return glad_glSecondaryColor3iv.?(arg0);
// }
// pub inline fn glNamedFramebufferTextureLayer(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLint, arg4: GLint) void {
//     return glad_glNamedFramebufferTextureLayer.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glClear(arg0: GLbitfield) void {
//     return glad_glClear.?(arg0);
// }
// pub inline fn glGetFramebufferAttachmentParameteriv(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetFramebufferAttachmentParameteriv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DEBUG_OUTPUT = 37600;
// pub inline fn glAttachShader(arg0: GLuint, arg1: GLuint) void {
//     return glad_glAttachShader.?(arg0, arg1);
// }
// pub const __SIZEOF_SHORT__ = 2;
// pub const GL_FRAGMENT_SHADER = 35632;
// pub inline fn glWindowPos3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glWindowPos3f.?(arg0, arg1, arg2);
// }
// pub inline fn glEdgeFlagPointer(arg0: GLsizei, arg1: ?*const c_void) void {
//     return glad_glEdgeFlagPointer.?(arg0, arg1);
// }
// pub const __UINT16_FMTX__ = "hX";
// pub const GL_UNKNOWN_CONTEXT_RESET = 33365;
// pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979;
// pub inline fn glGetTextureParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTextureParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_FLOAT_MAT3x2 = 35687;
// pub inline fn glTexCoord2iv(arg0: [*c]const GLint) void {
//     return glad_glTexCoord2iv.?(arg0);
// }
// pub inline fn glPixelMapusv(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLushort) void {
//     return glad_glPixelMapusv.?(arg0, arg1, arg2);
// }
// pub const GL_VIEW_CLASS_64_BITS = 33478;
// pub inline fn glDeleteTransformFeedbacks(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteTransformFeedbacks.?(arg0, arg1);
// }
// pub const GL_UNIFORM_TYPE = 35383;
// pub const GL_MAP1_GRID_SEGMENTS = 3537;
// pub const GL_BUFFER_UPDATE_BARRIER_BIT = 512;
// pub inline fn glMultMatrixd(arg0: [*c]const GLdouble) void {
//     return glad_glMultMatrixd.?(arg0);
// }
// pub const GL_CURRENT_VERTEX_ATTRIB = 34342;
// pub inline fn glGetGraphicsResetStatus() GLenum {
//     return glad_glGetGraphicsResetStatus.?();
// }
// pub const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054;
// pub inline fn glTexImage2D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLsizei, arg5: GLint, arg6: GLenum, arg7: GLenum, arg8: ?*const c_void) void {
//     return glad_glTexImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_QUERY_NO_WAIT = 36372;
// pub inline fn glTexStorage2D(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glTexStorage2D.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glReadBuffer(arg0: GLenum) void {
//     return glad_glReadBuffer.?(arg0);
// }
// pub inline fn glGetInteger64v(arg0: GLenum, arg1: [*c]GLint64) void {
//     return glad_glGetInteger64v.?(arg0, arg1);
// }
// pub inline fn glEnableVertexArrayAttrib(arg0: GLuint, arg1: GLuint) void {
//     return glad_glEnableVertexArrayAttrib.?(arg0, arg1);
// }
// pub const _Releases_shared_lock_ = lock;
// pub inline fn glMultiTexCoord4iv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glMultiTexCoord4iv.?(arg0, arg1);
// }
// pub const __PRFCHW__ = 1;
// pub inline fn glBindBuffer(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBindBuffer.?(arg0, arg1);
// }
// pub inline fn glDrawElementsInstancedBaseInstance(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void, arg4: GLsizei, arg5: GLuint) void {
//     return glad_glDrawElementsInstancedBaseInstance.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glGetActiveSubroutineUniformName(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLsizei, arg4: [*c]GLsizei, arg5: [*c]GLchar) void {
//     return glad_glGetActiveSubroutineUniformName.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_MAX_SERVER_WAIT_TIMEOUT = 37137;
// pub inline fn glGetNamedBufferParameteri64v(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint64) void {
//     return glad_glGetNamedBufferParameteri64v.?(arg0, arg1, arg2);
// }
// pub const GL_SUBPIXEL_BITS = 3408;
// pub const _Releases_exclusive_lock_ = lock;
// pub const __DBL_MANT_DIG__ = 53;
// pub const GL_INCR_WRAP = 34055;
// pub const GL_EDGE_FLAG_ARRAY = 32889;
// pub const GL_TEXTURE_PRIORITY = 32870;
// pub const GL_INTERNALFORMAT_PREFERRED = 33392;
// pub const GL_SHADER_STORAGE_BUFFER_START = 37076;
// pub inline fn glTexGeni(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glTexGeni.?(arg0, arg1, arg2);
// }
// pub inline fn glTexBufferRange(arg0: GLenum, arg1: GLenum, arg2: GLuint, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glTexBufferRange.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_INT_VEC3 = 35668;
// pub inline fn glBindBufferRange(arg0: GLenum, arg1: GLuint, arg2: GLuint, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glBindBufferRange.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glEndQuery(arg0: GLenum) void {
//     return glad_glEndQuery.?(arg0);
// }
// pub const __SIZEOF_SIZE_T__ = 8;
// pub const __UINT_LEAST16_FMTo__ = "ho";
// pub inline fn glGetProgramResourceLocation(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLchar) GLint {
//     return glad_glGetProgramResourceLocation.?(arg0, arg1, arg2);
// }
// pub const GL_TRIANGLES = 4;
// pub const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 37652;
// pub inline fn glGetAttachedShaders(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLuint) void {
//     return glad_glGetAttachedShaders.?(arg0, arg1, arg2, arg3);
// }
// pub const KHRONOS_SUPPORT_FLOAT = 1;
// pub const GL_CLIP_DISTANCE3 = 12291;
// pub const GL_DOUBLE_MAT3x2 = 36683;
// pub const _Pre_satisfies_impl_ = expr;
// pub const _Deref_ret1_impl_ = p1;
// pub inline fn glPixelMapuiv(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glPixelMapuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glIsSampler(arg0: GLuint) GLboolean {
//     return glad_glIsSampler.?(arg0);
// }
// pub const GL_FOG_COORD_ARRAY_TYPE = 33876;
// pub const GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
// pub const GL_FLOAT_MAT2 = 35674;
// pub inline fn glLineStipple(arg0: GLint, arg1: GLushort) void {
//     return glad_glLineStipple.?(arg0, arg1);
// }
// pub inline fn glWindowPos2iv(arg0: [*c]const GLint) void {
//     return glad_glWindowPos2iv.?(arg0);
// }
// pub const __code_model_small_ = 1;
// pub const GL_NOOP = 5381;
// pub const GL_COLOR_ATTACHMENT25 = 36089;
// pub inline fn glBlendColor(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glBlendColor.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glRasterPos2dv(arg0: [*c]const GLdouble) void {
//     return glad_glRasterPos2dv.?(arg0);
// }
// pub const GL_COLOR_ATTACHMENT14 = 36078;
// pub const __INT16_MAX__ = 32767;
// pub const GLAPI = @"extern";
// pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
// pub const __WINT_WIDTH__ = 16;
// pub inline fn glVertexAttribL3d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glVertexAttribL3d.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DRAW_BUFFER13 = 34866;
// pub const GL_GREEN_INTEGER = 36245;
// pub const __SHRT_MAX__ = 32767;
// pub inline fn glShadeModel(arg0: GLenum) void {
//     return glad_glShadeModel.?(arg0);
// }
// pub inline fn glProgramUniformMatrix4x3fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix4x3fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_INDEX_ARRAY_POINTER = 32913;
// pub const GL_ACTIVE_UNIFORMS = 35718;
// pub const __INT32_FMTd__ = "d";
// pub const GL_DEBUG_TYPE_OTHER = 33361;
// pub const __INTPTR_WIDTH__ = 64;
// pub const GL_MINOR_VERSION = 33308;
// pub const GL_PIXEL_PACK_BUFFER_BINDING = 35053;
// pub const GL_STENCIL_INDEX1 = 36166;
// pub const GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW = 33517;
// pub const __INT_FAST32_TYPE__ = int;
// pub const _Deref_pre1_impl_ = p1;
// pub inline fn glVertexAttrib1d(arg0: GLuint, arg1: GLdouble) void {
//     return glad_glVertexAttrib1d.?(arg0, arg1);
// }
// pub const GL_SRC1_RGB = 34177;
// pub const _Post1_impl_ = p1;
// pub inline fn glProgramUniformMatrix2x4dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix2x4dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE = 37124;
// pub inline fn glFramebufferParameteri(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glFramebufferParameteri.?(arg0, arg1, arg2);
// }
// pub inline fn glLightModeliv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glLightModeliv.?(arg0, arg1);
// }
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398;
// pub inline fn glGenProgramPipelines(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenProgramPipelines.?(arg0, arg1);
// }
// pub const GL_QUERY_BY_REGION_WAIT = 36373;
// pub const GL_TEXTURE_SHARED_SIZE = 35903;
// pub inline fn glColor4usv(arg0: [*c]const GLushort) void {
//     return glad_glColor4usv.?(arg0);
// }
// pub const GL_Q = 8195;
// pub const GL_TEXTURE_ENV_MODE = 8704;
// pub inline fn glStencilMask(arg0: GLuint) void {
//     return glad_glStencilMask.?(arg0);
// }
// pub const GL_TEXTURE_STACK_DEPTH = 2981;
// pub const GL_COMPUTE_WORK_GROUP_SIZE = 33383;
// pub const GL_TEXTURE19 = 34003;
// pub inline fn glFogCoordPointer(arg0: GLenum, arg1: GLsizei, arg2: ?*const c_void) void {
//     return glad_glFogCoordPointer.?(arg0, arg1, arg2);
// }
// pub inline fn glCreateFramebuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateFramebuffers.?(arg0, arg1);
// }
// pub const GL_HIGH_FLOAT = 36338;
// pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
// pub inline fn glProgramUniform1d(arg0: GLuint, arg1: GLint, arg2: GLdouble) void {
//     return glad_glProgramUniform1d.?(arg0, arg1, arg2);
// }
// pub const GL_READ_FRAMEBUFFER_BINDING = 36010;
// pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
// pub const GL_MAX_COMPUTE_WORK_GROUP_SIZE = 37311;
// pub const GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 33379;
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973;
// pub inline fn glScalef(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glScalef.?(arg0, arg1, arg2);
// }
// pub inline fn glPushName(arg0: GLuint) void {
//     return glad_glPushName.?(arg0);
// }
// pub const GL_RED_SCALE = 3348;
// pub const GL_PIXEL_UNPACK_BUFFER = 35052;
// pub const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 37067;
// pub const __INT8_FMTd__ = "hhd";
// pub inline fn glTexCoordP2ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glTexCoordP2ui.?(arg0, arg1);
// }
// pub inline fn glSecondaryColorPointer(arg0: GLint, arg1: GLenum, arg2: GLsizei, arg3: ?*const c_void) void {
//     return glad_glSecondaryColorPointer.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_DEPTH_TYPE = 35862;
// pub const __XSAVE__ = 1;
// pub const GL_OPERAND1_ALPHA = 34201;
// pub const GL_INVALID_INDEX = 4294967295;
// pub const GL_COLOR_ATTACHMENT8 = 36072;
// pub const GL_MAX_HEIGHT = 33407;
// pub inline fn glPixelZoom(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glPixelZoom.?(arg0, arg1);
// }
// pub const GL_OR_REVERSE = 5387;
// pub const GL_PROXY_TEXTURE_RECTANGLE = 34039;
// pub inline fn glFramebufferTexture3D(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLuint, arg4: GLint, arg5: GLint) void {
//     return glad_glFramebufferTexture3D.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub const GL_UNIFORM_BLOCK_BINDING = 35391;
// pub const GL_GET_TEXTURE_IMAGE_TYPE = 33426;
// pub const GL_ATOMIC_COUNTER_BUFFER_INDEX = 37633;
// pub const GL_TEXTURE_STENCIL_SIZE = 35057;
// pub const GL_TESS_EVALUATION_SHADER = 36487;
// pub inline fn glLogicOp(arg0: GLenum) void {
//     return glad_glLogicOp.?(arg0);
// }
// pub inline fn glMultiTexCoordP4uiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glMultiTexCoordP4uiv.?(arg0, arg1, arg2);
// }
// pub const GL_PIXEL_MAP_B_TO_B = 3192;
// pub const GL_UNSIGNED_INT_24_8 = 34042;
// pub const GL_ACTIVE_VARIABLES = 37637;
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 36388;
// pub const GL_DEPTH_TEXTURE_MODE = 34891;
// pub const GL_SAMPLER_BUFFER = 36290;
// pub inline fn glNormal3fv(arg0: [*c]const GLfloat) void {
//     return glad_glNormal3fv.?(arg0);
// }
// pub const GL_COMPRESSED_INTENSITY = 34028;
// pub inline fn glProgramUniformMatrix3fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix3fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT = 32;
// pub const GL_VERSION_1_1 = 1;
// pub inline fn glGetDoublev(arg0: GLenum, arg1: [*c]GLdouble) void {
//     return glad_glGetDoublev.?(arg0, arg1);
// }
// pub const GL_DEPTH_BITS = 3414;
// pub const GL_PACK_ROW_LENGTH = 3330;
// pub inline fn glCompressedTexImage3D(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei, arg6: GLint, arg7: GLsizei, arg8: ?*const c_void) void {
//     return glad_glCompressedTexImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_DOT3_RGBA = 34479;
// pub const __analysis_assume = expr;
// pub const GL_TESS_GEN_SPACING = 36471;
// pub inline fn glVertexAttrib2fv(arg0: GLuint, arg1: [*c]const GLfloat) void {
//     return glad_glVertexAttrib2fv.?(arg0, arg1);
// }
// pub const GL_VERTEX_ATTRIB_ARRAY_LONG = 34638;
// pub inline fn glWindowPos3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glWindowPos3i.?(arg0, arg1, arg2);
// }
// pub const INT_FAST32_MAX = INT32_MAX;
// pub const GL_COMPRESSED_RG11_EAC = 37490;
// pub const GL_GEOMETRY_SHADER = 36313;
// pub inline fn glCompressedTexSubImage1D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLenum, arg5: GLsizei, arg6: ?*const c_void) void {
//     return glad_glCompressedTexSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const __INT_FAST32_FMTi__ = "i";
// pub inline fn glCreateBuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateBuffers.?(arg0, arg1);
// }
// pub const GL_TEXTURE_FILTER_CONTROL = 34048;
// pub const GL_TEXTURE_DEPTH = 32881;
// pub const GL_STENCIL_BITS = 3415;
// pub inline fn glVertexAttrib4Nubv(arg0: GLuint, arg1: [*c]const GLubyte) void {
//     return glad_glVertexAttrib4Nubv.?(arg0, arg1);
// }
// pub const GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 35372;
// pub const GL_DEBUG_GROUP_STACK_DEPTH = 33389;
// pub const GL_TEXTURE2 = 33986;
// pub const __UINT32_FMTX__ = "X";
// pub const UINT_LEAST8_MAX = UINT8_MAX;
// pub const GL_RGB10_A2 = 32857;
// pub inline fn glVertex2iv(arg0: [*c]const GLint) void {
//     return glad_glVertex2iv.?(arg0);
// }
// pub const GL_FOG_START = 2915;
// pub const GL_IS_PER_PATCH = 37607;
// pub const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 37132;
// pub const GL_NUM_SHADING_LANGUAGE_VERSIONS = 33513;
// pub inline fn glClampColor(arg0: GLenum, arg1: GLenum) void {
//     return glad_glClampColor.?(arg0, arg1);
// }
// pub const GL_ACTIVE_TEXTURE = 34016;
// pub inline fn glLightfv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glLightfv.?(arg0, arg1, arg2);
// }
// pub const GL_DYNAMIC_DRAW = 35048;
// pub const GL_INVALID_OPERATION = 1282;
// pub inline fn glProgramUniformMatrix3x4fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix3x4fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __inner_control_entrypoint = category;
// pub const __ATOMIC_RELEASE = 3;
// pub inline fn glGetVertexAttribdv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLdouble) void {
//     return glad_glGetVertexAttribdv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
// pub const GL_CONTEXT_RELEASE_BEHAVIOR = 33531;
// pub const GL_MAX_TEXTURE_LOD_BIAS = 34045;
// pub const GL_MULTISAMPLE_BIT = 536870912;
// pub const __SIZEOF_LONG_DOUBLE__ = 8;
// pub inline fn glNamedBufferData(arg0: GLuint, arg1: GLsizeiptr, arg2: ?*const c_void, arg3: GLenum) void {
//     return glad_glNamedBufferData.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetNamedFramebufferAttachmentParameteriv(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetNamedFramebufferAttachmentParameteriv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glFrustum(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble, arg5: GLdouble) void {
//     return glad_glFrustum.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_BGR_INTEGER = 36250;
// pub const GL_ACTIVE_UNIFORM_BLOCKS = 35382;
// pub const _INTEGRAL_MAX_BITS = 64;
// pub const __SSE2_MATH__ = 1;
// pub inline fn glPixelStoref(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glPixelStoref.?(arg0, arg1);
// }
// pub const GL_INT_VEC2 = 35667;
// pub inline fn glPrimitiveRestartIndex(arg0: GLuint) void {
//     return glad_glPrimitiveRestartIndex.?(arg0);
// }
// pub inline fn glProgramUniformMatrix2x3fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix2x3fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_T4F_C4F_N3F_V4F = 10797;
// pub inline fn glBlendFuncSeparate(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLenum) void {
//     return glad_glBlendFuncSeparate.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FLOAT_MAT4x2 = 35689;
// pub inline fn glVertex2dv(arg0: [*c]const GLdouble) void {
//     return glad_glVertex2dv.?(arg0);
// }
// pub const GL_CLIP_DISTANCE2 = 12290;
// pub const __UINT64_FMTu__ = "llu";
// pub inline fn glTexCoordP3ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glTexCoordP3ui.?(arg0, arg1);
// }
// pub const GL_FULL_SUPPORT = 33463;
// pub inline fn glMultiTexCoordP3ui(arg0: GLenum, arg1: GLenum, arg2: GLuint) void {
//     return glad_glMultiTexCoordP3ui.?(arg0, arg1, arg2);
// }
// pub inline fn glProgramUniform4uiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLuint) void {
//     return glad_glProgramUniform4uiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetObjectLabel(arg0: GLenum, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLchar) void {
//     return glad_glGetObjectLabel.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_COLOR_MATERIAL_PARAMETER = 2902;
// pub const GL_FLOAT_MAT3 = 35675;
// pub inline fn glColor3sv(arg0: [*c]const GLshort) void {
//     return glad_glColor3sv.?(arg0);
// }
// pub const GL_STREAM_DRAW = 35040;
// pub const GL_PIXEL_MAP_G_TO_G = 3191;
// pub const GL_COLOR_ATTACHMENT26 = 36090;
// pub const GL_RED_BITS = 3410;
// pub const GL_POLYGON_OFFSET_UNITS = 10752;
// pub const GL_READ_ONLY = 35000;
// pub const GL_COLOR_ATTACHMENT17 = 36081;
// pub const __DBL_MAX_EXP__ = 1024;
// pub const GL_ISOLINES = 36474;
// pub inline fn glIndexs(arg0: GLshort) void {
//     return glad_glIndexs.?(arg0);
// }
// pub const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446;
// pub const GL_DRAW_BUFFER12 = 34865;
// pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 37574;
// pub inline fn glTexCoord2f(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glTexCoord2f.?(arg0, arg1);
// }
// pub inline fn glBeginTransformFeedback(arg0: GLenum) void {
//     return glad_glBeginTransformFeedback.?(arg0);
// }
// pub const GL_COLOR_MATERIAL_FACE = 2901;
// pub const GL_PACK_COMPRESSED_BLOCK_WIDTH = 37163;
// pub const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922;
// pub const UINT_FAST16_MAX = UINT32_MAX;
// pub const GL_NO_RESET_NOTIFICATION = 33377;
// pub inline fn glGetCompressedTextureImage(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: ?*c_void) void {
//     return glad_glGetCompressedTextureImage.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glVertexAttribL1d(arg0: GLuint, arg1: GLdouble) void {
//     return glad_glVertexAttribL1d.?(arg0, arg1);
// }
// pub const _Deref2_pre1_impl_ = p1;
// pub const GL_ACTIVE_SUBROUTINES = 36325;
// pub const GL_UNSIGNED_INT_10F_11F_11F_REV = 35899;
// pub const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 35068;
// pub inline fn glSecondaryColor3b(arg0: GLbyte, arg1: GLbyte, arg2: GLbyte) void {
//     return glad_glSecondaryColor3b.?(arg0, arg1, arg2);
// }
// pub inline fn glCreateSamplers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateSamplers.?(arg0, arg1);
// }
// pub const GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 37099;
// pub const GL_DEPTH_CLAMP = 34383;
// pub const GL_STENCIL_TEST = 2960;
// pub const GL_DEBUG_LOGGED_MESSAGES = 37189;
// pub const GL_TRUE = 1;
// pub const GL_ONE_MINUS_SRC_COLOR = 769;
// pub inline fn glClearNamedFramebufferiv(arg0: GLuint, arg1: GLenum, arg2: GLint, arg3: [*c]const GLint) void {
//     return glad_glClearNamedFramebufferiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE18 = 34002;
// pub const GL_PROGRAM_POINT_SIZE = 34370;
// pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
// pub const GL_BUFFER_MAP_LENGTH = 37152;
// pub const GL_MAX_FRAGMENT_INPUT_COMPONENTS = 37157;
// pub inline fn glMultiTexCoord3iv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glMultiTexCoord3iv.?(arg0, arg1);
// }
// pub const GL_TRIANGLES_ADJACENCY = 12;
// pub const GL_TEXTURE_GATHER = 33442;
// pub inline fn glProgramUniform3d(arg0: GLuint, arg1: GLint, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble) void {
//     return glad_glProgramUniform3d.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glEvalCoord1dv(arg0: [*c]const GLdouble) void {
//     return glad_glEvalCoord1dv.?(arg0);
// }
// pub const GL_STENCIL_BACK_WRITEMASK = 36005;
// pub const GL_UNSIGNED_INT_IMAGE_1D_ARRAY = 36968;
// pub const GL_TEXTURE_BINDING_2D = 32873;
// pub inline fn glGetTexImage(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLenum, arg4: ?*c_void) void {
//     return glad_glGetTexImage.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glVertexP2ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glVertexP2ui.?(arg0, arg1);
// }
// pub inline fn glGenLists(arg0: GLsizei) GLuint {
//     return glad_glGenLists.?(arg0);
// }
// pub const GL_COMPUTE_SUBROUTINE = 37613;
// pub const GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 37086;
// pub const GL_DISPATCH_INDIRECT_BUFFER_BINDING = 37103;
// pub inline fn glUniform3ui(arg0: GLint, arg1: GLuint, arg2: GLuint, arg3: GLuint) void {
//     return glad_glUniform3ui.?(arg0, arg1, arg2, arg3);
// }
// pub const __ATOMIC_CONSUME = 1;
// pub inline fn glTextureView(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLenum, arg4: GLuint, arg5: GLuint, arg6: GLuint, arg7: GLuint) void {
//     return glad_glTextureView.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_COLOR_ATTACHMENT9 = 36073;
// pub inline fn glPushAttrib(arg0: GLbitfield) void {
//     return glad_glPushAttrib.?(arg0);
// }
// pub const GL_UNIFORM_ARRAY_STRIDE = 35388;
// pub inline fn glViewportIndexedf(arg0: GLuint, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat) void {
//     return glad_glViewportIndexedf.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __INT_LEAST16_FMTd__ = "hd";
// pub inline fn glColor3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glColor3f.?(arg0, arg1, arg2);
// }
// pub const __INT_LEAST64_FMTd__ = "lld";
// pub inline fn glRectd(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glRectd.?(arg0, arg1, arg2, arg3);
// }
// pub const _USE_DECLSPECS_FOR_SAL = 0;
// pub const GL_BLEND_DST_RGB = 32968;
// pub inline fn glDeleteRenderbuffers(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteRenderbuffers.?(arg0, arg1);
// }
// pub inline fn glColor3bv(arg0: [*c]const GLbyte) void {
//     return glad_glColor3bv.?(arg0);
// }
// pub inline fn glUniform2iv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLint) void {
//     return glad_glUniform2iv.?(arg0, arg1, arg2);
// }
// pub inline fn glFramebufferTexture1D(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLuint, arg4: GLint) void {
//     return glad_glFramebufferTexture1D.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glInitNames() void {
//     return glad_glInitNames.?();
// }
// pub inline fn glVertexArrayElementBuffer(arg0: GLuint, arg1: GLuint) void {
//     return glad_glVertexArrayElementBuffer.?(arg0, arg1);
// }
// pub inline fn glUniform2f(arg0: GLint, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glUniform2f.?(arg0, arg1, arg2);
// }
// pub const GL_UNSIGNED_BYTE_2_3_3_REV = 33634;
// pub inline fn glGetnPixelMapfv(arg0: GLenum, arg1: GLsizei, arg2: [*c]GLfloat) void {
//     return glad_glGetnPixelMapfv.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLER_1D = 35677;
// pub const GL_GREEN_BITS = 3411;
// pub const GL_RED_INTEGER = 36244;
// pub const GL_QUERY_BY_REGION_NO_WAIT_INVERTED = 36378;
// pub inline fn glUniform4d(arg0: GLint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble) void {
//     return glad_glUniform4d.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glNamedBufferStorage(arg0: GLuint, arg1: GLsizeiptr, arg2: ?*const c_void, arg3: GLbitfield) void {
//     return glad_glNamedBufferStorage.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNPACK_SKIP_PIXELS = 3316;
// pub const GL_SELECT = 7170;
// pub const GL_TEXTURE_BUFFER_SIZE = 37278;
// pub const GL_TEXTURE_BINDING_BUFFER = 35884;
// pub const GL_RG8 = 33323;
// pub const GL_ACCUM_GREEN_BITS = 3417;
// pub inline fn glGetTexGeniv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTexGeniv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_GEOMETRY_INPUT_COMPONENTS = 37155;
// pub inline fn glSecondaryColor3bv(arg0: [*c]const GLbyte) void {
//     return glad_glSecondaryColor3bv.?(arg0);
// }
// pub const GL_C4F_N3F_V3F = 10790;
// pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 33455;
// pub inline fn glSecondaryColor3ubv(arg0: [*c]const GLubyte) void {
//     return glad_glSecondaryColor3ubv.?(arg0);
// }
// pub const __UINT_LEAST16_FMTX__ = "hX";
// pub const _Requires_lock_not_held_ = lock;
// pub const GL_MAX_LIGHTS = 3377;
// pub const __amd64__ = 1;
// pub const GL_LIGHTING_BIT = 64;
// pub const GL_RGBA_INTEGER = 36249;
// pub const __PTRDIFF_FMTi__ = "lli";
// pub inline fn glBindBuffersBase(arg0: GLenum, arg1: GLuint, arg2: GLsizei, arg3: [*c]const GLuint) void {
//     return glad_glBindBuffersBase.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FLOAT_MAT3x4 = 35688;
// pub inline fn glReleaseShaderCompiler() void {
//     return glad_glReleaseShaderCompiler.?();
// }
// pub const GL_ONE_MINUS_SRC_ALPHA = 771;
// pub inline fn glMultMatrixf(arg0: [*c]const GLfloat) void {
//     return glad_glMultMatrixf.?(arg0);
// }
// pub const GL_TEXTURE_LUMINANCE_SIZE = 32864;
// pub const _Has_lock_level_ = level;
// pub const GL_LINEAR_MIPMAP_LINEAR = 9987;
// pub const GL_TEXTURE3 = 33987;
// pub const GL_ALPHA_TEST_REF = 3010;
// pub const GL_ANY_SAMPLES_PASSED_CONSERVATIVE = 36202;
// pub const GL_RGB32F = 34837;
// pub const GL_VIEWPORT_INDEX_PROVOKING_VERTEX = 33375;
// pub const GL_VIEW_CLASS_S3TC_DXT1_RGB = 33484;
// pub const INT_LEAST16_MAX = INT16_MAX;
// pub inline fn glMultiDrawArrays(arg0: GLenum, arg1: [*c]const GLint, arg2: [*c]const GLsizei, arg3: GLsizei) void {
//     return glad_glMultiDrawArrays.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glVertexAttribP2ui(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: GLuint) void {
//     return glad_glVertexAttribP2ui.?(arg0, arg1, arg2, arg3);
// }
// pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_DEPTH_COMPONENT32 = 33191;
// pub const GL_R16I = 33331;
// pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
// pub const GL_OPERAND2_ALPHA = 34202;
// pub const __analysis_assume_lock_acquired = lock;
// pub inline fn glGenRenderbuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenRenderbuffers.?(arg0, arg1);
// }
// pub const GL_N3F_V3F = 10789;
// pub const GL_BLOCK_INDEX = 37629;
// pub const GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 33530;
// pub const GL_INDEX_ARRAY = 32887;
// pub const GL_TEXTURE_UPDATE_BARRIER_BIT = 256;
// pub const GL_BUFFER_SIZE = 34660;
// pub const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 1;
// pub const GL_IMAGE_BINDING_LAYER = 36669;
// pub inline fn glIsBuffer(arg0: GLuint) GLboolean {
//     return glad_glIsBuffer.?(arg0);
// }
// pub const GL_FLOAT_MAT4x3 = 35690;
// pub const __clang_version__ = "9.0.0 (tags/RELEASE_900/final)";
// pub const __UINT_LEAST8_FMTo__ = "hho";
// pub inline fn glGetFloati_v(arg0: GLenum, arg1: GLuint, arg2: [*c]GLfloat) void {
//     return glad_glGetFloati_v.?(arg0, arg1, arg2);
// }
// pub const GL_SMOOTH_POINT_SIZE_GRANULARITY = 2835;
// pub const __INTMAX_FMTd__ = "lld";
// pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
// pub const GL_UNIFORM = 37601;
// pub inline fn glGetProgramiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetProgramiv.?(arg0, arg1, arg2);
// }
// pub inline fn glViewportIndexedfv(arg0: GLuint, arg1: [*c]const GLfloat) void {
//     return glad_glViewportIndexedfv.?(arg0, arg1);
// }
// pub const GL_COLOR_COMPONENTS = 33411;
// pub const GL_ACTIVE_PROGRAM = 33369;
// pub const GL_MAP2_NORMAL = 3506;
// pub const GL_COMPRESSED_LUMINANCE = 34026;
// pub const GL_LOCATION_INDEX = 37647;
// pub const GL_CURRENT_FOG_COORDINATE = 33875;
// pub const INTMAX_MIN = INT64_MIN;
// pub inline fn glDrawArraysInstancedBaseInstance(arg0: GLenum, arg1: GLint, arg2: GLsizei, arg3: GLsizei, arg4: GLuint) void {
//     return glad_glDrawArraysInstancedBaseInstance.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_COLOR_SUM = 33880;
// pub const GL_FOG_COORD_ARRAY_POINTER = 33878;
// pub const GL_COLOR_ATTACHMENT27 = 36091;
// pub const GL_COLOR_ATTACHMENT16 = 36080;
// pub inline fn glColor4i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glColor4i.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTexEnvi(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glTexEnvi.?(arg0, arg1, arg2);
// }
// pub const GL_DRAW_BUFFER11 = 34864;
// pub const _Releases_lock_ = lock;
// pub const GL_TEXTURE_COMPRESSED_BLOCK_SIZE = 33459;
// pub inline fn glColorMaski(arg0: GLuint, arg1: GLboolean, arg2: GLboolean, arg3: GLboolean, arg4: GLboolean) void {
//     return glad_glColorMaski.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_LIGHT_MODEL_COLOR_CONTROL = 33272;
// pub const _HAS_CXX20 = 0;
// pub const GL_NORMAL_ARRAY = 32885;
// pub inline fn glVertexP4ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glVertexP4ui.?(arg0, arg1);
// }
// pub const _Requires_exclusive_lock_held_ = lock;
// pub const GL_MAX_COMBINED_IMAGE_UNIFORMS = 37071;
// pub const GL_MAP2_TEXTURE_COORD_2 = 3508;
// pub inline fn glCopyBufferSubData(arg0: GLenum, arg1: GLenum, arg2: GLintptr, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glCopyBufferSubData.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glVertex3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glVertex3s.?(arg0, arg1, arg2);
// }
// pub const GL_ALPHA_BITS = 3413;
// pub const GL_INTERNALFORMAT_SUPPORTED = 33391;
// pub const GL_FRAMEBUFFER = 36160;
// pub const GL_MAX_COMPUTE_WORK_GROUP_COUNT = 37310;
// pub inline fn glTexCoord1iv(arg0: [*c]const GLint) void {
//     return glad_glTexCoord1iv.?(arg0);
// }
// pub const __SSSE3__ = 1;
// pub const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 34973;
// pub inline fn glIsTransformFeedback(arg0: GLuint) GLboolean {
//     return glad_glIsTransformFeedback.?(arg0);
// }
// pub const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 37580;
// pub inline fn glGetCompressedTextureSubImage(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLsizei, arg9: ?*c_void) void {
//     return glad_glGetCompressedTextureSubImage.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
// }
// pub const GL_SAMPLES_PASSED = 35092;
// pub inline fn glGetInternalformativ(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: [*c]GLint) void {
//     return glad_glGetInternalformativ.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_REFLECTION_MAP = 34066;
// pub const GL_DEBUG_SOURCE_SHADER_COMPILER = 33352;
// pub const GL_SAMPLER_1D_SHADOW = 35681;
// pub const __INT_FAST16_FMTi__ = "hi";
// pub const GL_NUM_PROGRAM_BINARY_FORMATS = 34814;
// pub inline fn glCreateTransformFeedbacks(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glCreateTransformFeedbacks.?(arg0, arg1);
// }
// pub const GL_LOGIC_OP = 3057;
// pub const GL_COLOR_ARRAY_SIZE = 32897;
// pub const GL_PROGRAM = 33506;
// pub inline fn glProgramUniform1f(arg0: GLuint, arg1: GLint, arg2: GLfloat) void {
//     return glad_glProgramUniform1f.?(arg0, arg1, arg2);
// }
// pub const GL_2_BYTES = 5127;
// pub const GL_SAMPLER_2D_ARRAY_SHADOW = 36292;
// pub inline fn glPushDebugGroup(arg0: GLenum, arg1: GLuint, arg2: GLsizei, arg3: [*c]const GLchar) void {
//     return glad_glPushDebugGroup.?(arg0, arg1, arg2, arg3);
// }
// pub const __INT64_C_SUFFIX__ = LL;
// pub const GL_UNSIGNED_BYTE_3_3_2 = 32818;
// pub const GL_TESS_CONTROL_SHADER = 36488;
// pub const GL_FEEDBACK_BUFFER_POINTER = 3568;
// pub inline fn glProgramUniform3ui(arg0: GLuint, arg1: GLint, arg2: GLuint, arg3: GLuint, arg4: GLuint) void {
//     return glad_glProgramUniform3ui.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGetProgramResourceName(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLsizei, arg4: [*c]GLsizei, arg5: [*c]GLchar) void {
//     return glad_glGetProgramResourceName.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_EXP = 2048;
// pub const GL_COPY = 5379;
// pub inline fn glVertexAttrib4Nsv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttrib4Nsv.?(arg0, arg1);
// }
// pub inline fn glTexCoord4iv(arg0: [*c]const GLint) void {
//     return glad_glTexCoord4iv.?(arg0);
// }
// pub const GL_TEXTURE_BORDER_COLOR = 4100;
// pub const GL_FRAGMENT_TEXTURE = 33439;
// pub const __SIG_ATOMIC_MAX__ = 2147483647;
// pub inline fn glGetMapiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetMapiv.?(arg0, arg1, arg2);
// }
// pub inline fn glVertex2f(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glVertex2f.?(arg0, arg1);
// }
// pub const GL_DYNAMIC_READ = 35049;
// pub const GL_TIMEOUT_IGNORED = 18446744073709551615;
// pub inline fn glVertexAttribP3ui(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: GLuint) void {
//     return glad_glVertexAttribP3ui.?(arg0, arg1, arg2, arg3);
// }
// pub const _Analysis_assume_lock_acquired_ = lock;
// pub inline fn glDepthRangeIndexed(arg0: GLuint, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glDepthRangeIndexed.?(arg0, arg1, arg2);
// }
// pub const GL_CLIENT_STORAGE_BIT = 512;
// pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub const GL_READ_WRITE = 35002;
// pub const GL_COMPUTE_SHADER = 37305;
// pub inline fn glDisableVertexArrayAttrib(arg0: GLuint, arg1: GLuint) void {
//     return glad_glDisableVertexArrayAttrib.?(arg0, arg1);
// }
// pub const _Acquires_nonreentrant_lock_ = lock;
// pub inline fn glProgramUniform2iv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLint) void {
//     return glad_glProgramUniform2iv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glMultiTexCoord4s(arg0: GLenum, arg1: GLshort, arg2: GLshort, arg3: GLshort, arg4: GLshort) void {
//     return glad_glMultiTexCoord4s.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __UINT_FAST16_FMTu__ = "hu";
// pub const __INTPTR_FMTi__ = "lli";
// pub const GL_SYNC_STATUS = 37140;
// pub const GL_PIXEL_MAP_I_TO_B = 3188;
// pub const __SEG_GS = 1;
// pub inline fn glTexBuffer(arg0: GLenum, arg1: GLenum, arg2: GLuint) void {
//     return glad_glTexBuffer.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968;
// pub const __UINT8_FMTo__ = "hho";
// pub const GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
// pub const GL_NUM_SPIR_V_EXTENSIONS = 38228;
// pub const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 33497;
// pub const __UINT_FAST8_FMTu__ = "hhu";
// pub inline fn glTexCoordPointer(arg0: GLint, arg1: GLenum, arg2: GLsizei, arg3: ?*const c_void) void {
//     return glad_glTexCoordPointer.?(arg0, arg1, arg2, arg3);
// }
// pub const __fallthrough = __inner_fallthrough;
// pub inline fn glMap2f(arg0: GLenum, arg1: GLfloat, arg2: GLfloat, arg3: GLint, arg4: GLint, arg5: GLfloat, arg6: GLfloat, arg7: GLint, arg8: GLint, arg9: [*c]const GLfloat) void {
//     return glad_glMap2f.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
// }
// pub const GL_SHADER_STORAGE_BUFFER_SIZE = 37077;
// pub const __MOVBE__ = 1;
// pub const GL_ATTACHED_SHADERS = 35717;
// pub inline fn glSecondaryColor3ui(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glSecondaryColor3ui.?(arg0, arg1, arg2);
// }
// pub const GL_STEREO = 3123;
// pub const GL_PACK_LSB_FIRST = 3329;
// pub const GL_MAX_TEXTURE_IMAGE_UNITS = 34930;
// pub inline fn glVertexAttribL2d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glVertexAttribL2d.?(arg0, arg1, arg2);
// }
// pub const __UINT_LEAST8_FMTX__ = "hhX";
// pub const GL_INDEX = 33314;
// pub inline fn glRasterPos2i(arg0: GLint, arg1: GLint) void {
//     return glad_glRasterPos2i.?(arg0, arg1);
// }
// pub inline fn glUniformMatrix4dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix4dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glCheckNamedFramebufferStatus(arg0: GLuint, arg1: GLenum) GLenum {
//     return glad_glCheckNamedFramebufferStatus.?(arg0, arg1);
// }
// pub const GL_ALPHA = 6406;
// pub const _M_AMD64 = 100;
// pub const GL_UNSIGNED_INT_10_10_10_2 = 32822;
// pub const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 36319;
// pub const __POINTER_WIDTH__ = 64;
// pub inline fn glGetObjectPtrLabel(arg0: ?*const c_void, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLchar) void {
//     return glad_glGetObjectPtrLabel.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_OFFSET = 37628;
// pub const GL_RGBA = 6408;
// pub const __tune_corei7__ = 1;
// pub const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 37585;
// pub const __SIZEOF_LONG__ = 4;
// pub const GL_PACK_SWAP_BYTES = 3328;
// pub const GL_PROXY_TEXTURE_2D = 32868;
// pub inline fn glLightf(arg0: GLenum, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glLightf.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttribI3iv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttribI3iv.?(arg0, arg1);
// }
// pub const GL_MAX_VERTEX_ATTRIBS = 34921;
// pub const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 36428;
// pub const GL_POLYGON_TOKEN = 1795;
// pub const GL_TEXTURE0 = 33984;
// pub inline fn glOrtho(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble, arg5: GLdouble) void {
//     return glad_glOrtho.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const __NO_INLINE__ = 1;
// pub const GL_ALPHA12 = 32829;
// pub const GL_PIXEL_MAP_I_TO_R_SIZE = 3250;
// pub inline fn glLoadIdentity() void {
//     return glad_glLoadIdentity.?();
// }
// pub const GL_SRC_ALPHA_SATURATE = 776;
// pub const GL_TEXTURE_COMPRESSED = 34465;
// pub const GL_STENCIL_VALUE_MASK = 2963;
// pub inline fn glVertexAttribI4usv(arg0: GLuint, arg1: [*c]const GLushort) void {
//     return glad_glVertexAttribI4usv.?(arg0, arg1);
// }
// pub const GL_DELETE_STATUS = 35712;
// pub const GL_SAMPLER_BINDING = 35097;
// pub const GL_FRONT_AND_BACK = 1032;
// pub const GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 37590;
// pub inline fn glUseProgram(arg0: GLuint) void {
//     return glad_glUseProgram.?(arg0);
// }
// pub const _VCRT_COMPILER_PREPROCESSOR = 1;
// pub const GL_MAX_IMAGE_UNITS = 36664;
// pub const GL_TEXTURE_IMAGE_FORMAT = 33423;
// pub inline fn glMultTransposeMatrixf(arg0: [*c]const GLfloat) void {
//     return glad_glMultTransposeMatrixf.?(arg0);
// }
// pub inline fn glStencilOpSeparate(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLenum) void {
//     return glad_glStencilOpSeparate.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_ACCUM_BUFFER_BIT = 512;
// pub const GL_RGBA8 = 32856;
// pub const GL_FRAMEBUFFER_DEFAULT_LAYERS = 37650;
// pub const GL_DST_ALPHA = 772;
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396;
// pub const GL_SECONDARY_COLOR_ARRAY = 33886;
// pub const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 33300;
// pub const GL_ACCUM_CLEAR_VALUE = 2944;
// pub inline fn glClearIndex(arg0: GLfloat) void {
//     return glad_glClearIndex.?(arg0);
// }
// pub const GL_SECONDARY_COLOR_ARRAY_SIZE = 33882;
// pub const GL_FLOAT_VEC2 = 35664;
// pub inline fn glCopyTexImage1D(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLint) void {
//     return glad_glCopyTexImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_INT_SAMPLER_CUBE = 36300;
// pub const GL_DOUBLE_MAT2x3 = 36681;
// pub inline fn glVertexAttribI3ui(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: GLuint) void {
//     return glad_glVertexAttribI3ui.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_INT_VEC4 = 35669;
// pub const GL_IMAGE_CLASS_1_X_16 = 33470;
// pub inline fn glDrawBuffers(arg0: GLsizei, arg1: [*c]const GLenum) void {
//     return glad_glDrawBuffers.?(arg0, arg1);
// }
// pub inline fn glVertexAttribI2ui(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glVertexAttribI2ui.?(arg0, arg1, arg2);
// }
// pub const _SAL_nop_impl_ = X;
// pub const GL_STENCIL_INDEX = 6401;
// pub const __DBL_MAX_10_EXP__ = 308;
// pub inline fn glBindImageTexture(arg0: GLuint, arg1: GLuint, arg2: GLint, arg3: GLboolean, arg4: GLint, arg5: GLenum, arg6: GLenum) void {
//     return glad_glBindImageTexture.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const __PIC__ = 2;
// pub const GL_LIGHT5 = 16389;
// pub inline fn glMaterialiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glMaterialiv.?(arg0, arg1, arg2);
// }
// pub const GL_SHADER_IMAGE_LOAD = 33444;
// pub const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 37080;
// pub const GL_INVALID_VALUE = 1281;
// pub const GL_FRAMEBUFFER_DEFAULT = 33304;
// pub inline fn glVertexAttrib3dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttrib3dv.?(arg0, arg1);
// }
// pub const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 35381;
// pub const GL_MAX_TEXTURE_STACK_DEPTH = 3385;
// pub const __has_lock_level = level;
// pub const GL_PIXEL_MODE_BIT = 32;
// pub const GL_COLOR_ATTACHMENT28 = 36092;
// pub inline fn glGetShaderiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetShaderiv.?(arg0, arg1, arg2);
// }
// pub const GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
// pub inline fn glNamedFramebufferDrawBuffer(arg0: GLuint, arg1: GLenum) void {
//     return glad_glNamedFramebufferDrawBuffer.?(arg0, arg1);
// }
// pub const GL_AUTO_GENERATE_MIPMAP = 33429;
// pub const GL_CONTEXT_PROFILE_MASK = 37158;
// pub inline fn glTexEnvf(arg0: GLenum, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glTexEnvf.?(arg0, arg1, arg2);
// }
// pub inline fn glWindowPos2dv(arg0: [*c]const GLdouble) void {
//     return glad_glWindowPos2dv.?(arg0);
// }
// pub const GL_DRAW_BUFFER10 = 34863;
// pub inline fn glMultiTexCoord4f(arg0: GLenum, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat) void {
//     return glad_glMultiTexCoord4f.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAP1_TEXTURE_COORD_1 = 3475;
// pub const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 37156;
// pub inline fn glTexCoord2d(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glTexCoord2d.?(arg0, arg1);
// }
// pub const GL_BGR = 32992;
// pub const GL_POINT_SIZE_RANGE = 2834;
// pub const GL_MAP2_TEXTURE_COORD_3 = 3509;
// pub const GL_SECONDARY_COLOR_ARRAY_STRIDE = 33884;
// pub const GL_QUADS = 7;
// pub const GL_UNSIGNED_INT_IMAGE_2D_ARRAY = 36969;
// pub inline fn glGetProgramResourceIndex(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLchar) GLuint {
//     return glad_glGetProgramResourceIndex.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttribI2uiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttribI2uiv.?(arg0, arg1);
// }
// pub const GL_DEPTH_TEST = 2929;
// pub const GL_EDGE_FLAG_ARRAY_POINTER = 32915;
// pub const GL_PROGRAM_SEPARABLE = 33368;
// pub const GL_COMPRESSED_SRGB8_ETC2 = 37493;
// pub const GL_UNIFORM_BUFFER_START = 35369;
// pub const _UNALIGNED = __unaligned;
// pub const _Has_lock_kind_ = kind;
// pub inline fn glGetnUniformuiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]GLuint) void {
//     return glad_glGetnUniformuiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COPY_WRITE_BUFFER = 36663;
// pub inline fn glUniform4uiv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glUniform4uiv.?(arg0, arg1, arg2);
// }
// pub const GL_IMAGE_PIXEL_TYPE = 33450;
// pub inline fn glGetnUniformdv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]GLdouble) void {
//     return glad_glGetnUniformdv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glInvalidateNamedFramebufferData(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLenum) void {
//     return glad_glInvalidateNamedFramebufferData.?(arg0, arg1, arg2);
// }
// pub const GL_LUMINANCE12_ALPHA12 = 32839;
// pub const GL_LOCATION = 37646;
// pub inline fn glGetRenderbufferParameteriv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetRenderbufferParameteriv.?(arg0, arg1, arg2);
// }
// pub const __INTMAX_C_SUFFIX__ = LL;
// pub const GL_RENDERBUFFER_BINDING = 36007;
// pub inline fn glMultiTexCoord1iv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glMultiTexCoord1iv.?(arg0, arg1);
// }
// pub const GL_RGB565 = 36194;
// pub const GL_COLOR_ARRAY_STRIDE = 32899;
// pub const _Post_ = _Post_impl_;
// pub const __INT16_FMTd__ = "hd";
// pub const GL_MAX_VERTEX_ATTRIB_STRIDE = 33509;
// pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
// pub const GL_MIRROR_CLAMP_TO_EDGE = 34627;
// pub inline fn glNormal3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glNormal3f.?(arg0, arg1, arg2);
// }
// pub const GL_INT_IMAGE_2D = 36952;
// pub inline fn glBlendEquationSeparatei(arg0: GLuint, arg1: GLenum, arg2: GLenum) void {
//     return glad_glBlendEquationSeparatei.?(arg0, arg1, arg2);
// }
// pub inline fn glUniform3i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glUniform3i.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glProgramUniform1i(arg0: GLuint, arg1: GLint, arg2: GLint) void {
//     return glad_glProgramUniform1i.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLE_SHADING = 35894;
// pub const __INTMAX_WIDTH__ = 64;
// pub const GL_UNSIGNED_INT_8_8_8_8_REV = 33639;
// pub const GL_MAX_COLOR_TEXTURE_SAMPLES = 37134;
// pub inline fn glPolygonOffset(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glPolygonOffset.?(arg0, arg1);
// }
// pub const _Writable_bytes_impl_ = size;
// pub const GL_RENDER_MODE = 3136;
// pub inline fn glTexCoord1s(arg0: GLshort) void {
//     return glad_glTexCoord1s.?(arg0);
// }
// pub const __INT_FAST8_FMTi__ = "hhi";
// pub inline fn glVertexAttribP2uiv(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: [*c]const GLuint) void {
//     return glad_glVertexAttribP2uiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTexCoord3dv(arg0: [*c]const GLdouble) void {
//     return glad_glTexCoord3dv.?(arg0);
// }
// pub const GL_COPY_PIXEL_TOKEN = 1798;
// pub const GL_INTERNALFORMAT_RED_SIZE = 33393;
// pub const GL_AMBIENT_AND_DIFFUSE = 5634;
// pub inline fn glGetLightfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetLightfv.?(arg0, arg1, arg2);
// }
// pub const GL_INTERNALFORMAT_BLUE_SIZE = 33395;
// pub inline fn glColor3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glColor3d.?(arg0, arg1, arg2);
// }
// pub const __FLT_MANT_DIG__ = 24;
// pub const __requires_shared_lock_held = lock;
// pub inline fn glProgramUniformMatrix2x3dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix2x3dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glRectf(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glRectf.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_QUERY_WAIT = 36371;
// pub const __INTPTR_FMTd__ = "lld";
// pub const GL_LIST_INDEX = 2867;
// pub const GL_TEXTURE_COMPRESSED_IMAGE_SIZE = 34464;
// pub inline fn glViewport(arg0: GLint, arg1: GLint, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glViewport.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_ALL_BARRIER_BITS = 4294967295;
// pub const __INT_FAST16_MAX__ = 32767;
// pub const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380;
// pub const GL_ALWAYS = 519;
// pub const GL_PASS_THROUGH_TOKEN = 1792;
// pub inline fn glSecondaryColorP3ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glSecondaryColorP3ui.?(arg0, arg1);
// }
// pub const GL_PROJECTION = 5889;
// pub const GL_TEXTURE_RESIDENT = 32871;
// pub inline fn glWindowPos2s(arg0: GLshort, arg1: GLshort) void {
//     return glad_glWindowPos2s.?(arg0, arg1);
// }
// pub inline fn glRectfv(arg0: [*c]const GLfloat, arg1: [*c]const GLfloat) void {
//     return glad_glRectfv.?(arg0, arg1);
// }
// pub const GL_DECR = 7683;
// pub inline fn glProgramUniformMatrix2dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix2dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glColor4sv(arg0: [*c]const GLshort) void {
//     return glad_glColor4sv.?(arg0);
// }
// pub inline fn glFinish() void {
//     return glad_glFinish.?();
// }
// pub inline fn glBindRenderbuffer(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBindRenderbuffer.?(arg0, arg1);
// }
// pub const GL_SHADER_STORAGE_BUFFER_BINDING = 37075;
// pub const GL_LINEAR = 9729;
// pub const __analysis_suppress_lock_checking = lock;
// pub const GL_LEQUAL = 515;
// pub inline fn glPointParameterfv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glPointParameterfv.?(arg0, arg1);
// }
// pub const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978;
// pub const __FLT_DENORM_MIN__ = 0.000000;
// pub const SIG_ATOMIC_MIN = INT32_MIN;
// pub const GL_FOG = 2912;
// pub const GL_QUERY_BUFFER_BINDING = 37267;
// pub const __LDBL_HAS_QUIET_NAN__ = 1;
// pub inline fn glGetTexLevelParameterfv(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: [*c]GLfloat) void {
//     return glad_glGetTexLevelParameterfv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COMPRESSED_SLUMINANCE_ALPHA = 35915;
// pub const GL_CONTEXT_CORE_PROFILE_BIT = 1;
// pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 36052;
// pub const GL_SHADING_LANGUAGE_VERSION = 35724;
// pub const GL_TEXTURE_GEN_Q = 3171;
// pub const GL_ONE_MINUS_CONSTANT_ALPHA = 32772;
// pub const __UINT16_FMTu__ = "hu";
// pub const GL_SMOOTH_LINE_WIDTH_RANGE = 2850;
// pub const GL_SUBTRACT = 34023;
// pub inline fn glCompressedTextureSubImage2D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLsizei, arg5: GLsizei, arg6: GLenum, arg7: GLsizei, arg8: ?*const c_void) void {
//     return glad_glCompressedTextureSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_TEXTURE1 = 33985;
// pub const GL_MAX_UNIFORM_BLOCK_SIZE = 35376;
// pub const __LDBL_MIN_EXP__ = -1021;
// pub const SIZE_MAX = UINTPTR_MAX;
// pub const GL_R8 = 33321;
// pub inline fn glTextureParameterIuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glTextureParameterIuiv.?(arg0, arg1, arg2);
// }
// pub const __clang_patchlevel__ = 0;
// pub inline fn glColor4s(arg0: GLshort, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glColor4s.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetnMapfv(arg0: GLenum, arg1: GLenum, arg2: GLsizei, arg3: [*c]GLfloat) void {
//     return glad_glGetnMapfv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_VERTEX_ATTRIB_ARRAY_TYPE = 34341;
// pub const GL_DEBUG_SOURCE_WINDOW_SYSTEM = 33351;
// pub inline fn glTexSubImage2D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLsizei, arg5: GLsizei, arg6: GLenum, arg7: GLenum, arg8: ?*const c_void) void {
//     return glad_glTexSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_MAX_NUM_ACTIVE_VARIABLES = 37623;
// pub const GL_DRAW_FRAMEBUFFER_BINDING = 36006;
// pub const GL_TEXTURE_GATHER_SHADOW = 33443;
// pub inline fn glColor3ui(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glColor3ui.?(arg0, arg1, arg2);
// }
// pub const GL_SRGB = 35904;
// pub inline fn glDepthMask(arg0: GLboolean) void {
//     return glad_glDepthMask.?(arg0);
// }
// pub inline fn glVertexArrayAttribLFormat(arg0: GLuint, arg1: GLuint, arg2: GLint, arg3: GLenum, arg4: GLuint) void {
//     return glad_glVertexArrayAttribLFormat.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_NAME_LENGTH = 37625;
// pub const GL_CONSTANT = 34166;
// pub const GL_VIEW_CLASS_24_BITS = 33481;
// pub const GL_STATIC_DRAW = 35044;
// pub const __writableTo = size;
// pub const GL_NEGATIVE_ONE_TO_ONE = 37726;
// pub const GL_ALL_SHADER_BITS = 4294967295;
// pub inline fn glVertexAttrib4uiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttrib4uiv.?(arg0, arg1);
// }
// pub const GL_FOG_COORD_SRC = 33872;
// pub const GL_TEXTURE_ENV = 8960;
// pub const GL_FLOAT_VEC3 = 35665;
// pub inline fn glEvalCoord1fv(arg0: [*c]const GLfloat) void {
//     return glad_glEvalCoord1fv.?(arg0);
// }
// pub const GL_INTENSITY = 32841;
// pub inline fn glVertexAttribBinding(arg0: GLuint, arg1: GLuint) void {
//     return glad_glVertexAttribBinding.?(arg0, arg1);
// }
// pub const GL_VERTEX_SHADER_BIT = 1;
// pub const GL_IMAGE_2D_MULTISAMPLE = 36949;
// pub inline fn glVertexAttrib2f(arg0: GLuint, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glVertexAttrib2f.?(arg0, arg1, arg2);
// }
// pub const __UINTMAX_FMTx__ = "llx";
// pub inline fn glMapNamedBuffer(arg0: GLuint, arg1: GLenum) ?*c_void {
//     return glad_glMapNamedBuffer.?(arg0, arg1);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 33302;
// pub const __INT_LEAST16_MAX__ = 32767;
// pub const __UINT32_FMTo__ = "o";
// pub const GL_LIGHT4 = 16388;
// pub const GL_IMAGE_CLASS_1_X_8 = 33473;
// pub const GL_VALIDATE_STATUS = 35715;
// pub const GL_REFERENCED_BY_GEOMETRY_SHADER = 37641;
// pub inline fn glDebugMessageCallback(arg0: GLDEBUGPROC, arg1: ?*const c_void) void {
//     return glad_glDebugMessageCallback.?(arg0, arg1);
// }
// pub inline fn glGenSamplers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenSamplers.?(arg0, arg1);
// }
// pub inline fn glMultiTexCoord2dv(arg0: GLenum, arg1: [*c]const GLdouble) void {
//     return glad_glMultiTexCoord2dv.?(arg0, arg1);
// }
// pub inline fn glCopyTextureSubImage1D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei) void {
//     return glad_glCopyTextureSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_SHADER_BINARY_FORMAT_SPIR_V = 38225;
// pub const GL_PROGRAM_OUTPUT = 37604;
// pub const GL_MAP2_VERTEX_4 = 3512;
// pub const GL_PIXEL_UNPACK_BUFFER_BINDING = 35055;
// pub const GL_CLIPPING_OUTPUT_PRIMITIVES = 33527;
// pub const GL_COLOR_ATTACHMENT29 = 36093;
// pub inline fn glMultiDrawArraysIndirectCount(arg0: GLenum, arg1: ?*const c_void, arg2: GLintptr, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glMultiDrawArraysIndirectCount.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_RENDERBUFFER_STENCIL_SIZE = 36181;
// pub const _Writable_elements_impl_ = size;
// pub const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377;
// pub const GL_UNIFORM_SIZE = 35384;
// pub const GL_DEBUG_SOURCE_APPLICATION = 33354;
// pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070;
// pub const __amd64 = 1;
// pub const __OBJC_BOOL_IS_BOOL = 0;
// pub const GL_MAX_FRAMEBUFFER_LAYERS = 37655;
// pub inline fn glFogfv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glFogfv.?(arg0, arg1);
// }
// pub const GL_VIEWPORT_BIT = 2048;
// pub inline fn glListBase(arg0: GLuint) void {
//     return glad_glListBase.?(arg0);
// }
// pub const GL_CLEAR_TEXTURE = 37733;
// pub const GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 35378;
// pub inline fn glRects(arg0: GLshort, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glRects.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNSIGNED_SHORT = 5123;
// pub inline fn glTexImage3D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei, arg6: GLint, arg7: GLenum, arg8: GLenum, arg9: ?*const c_void) void {
//     return glad_glTexImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
// }
// pub inline fn glVertexArrayAttribIFormat(arg0: GLuint, arg1: GLuint, arg2: GLint, arg3: GLenum, arg4: GLuint) void {
//     return glad_glVertexArrayAttribIFormat.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_PROGRAM_PIPELINE = 33508;
// pub const GL_MAX_PROGRAM_TEXEL_OFFSET = 35077;
// pub const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 37596;
// pub const _Analysis_assume_lock_held_ = lock;
// pub const GL_SCISSOR_BOX = 3088;
// pub const GL_RGBA32I = 36226;
// pub inline fn glVertexAttribL3dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttribL3dv.?(arg0, arg1);
// }
// pub const GL_EQUIV = 5385;
// pub const GL_SRC_ALPHA = 770;
// pub const GL_MAX_PROJECTION_STACK_DEPTH = 3384;
// pub const GL_VERSION_2_1 = 1;
// pub const __SSE4_1__ = 1;
// pub inline fn glUniform1dv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLdouble) void {
//     return glad_glUniform1dv.?(arg0, arg1, arg2);
// }
// pub inline fn glMultiDrawArraysIndirect(arg0: GLenum, arg1: ?*const c_void, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glMultiDrawArraysIndirect.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glBeginConditionalRender(arg0: GLuint, arg1: GLenum) void {
//     return glad_glBeginConditionalRender.?(arg0, arg1);
// }
// pub const GL_ACCUM_ALPHA_BITS = 3419;
// pub const GL_T2F_C3F_V3F = 10794;
// pub const GL_PRIMITIVES_GENERATED = 35975;
// pub const _Ret1_impl_ = p1;
// pub const GL_MAX_TEXTURE_MAX_ANISOTROPY = 34047;
// pub const GL_RGBA16I = 36232;
// pub inline fn glSecondaryColor3sv(arg0: [*c]const GLshort) void {
//     return glad_glSecondaryColor3sv.?(arg0);
// }
// pub const GL_VIEW_CLASS_96_BITS = 33477;
// pub const GL_NONE = 0;
// pub const GL_BUFFER_VARIABLE = 37605;
// pub const GL_TRIANGLE_STRIP_ADJACENCY = 13;
// pub const GL_TRANSFORM_FEEDBACK_BUFFER = 35982;
// pub const GL_BLEND_EQUATION = 32777;
// pub const GL_CURRENT_INDEX = 2817;
// pub inline fn glRasterPos2s(arg0: GLshort, arg1: GLshort) void {
//     return glad_glRasterPos2s.?(arg0, arg1);
// }
// pub const GL_FRAMEBUFFER_DEFAULT_WIDTH = 37648;
// pub const GL_RGB32UI = 36209;
// pub const GL_FILTER = 33434;
// pub inline fn glTexCoord4s(arg0: GLshort, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glTexCoord4s.?(arg0, arg1, arg2, arg3);
// }
// pub const _M_X64 = 100;
// pub inline fn glColor4ui(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: GLuint) void {
//     return glad_glColor4ui.?(arg0, arg1, arg2, arg3);
// }
// pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
// pub inline fn glVertex2d(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glVertex2d.?(arg0, arg1);
// }
// pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
// pub inline fn glGetInternalformati64v(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: [*c]GLint64) void {
//     return glad_glGetInternalformati64v.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_UNDEFINED_VERTEX = 33376;
// pub const GL_OUT_OF_MEMORY = 1285;
// pub inline fn glDepthRangeArrayv(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLdouble) void {
//     return glad_glDepthRangeArrayv.?(arg0, arg1, arg2);
// }
// pub const __INT32_FMTi__ = "i";
// pub const __DBL_HAS_INFINITY__ = 1;
// pub const GL_LINE_RESET_TOKEN = 1799;
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 37578;
// pub const __precond = expr;
// pub const GL_COMPUTE_SHADER_BIT = 32;
// pub const GL_TEXTURE_LOD_BIAS = 34049;
// pub const GL_TRANSPOSE_TEXTURE_MATRIX = 34021;
// pub inline fn glTexParameterf(arg0: GLenum, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glTexParameterf.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_IMAGE_TYPE = 33424;
// pub inline fn glVertexAttrib4Nub(arg0: GLuint, arg1: GLubyte, arg2: GLubyte, arg3: GLubyte, arg4: GLubyte) void {
//     return glad_glVertexAttrib4Nub.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glDrawPixels(arg0: GLsizei, arg1: GLsizei, arg2: GLenum, arg3: GLenum, arg4: ?*const c_void) void {
//     return glad_glDrawPixels.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_GEOMETRY_IMAGE_UNIFORMS = 37069;
// pub inline fn glLinkProgram(arg0: GLuint) void {
//     return glad_glLinkProgram.?(arg0);
// }
// pub inline fn glProgramUniformMatrix4x2dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix4x2dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_DEBUG_GROUP_STACK_DEPTH = 33388;
// pub inline fn glMap2d(arg0: GLenum, arg1: GLdouble, arg2: GLdouble, arg3: GLint, arg4: GLint, arg5: GLdouble, arg6: GLdouble, arg7: GLint, arg8: GLint, arg9: [*c]const GLdouble) void {
//     return glad_glMap2d.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
// }
// pub const GL_ACCUM_RED_BITS = 3416;
// pub const GL_MAX_VERTEX_STREAMS = 36465;
// pub inline fn glTexCoord3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glTexCoord3d.?(arg0, arg1, arg2);
// }
// pub inline fn glGetTextureLevelParameteriv(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetTextureLevelParameteriv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_PACK_ALIGNMENT = 3333;
// pub const GL_INTERNALFORMAT_ALPHA_SIZE = 33396;
// pub inline fn glGetPixelMapfv(arg0: GLenum, arg1: [*c]GLfloat) void {
//     return glad_glGetPixelMapfv.?(arg0, arg1);
// }
// pub inline fn glBitmap(arg0: GLsizei, arg1: GLsizei, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat, arg5: GLfloat, arg6: [*c]const GLubyte) void {
//     return glad_glBitmap.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_SOURCE1_ALPHA = 34185;
// pub inline fn glBindFramebuffer(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBindFramebuffer.?(arg0, arg1);
// }
// pub inline fn glNormal3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glNormal3s.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttrib2s(arg0: GLuint, arg1: GLshort, arg2: GLshort) void {
//     return glad_glVertexAttrib2s.?(arg0, arg1, arg2);
// }
// pub const GL_FRAMEBUFFER_DEFAULT_SAMPLES = 37651;
// pub const GL_EVAL_BIT = 65536;
// pub const GL_RENDERBUFFER_ALPHA_SIZE = 36179;
// pub const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 37087;
// pub const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 37308;
// pub const GL_VIEW_CLASS_RGTC1_RED = 33488;
// pub const GL_DEPTH_COMPONENT32F = 36012;
// pub inline fn glVertexAttrib4usv(arg0: GLuint, arg1: [*c]const GLushort) void {
//     return glad_glVertexAttrib4usv.?(arg0, arg1);
// }
// pub const __ATOMIC_RELAXED = 0;
// pub const GL_TEXTURE_GEN_R = 3170;
// pub inline fn glPopClientAttrib() void {
//     return glad_glPopClientAttrib.?();
// }
// pub const __XSAVEC__ = 1;
// pub const __UINT_FAST16_MAX__ = 65535;
// pub const GL_VERSION_4_3 = 1;
// pub inline fn glNamedFramebufferRenderbuffer(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: GLuint) void {
//     return glad_glNamedFramebufferRenderbuffer.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE6 = 33990;
// pub const GL_CURRENT_RASTER_INDEX = 2821;
// pub inline fn glTexCoordP4uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glTexCoordP4uiv.?(arg0, arg1);
// }
// pub const GLAPIENTRY = APIENTRY;
// pub const GL_TEXTURE_RED_SIZE = 32860;
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_MODE = 35967;
// pub inline fn glVertexAttrib4Nuiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttrib4Nuiv.?(arg0, arg1);
// }
// pub const __STDC_HOSTED__ = 1;
// pub const GL_ALPHA4 = 32827;
// pub const GL_FRAMEBUFFER_COMPLETE = 36053;
// pub inline fn glMultiDrawElementsIndirectCount(arg0: GLenum, arg1: GLenum, arg2: ?*const c_void, arg3: GLintptr, arg4: GLsizei, arg5: GLsizei) void {
//     return glad_glMultiDrawElementsIndirectCount.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const __INT_LEAST32_TYPE__ = int;
// pub inline fn glTextureStorage2DMultisample(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLboolean) void {
//     return glad_glTextureStorage2DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_TEXTURE_BLUE_TYPE = 35858;
// pub const GL_DOUBLE = 5130;
// pub inline fn glMultTransposeMatrixd(arg0: [*c]const GLdouble) void {
//     return glad_glMultTransposeMatrixd.?(arg0);
// }
// pub const GL_TEXTURE_MAX_LOD = 33083;
// pub const GL_VERTEX_ATTRIB_ARRAY_ENABLED = 34338;
// pub const GL_FOG_COORD = 33873;
// pub const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS = 37593;
// pub const GL_IMAGE_COMPATIBILITY_CLASS = 33448;
// pub const GL_TEXTURE_VIEW_MIN_LAYER = 33501;
// pub const GL_TEXTURE_VIEW_MIN_LEVEL = 33499;
// pub const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049;
// pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
// pub inline fn glWindowPos3dv(arg0: [*c]const GLdouble) void {
//     return glad_glWindowPos3dv.?(arg0);
// }
// pub const GL_SIGNED_NORMALIZED = 36764;
// pub const GL_RENDERBUFFER_GREEN_SIZE = 36177;
// pub inline fn glDispatchComputeIndirect(arg0: GLintptr) void {
//     return glad_glDispatchComputeIndirect.?(arg0);
// }
// pub inline fn glProgramUniform2d(arg0: GLuint, arg1: GLint, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glProgramUniform2d.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_WIDTH = 4096;
// pub inline fn glGetTexParameteriv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTexParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_2D_ARRAY = 35866;
// pub const GL_VERTEX_ATTRIB_ARRAY_DIVISOR = 35070;
// pub const GL_RESET_NOTIFICATION_STRATEGY = 33366;
// pub inline fn glProgramUniform4f(arg0: GLuint, arg1: GLint, arg2: GLfloat, arg3: GLfloat, arg4: GLfloat, arg5: GLfloat) void {
//     return glad_glProgramUniform4f.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glCopyTexSubImage2D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLsizei, arg7: GLsizei) void {
//     return glad_glCopyTexSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
// pub const GL_LIGHT7 = 16391;
// pub const GL_FRAMEBUFFER_SRGB = 36281;
// pub const GL_FIXED = 5132;
// pub const GL_TEXTURE_COORD_ARRAY = 32888;
// pub const GL_RENDERBUFFER_WIDTH = 36162;
// pub const GL_POINT_SIZE = 2833;
// pub inline fn glVertexP2uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glVertexP2uiv.?(arg0, arg1);
// }
// pub const GL_INTERNALFORMAT_BLUE_TYPE = 33402;
// pub const __inner_typefix = ctype;
// pub const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 36486;
// pub const GL_MANUAL_GENERATE_MIPMAP = 33428;
// pub const GL_TRIANGLE_STRIP = 5;
// pub const GL_MAP2_VERTEX_3 = 3511;
// pub const GL_IS_ROW_MAJOR = 37632;
// pub inline fn glGetNamedFramebufferParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetNamedFramebufferParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 37708;
// pub inline fn glVertexAttrib4Nusv(arg0: GLuint, arg1: [*c]const GLushort) void {
//     return glad_glVertexAttrib4Nusv.?(arg0, arg1);
// }
// pub const GL_PACK_SKIP_IMAGES = 32875;
// pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072;
// pub const GL_FOG_COORDINATE_ARRAY_TYPE = 33876;
// pub inline fn glColor4f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glColor4f.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glColorP4ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glColorP4ui.?(arg0, arg1);
// }
// pub const GL_COPY_READ_BUFFER_BINDING = 36662;
// pub inline fn glRasterPos3sv(arg0: [*c]const GLshort) void {
//     return glad_glRasterPos3sv.?(arg0);
// }
// pub inline fn glMultiTexCoord4d(arg0: GLenum, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble) void {
//     return glad_glMultiTexCoord4d.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAP1_TEXTURE_COORD_3 = 3477;
// pub const GL_TIMEOUT_EXPIRED = 37147;
// pub inline fn glRotated(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glRotated.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_QUERY_NO_WAIT_INVERTED = 36376;
// pub const GL_TEXTURE_MAX_ANISOTROPY = 34046;
// pub const GL_MAP2_TEXTURE_COORD_1 = 3507;
// pub const GL_ALIASED_LINE_WIDTH_RANGE = 33902;
// pub const GL_PROGRAM_BINARY_LENGTH = 34625;
// pub const __FLT_DIG__ = 6;
// pub const GL_ATOMIC_COUNTER_BUFFER_BINDING = 37569;
// pub const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 36425;
// pub inline fn glProgramUniform1dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLdouble) void {
//     return glad_glProgramUniform1dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glDetachShader(arg0: GLuint, arg1: GLuint) void {
//     return glad_glDetachShader.?(arg0, arg1);
// }
// pub const __UINT_LEAST16_FMTu__ = "hu";
// pub const GL_VERTEX_TEXTURE = 33435;
// pub const GL_COLOR_ATTACHMENT31 = 36095;
// pub inline fn glSecondaryColor3fv(arg0: [*c]const GLfloat) void {
//     return glad_glSecondaryColor3fv.?(arg0);
// }
// pub const GL_VERSION_2_0 = 1;
// pub const GL_TEXTURE_VIEW_NUM_LEVELS = 33500;
// pub inline fn glRasterPos3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glRasterPos3s.?(arg0, arg1, arg2);
// }
// pub const GL_DECR_WRAP = 34056;
// pub inline fn glGetTexEnvfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetTexEnvfv.?(arg0, arg1, arg2);
// }
// pub const GL_CLAMP_TO_BORDER = 33069;
// pub const GL_MAP1_COLOR_4 = 3472;
// pub const GL_T = 8193;
// pub inline fn glClearDepth(arg0: GLdouble) void {
//     return glad_glClearDepth.?(arg0);
// }
// pub inline fn glDeleteShader(arg0: GLuint) void {
//     return glad_glDeleteShader.?(arg0);
// }
// pub const GL_VERTEX_ARRAY_STRIDE = 32892;
// pub const GL_MEDIUM_FLOAT = 36337;
// pub inline fn glTexImage3DMultisample(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei, arg6: GLboolean) void {
//     return glad_glTexImage3DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_GREATER = 516;
// pub const GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466;
// pub const GL_FOG_COORDINATE_ARRAY_POINTER = 33878;
// pub const GL_UNIFORM_BUFFER_BINDING = 35368;
// pub inline fn glNormal3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glNormal3d.?(arg0, arg1, arg2);
// }
// pub const __UINT_FAST32_FMTX__ = "X";
// pub const __corei7__ = 1;
// pub inline fn glDepthFunc(arg0: GLenum) void {
//     return glad_glDepthFunc.?(arg0);
// }
// pub inline fn glRectdv(arg0: [*c]const GLdouble, arg1: [*c]const GLdouble) void {
//     return glad_glRectdv.?(arg0, arg1);
// }
// pub const GL_SHININESS = 5633;
// pub const GL_GEQUAL = 518;
// pub inline fn glVertex4d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glVertex4d.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNSIGNED_INT_8_8_8_8 = 32821;
// pub const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 34972;
// pub inline fn glNamedRenderbufferStorageMultisample(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glNamedRenderbufferStorageMultisample.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glActiveShaderProgram(arg0: GLuint, arg1: GLuint) void {
//     return glad_glActiveShaderProgram.?(arg0, arg1);
// }
// pub const GL_COLOR_INDEXES = 5635;
// pub const GL_NUM_EXTENSIONS = 33309;
// pub const GL_POLYGON_OFFSET_LINE = 10754;
// pub const __INT32_TYPE__ = int;
// pub const GL_MAX_PIXEL_MAP_TABLE = 3380;
// pub const GL_UNPACK_LSB_FIRST = 3313;
// pub inline fn glRasterPos4d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glRasterPos4d.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glColor3b(arg0: GLbyte, arg1: GLbyte, arg2: GLbyte) void {
//     return glad_glColor3b.?(arg0, arg1, arg2);
// }
// pub inline fn glMultiTexCoordP4ui(arg0: GLenum, arg1: GLenum, arg2: GLuint) void {
//     return glad_glMultiTexCoordP4ui.?(arg0, arg1, arg2);
// }
// pub const GL_PIXEL_MAP_I_TO_G = 3187;
// pub const GL_INDEX_MODE = 3120;
// pub inline fn glIsSync(arg0: GLsync) GLboolean {
//     return glad_glIsSync.?(arg0);
// }
// pub const GL_TEXTURE_BASE_LEVEL = 33084;
// pub inline fn glProvokingVertex(arg0: GLenum) void {
//     return glad_glProvokingVertex.?(arg0);
// }
// pub const GL_UNSIGNED_INT_SAMPLER_BUFFER = 36312;
// pub const GL_VERTEX_ARRAY_TYPE = 32891;
// pub const GL_UNSIGNED_INT_ATOMIC_COUNTER = 37595;
// pub const __INT_LEAST8_FMTd__ = "hhd";
// pub const GL_TESS_GEN_POINT_MODE = 36473;
// pub const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311;
// pub inline fn glGetShaderSource(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLchar) void {
//     return glad_glGetShaderSource.?(arg0, arg1, arg2, arg3);
// }
// pub const _MSC_BUILD = 1;
// pub const GL_BITMAP = 6656;
// pub const GL_COMPRESSED_RED = 33317;
// pub inline fn glGetUniformLocation(arg0: GLuint, arg1: [*c]const GLchar) GLint {
//     return glad_glGetUniformLocation.?(arg0, arg1);
// }
// pub const GL_SRGB8_ALPHA8 = 35907;
// pub inline fn glGetClipPlane(arg0: GLenum, arg1: [*c]GLdouble) void {
//     return glad_glGetClipPlane.?(arg0, arg1);
// }
// pub const GL_INT_SAMPLER_CUBE_MAP_ARRAY = 36878;
// pub inline fn glVertexAttribI4ui(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: GLuint, arg4: GLuint) void {
//     return glad_glVertexAttribI4ui.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glProgramUniformMatrix3x2fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix3x2fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glNamedRenderbufferStorage(arg0: GLuint, arg1: GLenum, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glNamedRenderbufferStorage.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_SRC0_RGB = 34176;
// pub inline fn glDrawElementsIndirect(arg0: GLenum, arg1: GLenum, arg2: ?*const c_void) void {
//     return glad_glDrawElementsIndirect.?(arg0, arg1, arg2);
// }
// pub const GL_POINT_DISTANCE_ATTENUATION = 33065;
// pub const GL_R16 = 33322;
// pub inline fn glGetnCompressedTexImage(arg0: GLenum, arg1: GLint, arg2: GLsizei, arg3: ?*c_void) void {
//     return glad_glGetnCompressedTexImage.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MAX_SAMPLE_MASK_WORDS = 36441;
// pub const GL_INTERNALFORMAT_DEPTH_SIZE = 33397;
// pub const __DBL_EPSILON__ = 0.000000;
// pub const GL_MAX_VARYING_FLOATS = 35659;
// pub inline fn glGetMaterialfv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetMaterialfv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_3D_TEXTURE_SIZE = 32883;
// pub inline fn glRasterPos2f(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glRasterPos2f.?(arg0, arg1);
// }
// pub const GL_UNSIGNED_SHORT_5_5_5_1 = 32820;
// pub const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 36382;
// pub const __INT16_FMTi__ = "hi";
// pub const INT_LEAST32_MIN = INT32_MIN;
// pub inline fn glTexStorage3DMultisample(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei, arg6: GLboolean) void {
//     return glad_glTexStorage3DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_QUAD_STRIP = 8;
// pub const GL_FRAGMENT_SUBROUTINE_UNIFORM = 37618;
// pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
// pub inline fn glColor3iv(arg0: [*c]const GLint) void {
//     return glad_glColor3iv.?(arg0);
// }
// pub const GL_COMBINE = 34160;
// pub const GL_TEXTURE_GEN_S = 3168;
// pub const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127;
// pub const GL_SPOT_CUTOFF = 4614;
// pub inline fn glGetProgramPipelineInfoLog(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLchar) void {
//     return glad_glGetProgramPipelineInfoLog.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_VERSION_4_2 = 1;
// pub const GL_TEXTURE7 = 33991;
// pub inline fn glGetQueryIndexediv(arg0: GLenum, arg1: GLuint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetQueryIndexediv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_EXP2 = 2049;
// pub const GL_VERTEX_ATTRIB_ARRAY_SIZE = 34339;
// pub const GL_SRC_COLOR = 768;
// pub inline fn glRasterPos2fv(arg0: [*c]const GLfloat) void {
//     return glad_glRasterPos2fv.?(arg0);
// }
// pub const GL_ARRAY_STRIDE = 37630;
// pub const GL_DONT_CARE = 4352;
// pub const GL_TEXTURE_BLUE_SIZE = 32862;
// pub const _Write_guarded_by_ = lock;
// pub const __releases_exclusive_lock = lock;
// pub const GL_MAP2_INDEX = 3505;
// pub inline fn glFogCoorddv(arg0: [*c]const GLdouble) void {
//     return glad_glFogCoorddv.?(arg0);
// }
// pub const GL_ACTIVE_ATTRIBUTES = 35721;
// pub inline fn glGetTextureParameterfv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetTextureParameterfv.?(arg0, arg1, arg2);
// }
// pub const GL_FUNC_SUBTRACT = 32778;
// pub inline fn glDisableClientState(arg0: GLenum) void {
//     return glad_glDisableClientState.?(arg0);
// }
// pub const __UINT32_C_SUFFIX__ = U;
// pub const GL_SHADE_MODEL = 2900;
// pub const GL_STATIC_READ = 35045;
// pub const GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 37122;
// pub const GL_FRAMEBUFFER_BLEND = 33419;
// pub inline fn glGetStringi(arg0: GLenum, arg1: GLuint) [*c]const GLubyte {
//     return glad_glGetStringi.?(arg0, arg1);
// }
// pub inline fn glProgramUniformMatrix4x3dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix4x3dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_RGB_SCALE = 34163;
// pub const GL_FALSE = 0;
// pub const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 36328;
// pub const APIENTRYP = [*c]APIENTRY;
// pub const GL_SHADER_STORAGE_BUFFER = 37074;
// pub const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM = 37616;
// pub const GL_INFO_LOG_LENGTH = 35716;
// pub inline fn glPopMatrix() void {
//     return glad_glPopMatrix.?();
// }
// pub const __STDC_UTF_16__ = 1;
// pub const GL_BLEND_COLOR = 32773;
// pub const GL_SRGB_READ = 33431;
// pub const __UINTMAX_C_SUFFIX__ = ULL;
// pub inline fn glIsFramebuffer(arg0: GLuint) GLboolean {
//     return glad_glIsFramebuffer.?(arg0);
// }
// pub inline fn glProgramUniformMatrix2x4fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix2x4fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_BUFFER_BINDING = 37634;
// pub const GL_CLAMP_READ_COLOR = 35100;
// pub const GL_INTERPOLATE = 34165;
// pub inline fn glVertexAttrib2d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glVertexAttrib2d.?(arg0, arg1, arg2);
// }
// pub const GL_MAP2_COLOR_4 = 3504;
// pub const GL_TESS_CONTROL_SUBROUTINE_UNIFORM = 37615;
// pub const GL_BLEND_EQUATION_RGB = 32777;
// pub const GL_ACTIVE_UNIFORM_MAX_LENGTH = 35719;
// pub const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 37085;
// pub const GL_DRAW_BUFFER4 = 34857;
// pub const GL_LIGHT6 = 16390;
// pub const GL_TEXTURE_BINDING_1D = 32872;
// pub const UINT_LEAST16_MAX = UINT16_MAX;
// pub inline fn glGetTransformFeedbackVarying(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLsizei, arg5: [*c]GLenum, arg6: [*c]GLchar) void {
//     return glad_glGetTransformFeedbackVarying.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_PACK_COMPRESSED_BLOCK_SIZE = 37166;
// pub inline fn glColor4us(arg0: GLushort, arg1: GLushort, arg2: GLushort, arg3: GLushort) void {
//     return glad_glColor4us.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FLOAT_MAT4 = 35676;
// pub const GL_FOG_END = 2916;
// pub inline fn glLoadTransposeMatrixd(arg0: [*c]const GLdouble) void {
//     return glad_glLoadTransposeMatrixd.?(arg0);
// }
// pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
// pub const GL_INT = 5124;
// pub const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074;
// pub inline fn glVertex3iv(arg0: [*c]const GLint) void {
//     return glad_glVertex3iv.?(arg0);
// }
// pub const GL_LUMINANCE = 6409;
// pub const GL_TEXTURE_BUFFER_OFFSET = 37277;
// pub inline fn glVertexAttribP3uiv(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: [*c]const GLuint) void {
//     return glad_glVertexAttribP3uiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetnPixelMapuiv(arg0: GLenum, arg1: GLsizei, arg2: [*c]GLuint) void {
//     return glad_glGetnPixelMapuiv.?(arg0, arg1, arg2);
// }
// pub const GL_UNSIGNED_SHORT_5_6_5 = 33635;
// pub const GL_MAP1_TEXTURE_COORD_2 = 3476;
// pub inline fn glGetFloatv(arg0: GLenum, arg1: [*c]GLfloat) void {
//     return glad_glGetFloatv.?(arg0, arg1);
// }
// pub const _SA_annotes0 = n;
// pub const GL_MAX_UNIFORM_BUFFER_BINDINGS = 35375;
// pub const GL_NORMAL_ARRAY_POINTER = 32911;
// pub inline fn glAccum(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glAccum.?(arg0, arg1);
// }
// pub inline fn glVertexAttribI1i(arg0: GLuint, arg1: GLint) void {
//     return glad_glVertexAttribI1i.?(arg0, arg1);
// }
// pub const GL_MAP2_GRID_SEGMENTS = 3539;
// pub inline fn glTextureBarrier() void {
//     return glad_glTextureBarrier.?();
// }
// pub const APIENTRY = __stdcall;
// pub const GL_RGBA16_SNORM = 36763;
// pub inline fn glLightModeli(arg0: GLenum, arg1: GLint) void {
//     return glad_glLightModeli.?(arg0, arg1);
// }
// pub const GL_COLOR_ATTACHMENT30 = 36094;
// pub const GL_FOG_COORD_ARRAY_BUFFER_BINDING = 34973;
// pub const GL_TESS_CONTROL_OUTPUT_VERTICES = 36469;
// pub const GL_UNSIGNED_INT_SAMPLER_CUBE = 36308;
// pub inline fn glPassThrough(arg0: GLfloat) void {
//     return glad_glPassThrough.?(arg0);
// }
// pub const GL_DYNAMIC_STORAGE_BIT = 256;
// pub const GL_COMPILE_STATUS = 35713;
// pub const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497;
// pub inline fn glIndexsv(arg0: [*c]const GLshort) void {
//     return glad_glIndexsv.?(arg0);
// }
// pub const GL_FOG_COLOR = 2918;
// pub const GL_DEPTH24_STENCIL8 = 35056;
// pub inline fn glGetShaderInfoLog(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLsizei, arg3: [*c]GLchar) void {
//     return glad_glGetShaderInfoLog.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTextureBuffer(arg0: GLuint, arg1: GLenum, arg2: GLuint) void {
//     return glad_glTextureBuffer.?(arg0, arg1, arg2);
// }
// pub const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 36060;
// pub const GL_MAX_NUM_COMPATIBLE_SUBROUTINES = 37624;
// pub inline fn glGetnMapdv(arg0: GLenum, arg1: GLenum, arg2: GLsizei, arg3: [*c]GLdouble) void {
//     return glad_glGetnMapdv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_SPIR_V_EXTENSIONS = 38227;
// pub inline fn glObjectLabel(arg0: GLenum, arg1: GLuint, arg2: GLsizei, arg3: [*c]const GLchar) void {
//     return glad_glObjectLabel.?(arg0, arg1, arg2, arg3);
// }
// pub const _Analysis_assume_lock_not_held_ = lock;
// pub const GL_PATCHES = 14;
// pub inline fn glAlphaFunc(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glAlphaFunc.?(arg0, arg1);
// }
// pub const GL_PROGRAM_INPUT = 37603;
// pub const __POPCNT__ = 1;
// pub const GL_VERTEX_PROGRAM_TWO_SIDE = 34371;
// pub inline fn glTexEnviv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTexEnviv.?(arg0, arg1, arg2);
// }
// pub const GL_SHADER_IMAGE_STORE = 33445;
// pub const __INT_FAST16_FMTd__ = "hd";
// pub const _HAS_NODISCARD = 0;
// pub const KHRONOS_SUPPORT_INT64 = 1;
// pub const GL_TEXTURE_DEPTH_SIZE = 34890;
// pub const __UINT_LEAST32_FMTu__ = "u";
// pub const GL_VERTEX_BINDING_DIVISOR = 33494;
// pub const GL_FOG_HINT = 3156;
// pub const GL_MIPMAP = 33427;
// pub const GL_INT_2_10_10_10_REV = 36255;
// pub const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 36490;
// pub inline fn glGetQueryBufferObjectuiv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: GLintptr) void {
//     return glad_glGetQueryBufferObjectuiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glVertexAttribL2dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttribL2dv.?(arg0, arg1);
// }
// pub inline fn glUniformBlockBinding(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glUniformBlockBinding.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_ALPHA_TYPE = 35859;
// pub inline fn glShaderStorageBlockBinding(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glShaderStorageBlockBinding.?(arg0, arg1, arg2);
// }
// pub inline fn glVertex4sv(arg0: [*c]const GLshort) void {
//     return glad_glVertex4sv.?(arg0);
// }
// pub const __FLT_MIN_10_EXP__ = -37;
// pub const GL_MAX_LAYERS = 33409;
// pub const GL_SOURCE2_ALPHA = 34186;
// pub const GL_MATRIX_MODE = 2976;
// pub inline fn glFramebufferTexture(arg0: GLenum, arg1: GLenum, arg2: GLuint, arg3: GLint) void {
//     return glad_glFramebufferTexture.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNPACK_ROW_LENGTH = 3314;
// pub const GL_GREEN_SCALE = 3352;
// pub const GL_MAX_ARRAY_TEXTURE_LAYERS = 35071;
// pub const GL_EDGE_FLAG = 2883;
// pub inline fn glTexCoord3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glTexCoord3f.?(arg0, arg1, arg2);
// }
// pub inline fn glDispatchCompute(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glDispatchCompute.?(arg0, arg1, arg2);
// }
// pub inline fn glDebugMessageInsert(arg0: GLenum, arg1: GLenum, arg2: GLuint, arg3: GLenum, arg4: GLsizei, arg5: [*c]const GLchar) void {
//     return glad_glDebugMessageInsert.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glVertexAttribP4ui(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: GLuint) void {
//     return glad_glVertexAttribP4ui.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glPrioritizeTextures(arg0: GLsizei, arg1: [*c]const GLuint, arg2: [*c]const GLfloat) void {
//     return glad_glPrioritizeTextures.?(arg0, arg1, arg2);
// }
// pub const GL_PREVIOUS = 34168;
// pub const GL_INTERNALFORMAT_ALPHA_TYPE = 33403;
// pub inline fn glGetTextureImage(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLenum, arg4: GLsizei, arg5: ?*c_void) void {
//     return glad_glGetTextureImage.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glGetBooleani_v(arg0: GLenum, arg1: GLuint, arg2: [*c]GLboolean) void {
//     return glad_glGetBooleani_v.?(arg0, arg1, arg2);
// }
// pub const GL_RGB8 = 32849;
// pub const __UINT_FAST8_FMTx__ = "hhx";
// pub const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY = 36310;
// pub inline fn glUniformSubroutinesuiv(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glUniformSubroutinesuiv.?(arg0, arg1, arg2);
// }
// pub const GL_3_BYTES = 5128;
// pub const GL_SAMPLER_CUBE_SHADOW = 36293;
// pub const GL_UNPACK_COMPRESSED_BLOCK_WIDTH = 37159;
// pub const GL_R11F_G11F_B10F = 35898;
// pub inline fn glRasterPos4fv(arg0: [*c]const GLfloat) void {
//     return glad_glRasterPos4fv.?(arg0);
// }
// pub const GL_TEXTURE_SAMPLES = 37126;
// pub const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 33358;
// pub const __UINT16_FMTx__ = "hx";
// pub const __UINTPTR_FMTu__ = "llu";
// pub inline fn glBindTransformFeedback(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBindTransformFeedback.?(arg0, arg1);
// }
// pub const GL_TRANSFORM_FEEDBACK_BARRIER_BIT = 2048;
// pub const GL_MIN_PROGRAM_TEXEL_OFFSET = 35076;
// pub const GL_VERSION_4_1 = 1;
// pub const GL_TEXTURE4 = 33988;
// pub const GL_SLUMINANCE8_ALPHA8 = 35909;
// pub const GL_COMPRESSED_RED_RGTC1 = 36283;
// pub const GL_NAME_STACK_DEPTH = 3440;
// pub inline fn glBlitNamedFramebuffer(arg0: GLuint, arg1: GLuint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLint, arg7: GLint, arg8: GLint, arg9: GLint, arg10: GLbitfield, arg11: GLenum) void {
//     return glad_glBlitNamedFramebuffer.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);
// }
// pub const GL_CURRENT_RASTER_POSITION_VALID = 2824;
// pub const GL_TEXTURE_SHADOW = 33441;
// pub const GL_LINE_STIPPLE_REPEAT = 2854;
// pub const _WConst_return = _CONST_RETURN;
// pub const GL_PIXEL_MAP_I_TO_R = 3186;
// pub const GL_VERTEX_ARRAY_POINTER = 32910;
// pub inline fn glGetSamplerParameterfv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glGetSamplerParameterfv.?(arg0, arg1, arg2);
// }
// pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_DEPTH_STENCIL = 34041;
// pub const GL_ZOOM_Y = 3351;
// pub const GL_MODELVIEW = 5888;
// pub const GL_LINE_STIPPLE_PATTERN = 2853;
// pub const GL_TRANSFORM_FEEDBACK_BINDING = 36389;
// pub const GL_DISPATCH_INDIRECT_BUFFER = 37102;
// pub const GL_FOG_DENSITY = 2914;
// pub const GL_INT_IMAGE_3D = 36953;
// pub inline fn glProgramParameteri(arg0: GLuint, arg1: GLenum, arg2: GLint) void {
//     return glad_glProgramParameteri.?(arg0, arg1, arg2);
// }
// pub const GL_UNPACK_SWAP_BYTES = 3312;
// pub const GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 36494;
// pub const GL_LINK_STATUS = 35714;
// pub inline fn glMinSampleShading(arg0: GLfloat) void {
//     return glad_glMinSampleShading.?(arg0);
// }
// pub inline fn glGetUniformiv(arg0: GLuint, arg1: GLint, arg2: [*c]GLint) void {
//     return glad_glGetUniformiv.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLE_COVERAGE_VALUE = 32938;
// pub inline fn glTexCoordP2uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glTexCoordP2uiv.?(arg0, arg1);
// }
// pub const GL_IMAGE_BINDING_LEVEL = 36667;
// pub inline fn glGetnPolygonStipple(arg0: GLsizei, arg1: [*c]GLubyte) void {
//     return glad_glGetnPolygonStipple.?(arg0, arg1);
// }
// pub inline fn glProgramUniform2f(arg0: GLuint, arg1: GLint, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glProgramUniform2f.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTextureStorage3D(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei) void {
//     return glad_glTextureStorage3D.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_T2F_C4F_N3F_V3F = 10796;
// pub const GL_TEXTURE_LUMINANCE_TYPE = 35860;
// pub inline fn glProgramUniformMatrix3x4dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix3x4dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glTransformFeedbackBufferRange(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glTransformFeedbackBufferRange.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_VERTEX_ATTRIB_BINDINGS = 33498;
// pub inline fn glProgramUniform4d(arg0: GLuint, arg1: GLint, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble, arg5: GLdouble) void {
//     return glad_glProgramUniform4d.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_DRAW_BUFFER5 = 34858;
// pub const GL_LIGHT1 = 16385;
// pub const GL_ALPHA_TEST = 3008;
// pub inline fn glRasterPos2sv(arg0: [*c]const GLshort) void {
//     return glad_glRasterPos2sv.?(arg0);
// }
// pub const __BIGGEST_ALIGNMENT__ = 16;
// pub inline fn glVertexAttrib4dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttrib4dv.?(arg0, arg1);
// }
// pub const __INT64_FMTd__ = "lld";
// pub const GL_LINE_STRIP = 3;
// pub const __LZCNT__ = 1;
// pub const GL_TOP_LEVEL_ARRAY_SIZE = 37644;
// pub const __INVPCID__ = 1;
// pub const GL_FOG_BIT = 128;
// pub inline fn glGetVertexAttribLdv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLdouble) void {
//     return glad_glGetVertexAttribLdv.?(arg0, arg1, arg2);
// }
// pub const GL_NORMAL_ARRAY_TYPE = 32894;
// pub const GL_LESS = 513;
// pub const GL_BUFFER = 33504;
// pub const GL_VERSION_3_0 = 1;
// pub inline fn glColor4d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glColor4d.?(arg0, arg1, arg2, arg3);
// }
// pub const __FMA__ = 1;
// pub const INT_LEAST64_MAX = INT64_MAX;
// pub const WINT_MIN = 0;
// pub const __MMX__ = 1;
// pub inline fn glVertex2fv(arg0: [*c]const GLfloat) void {
//     return glad_glVertex2fv.?(arg0);
// }
// pub inline fn glFlushMappedBufferRange(arg0: GLenum, arg1: GLintptr, arg2: GLsizeiptr) void {
//     return glad_glFlushMappedBufferRange.?(arg0, arg1, arg2);
// }
// pub const GL_ALPHA_INTEGER = 36247;
// pub inline fn glRasterPos3dv(arg0: [*c]const GLdouble) void {
//     return glad_glRasterPos3dv.?(arg0);
// }
// pub const GL_MAX = 32776;
// pub inline fn glRotatef(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glRotatef.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_V2F = 10784;
// pub inline fn glMultiTexCoord2i(arg0: GLenum, arg1: GLint, arg2: GLint) void {
//     return glad_glMultiTexCoord2i.?(arg0, arg1, arg2);
// }
// pub const GL_BOOL_VEC2 = 35671;
// pub inline fn glVertexAttribI4ubv(arg0: GLuint, arg1: [*c]const GLubyte) void {
//     return glad_glVertexAttribI4ubv.?(arg0, arg1);
// }
// pub const GL_UNPACK_COMPRESSED_BLOCK_DEPTH = 37161;
// pub inline fn glGetQueryObjectui64v(arg0: GLuint, arg1: GLenum, arg2: [*c]GLuint64) void {
//     return glad_glGetQueryObjectui64v.?(arg0, arg1, arg2);
// }
// pub inline fn glNamedFramebufferTexture(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLint) void {
//     return glad_glNamedFramebufferTexture.?(arg0, arg1, arg2, arg3);
// }
// pub const _Deref_post1_impl_ = p1;
// pub const GL_TEXTURE_COMPARE_MODE = 34892;
// pub const __PTRDIFF_FMTd__ = "lld";
// pub inline fn glClipPlane(arg0: GLenum, arg1: [*c]const GLdouble) void {
//     return glad_glClipPlane.?(arg0, arg1);
// }
// pub const GL_LINE_SMOOTH = 2848;
// pub inline fn glEnable(arg0: GLenum) void {
//     return glad_glEnable.?(arg0);
// }
// pub const GL_COMPRESSED_TEXTURE_FORMATS = 34467;
// pub const GL_READ_PIXELS_TYPE = 33422;
// pub inline fn glTexGenf(arg0: GLenum, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glTexGenf.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_CUBE_MAP_POSITIVE_X = 34069;
// pub const __UINT_LEAST64_FMTx__ = "llx";
// pub inline fn glUniformMatrix3fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix3fv.?(arg0, arg1, arg2, arg3);
// }
// pub const __NO_MATH_INLINES = 1;
// pub const GL_SAMPLES = 32937;
// pub const GL_VENDOR = 7936;
// pub inline fn glGetShaderPrecisionFormat(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint, arg3: [*c]GLint) void {
//     return glad_glGetShaderPrecisionFormat.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glVertexAttrib4ubv(arg0: GLuint, arg1: [*c]const GLubyte) void {
//     return glad_glVertexAttrib4ubv.?(arg0, arg1);
// }
// pub const GL_TEXTURE_HEIGHT = 4097;
// pub const __PTRDIFF_WIDTH__ = 64;
// pub inline fn glVertex4f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glVertex4f.?(arg0, arg1, arg2, arg3);
// }
// pub const _Function_ignore_lock_checking_ = lock;
// pub const GL_MULTISAMPLE = 32925;
// pub const GL_CLIENT_ACTIVE_TEXTURE = 34017;
// pub inline fn glShaderSource(arg0: GLuint, arg1: GLsizei, arg2: [*c]const ([*c]const GLchar), arg3: [*c]const GLint) void {
//     return glad_glShaderSource.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COMPRESSED_RGB8_ETC2 = 37492;
// pub inline fn glColor4iv(arg0: [*c]const GLint) void {
//     return glad_glColor4iv.?(arg0);
// }
// pub inline fn glEvalCoord1d(arg0: GLdouble) void {
//     return glad_glEvalCoord1d.?(arg0);
// }
// pub const GL_COLOR_ATTACHMENT19 = 36083;
// pub inline fn glWindowPos3fv(arg0: [*c]const GLfloat) void {
//     return glad_glWindowPos3fv.?(arg0);
// }
// pub inline fn glDrawTransformFeedbackStreamInstanced(arg0: GLenum, arg1: GLuint, arg2: GLuint, arg3: GLsizei) void {
//     return glad_glDrawTransformFeedbackStreamInstanced.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glRasterPos4f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glRasterPos4f.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MAX_TEXTURE_COORDS = 34929;
// pub inline fn glGetDebugMessageLog(arg0: GLuint, arg1: GLsizei, arg2: [*c]GLenum, arg3: [*c]GLenum, arg4: [*c]GLuint, arg5: [*c]GLenum, arg6: [*c]GLsizei, arg7: [*c]GLchar) GLuint {
//     return glad_glGetDebugMessageLog.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_MAX_FRAMEBUFFER_SAMPLES = 37656;
// pub const GL_BUFFER_MAPPED = 35004;
// pub const GL_PIXEL_MAP_I_TO_I = 3184;
// pub const GL_T4F_V4F = 10792;
// pub const __FLT_DECIMAL_DIG__ = 9;
// pub const GL_TIMESTAMP = 36392;
// pub const __DBL_DIG__ = 15;
// pub const GL_FRAMEBUFFER_BINDING = 36006;
// pub const GL_VERTEX_ATTRIB_BINDING = 33492;
// pub const GL_FRACTIONAL_EVEN = 36476;
// pub const GL_LUMINANCE8 = 32832;
// pub const GL_UNSIGNED_INT_IMAGE_3D = 36964;
// pub const GL_BLUE_SCALE = 3354;
// pub const GL_CLIP_DEPTH_MODE = 37725;
// pub const GL_CONTEXT_FLAG_NO_ERROR_BIT = 8;
// pub inline fn glDisablei(arg0: GLenum, arg1: GLuint) void {
//     return glad_glDisablei.?(arg0, arg1);
// }
// pub inline fn glScissorIndexedv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glScissorIndexedv.?(arg0, arg1);
// }
// pub inline fn glGetBufferSubData(arg0: GLenum, arg1: GLintptr, arg2: GLsizeiptr, arg3: ?*c_void) void {
//     return glad_glGetBufferSubData.?(arg0, arg1, arg2, arg3);
// }
// pub const __UINT_LEAST16_FMTx__ = "hx";
// pub const GL_XOR = 5382;
// pub const __VERSION__ = "Clang 9.0.0 (tags/RELEASE_900/final)";
// pub const GL_STATIC_COPY = 35046;
// pub const GL_CLIPPING_INPUT_PRIMITIVES = 33526;
// pub const __UINT_LEAST64_FMTo__ = "llo";
// pub const _Post_satisfies_impl_ = expr;
// pub inline fn glPixelTransferf(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glPixelTransferf.?(arg0, arg1);
// }
// pub const GL_MAX_VERTEX_UNIFORM_COMPONENTS = 35658;
// pub const GL_SYNC_FENCE = 37142;
// pub inline fn glTexGenfv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glTexGenfv.?(arg0, arg1, arg2);
// }
// pub const GL_LINE_WIDTH_GRANULARITY = 2851;
// pub inline fn glRasterPos2d(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glRasterPos2d.?(arg0, arg1);
// }
// pub const GL_MIN_SAMPLE_SHADING_VALUE = 35895;
// pub inline fn glUniform2fv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glUniform2fv.?(arg0, arg1, arg2);
// }
// pub const GL_TIME_ELAPSED = 35007;
// pub const __UINT16_MAX__ = 65535;
// pub const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 37130;
// pub const __SIZEOF_WINT_T__ = 2;
// pub inline fn glIsEnabled(arg0: GLenum) GLboolean {
//     return glad_glIsEnabled.?(arg0);
// }
// pub const GL_RGB9_E5 = 35901;
// pub const GL_FRAMEBUFFER_RENDERABLE_LAYERED = 33418;
// pub inline fn glVertexAttribI2i(arg0: GLuint, arg1: GLint, arg2: GLint) void {
//     return glad_glVertexAttribI2i.?(arg0, arg1, arg2);
// }
// pub const GL_MAP_STENCIL = 3345;
// pub const __CLRCALL_OR_CDECL = __cdecl;
// pub const GL_MAX_RENDERBUFFER_SIZE = 34024;
// pub const __WINT_UNSIGNED__ = 1;
// pub const GL_DEBUG_TYPE_PORTABILITY = 33359;
// pub inline fn glUnmapBuffer(arg0: GLenum) GLboolean {
//     return glad_glUnmapBuffer.?(arg0);
// }
// pub const GL_VERSION_4_0 = 1;
// pub inline fn glDrawArraysIndirect(arg0: GLenum, arg1: ?*const c_void) void {
//     return glad_glDrawArraysIndirect.?(arg0, arg1);
// }
// pub const GL_TEXTURE5 = 33989;
// pub const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 36970;
// pub const GL_COMPRESSED_RG_RGTC2 = 36285;
// pub const GL_MAP_READ_BIT = 1;
// pub inline fn glVertexAttribLFormat(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLuint) void {
//     return glad_glVertexAttribLFormat.?(arg0, arg1, arg2, arg3);
// }
// pub const _Acquires_shared_lock_ = lock;
// pub inline fn glMultiTexCoordP1ui(arg0: GLenum, arg1: GLenum, arg2: GLuint) void {
//     return glad_glMultiTexCoordP1ui.?(arg0, arg1, arg2);
// }
// pub const GL_BUFFER_DATA_SIZE = 37635;
// pub inline fn glIndexfv(arg0: [*c]const GLfloat) void {
//     return glad_glIndexfv.?(arg0);
// }
// pub const GL_MAX_NAME_STACK_DEPTH = 3383;
// pub const GL_ZOOM_X = 3350;
// pub const GL_ATOMIC_COUNTER_BUFFER_SIZE = 37571;
// pub const GL_POINTS = 0;
// pub const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495;
// pub inline fn glEvalPoint2(arg0: GLint, arg1: GLint) void {
//     return glad_glEvalPoint2.?(arg0, arg1);
// }
// pub const GL_TEXTURE_CUBE_MAP = 34067;
// pub const GL_MAX_TEXTURE_UNITS = 34018;
// pub const GL_IMAGE_CLASS_11_11_10 = 33474;
// pub const __INT_FAST32_MAX__ = 2147483647;
// pub const GL_BGRA = 32993;
// pub const GL_INDEX_ARRAY_BUFFER_BINDING = 34969;
// pub const INT_FAST8_MAX = INT8_MAX;
// pub inline fn glMatrixMode(arg0: GLenum) void {
//     return glad_glMatrixMode.?(arg0);
// }
// pub const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 36479;
// pub inline fn glMultiTexCoord1sv(arg0: GLenum, arg1: [*c]const GLshort) void {
//     return glad_glMultiTexCoord1sv.?(arg0, arg1);
// }
// pub inline fn glPopDebugGroup() void {
//     return glad_glPopDebugGroup.?();
// }
// pub const GL_GUILTY_CONTEXT_RESET = 33363;
// pub const GL_DOMAIN = 2562;
// pub inline fn glTexCoord4fv(arg0: [*c]const GLfloat) void {
//     return glad_glTexCoord4fv.?(arg0);
// }
// pub const __PRAGMA_REDEFINE_EXTNAME = 1;
// pub const GL_FRAGMENT_SUBROUTINE = 37612;
// pub const GL_COMPRESSED_R11_EAC = 37488;
// pub inline fn glColor3uiv(arg0: [*c]const GLuint) void {
//     return glad_glColor3uiv.?(arg0);
// }
// pub inline fn glIsProgram(arg0: GLuint) GLboolean {
//     return glad_glIsProgram.?(arg0);
// }
// pub const GL_DRAW_BUFFER6 = 34859;
// pub const GL_LIGHT0 = 16384;
// pub const __UINT_FAST64_FMTu__ = "llu";
// pub inline fn glClearNamedFramebufferuiv(arg0: GLuint, arg1: GLenum, arg2: GLint, arg3: [*c]const GLuint) void {
//     return glad_glClearNamedFramebufferuiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_ONE_MINUS_DST_COLOR = 775;
// pub const INT_LEAST16_MIN = INT16_MIN;
// pub const GL_VERTEX_BINDING_STRIDE = 33496;
// pub const __INT_FAST16_TYPE__ = short;
// pub const GL_TRANSPOSE_MODELVIEW_MATRIX = 34019;
// pub const GL_UNSIGNED_INT_IMAGE_BUFFER = 36967;
// pub const GL_PIXEL_MAP_I_TO_A_SIZE = 3253;
// pub inline fn glLoadTransposeMatrixf(arg0: [*c]const GLfloat) void {
//     return glad_glLoadTransposeMatrixf.?(arg0);
// }
// pub const GL_POLYGON_MODE = 2880;
// pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 37065;
// pub const GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 33313;
// pub const GL_MAX_TESS_GEN_LEVEL = 36478;
// pub const GL_COMPRESSED_RGBA = 34030;
// pub inline fn glNormal3bv(arg0: [*c]const GLbyte) void {
//     return glad_glNormal3bv.?(arg0);
// }
// pub const GL_RGB16UI = 36215;
// pub const GL_VERSION_3_1 = 1;
// pub const __LDBL_DECIMAL_DIG__ = 17;
// pub const GL_MODELVIEW_STACK_DEPTH = 2979;
// pub inline fn glGetTextureParameterIiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTextureParameterIiv.?(arg0, arg1, arg2);
// }
// pub const GL_LINEAR_ATTENUATION = 4616;
// pub inline fn glMultiTexCoord4i(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint) void {
//     return glad_glMultiTexCoord4i.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAP1_TEXTURE_COORD_4 = 3478;
// pub const INTMAX_MAX = INT64_MAX;
// pub const GL_SET = 5391;
// pub const GL_IMAGE_CLASS_10_10_10_2 = 33475;
// pub const GL_DOUBLE_VEC4 = 36862;
// pub const GL_MAP2_TEXTURE_COORD_4 = 3510;
// pub const GL_BOOL_VEC3 = 35672;
// pub const GL_QUADRATIC_ATTENUATION = 4617;
// pub inline fn glVertex3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glVertex3i.?(arg0, arg1, arg2);
// }
// pub const _MSC_VER = 1924;
// pub inline fn glGetMapdv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLdouble) void {
//     return glad_glGetMapdv.?(arg0, arg1, arg2);
// }
// pub inline fn glBindBuffersRange(arg0: GLenum, arg1: GLuint, arg2: GLsizei, arg3: [*c]const GLuint, arg4: [*c]const GLintptr, arg5: [*c]const GLsizeiptr) void {
//     return glad_glBindBuffersRange.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glClearBufferiv(arg0: GLenum, arg1: GLint, arg2: [*c]const GLint) void {
//     return glad_glClearBufferiv.?(arg0, arg1, arg2);
// }
// pub inline fn glTexCoordP4ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glTexCoordP4ui.?(arg0, arg1);
// }
// pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071;
// pub const _DEBUG = 1;
// pub inline fn glReadnPixels(arg0: GLint, arg1: GLint, arg2: GLsizei, arg3: GLsizei, arg4: GLenum, arg5: GLenum, arg6: GLsizei, arg7: ?*c_void) void {
//     return glad_glReadnPixels.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub inline fn glClipControl(arg0: GLenum, arg1: GLenum) void {
//     return glad_glClipControl.?(arg0, arg1);
// }
// pub const GL_COLOR_ARRAY_POINTER = 32912;
// pub const GL_GENERATE_MIPMAP_HINT = 33170;
// pub const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH = 33457;
// pub const GL_COMMAND_BARRIER_BIT = 64;
// pub const GL_TEXTURE20 = 34004;
// pub inline fn glCopyNamedBufferSubData(arg0: GLuint, arg1: GLuint, arg2: GLintptr, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glCopyNamedBufferSubData.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_TEXTURE11 = 33995;
// pub const UINT_FAST8_MAX = UINT8_MAX;
// pub inline fn glLineWidth(arg0: GLfloat) void {
//     return glad_glLineWidth.?(arg0);
// }
// pub const GL_COLOR = 6144;
// pub const GL_RGB10 = 32850;
// pub const GL_RGBA32UI = 36208;
// pub inline fn glPatchParameteri(arg0: GLenum, arg1: GLint) void {
//     return glad_glPatchParameteri.?(arg0, arg1);
// }
// pub inline fn glBindSampler(arg0: GLuint, arg1: GLuint) void {
//     return glad_glBindSampler.?(arg0, arg1);
// }
// pub const GL_ADD_SIGNED = 34164;
// pub const GL_RG_INTEGER = 33320;
// pub const GL_COLOR_CLEAR_VALUE = 3106;
// pub inline fn glVertexAttrib1fv(arg0: GLuint, arg1: [*c]const GLfloat) void {
//     return glad_glVertexAttrib1fv.?(arg0, arg1);
// }
// pub const GL_PIXEL_MAP_A_TO_A_SIZE = 3257;
// pub const GL_SAMPLER = 33510;
// pub const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 35958;
// pub inline fn glGetIntegerv(arg0: GLenum, arg1: [*c]GLint) void {
//     return glad_glGetIntegerv.?(arg0, arg1);
// }
// pub const GL_PATCH_DEFAULT_OUTER_LEVEL = 36468;
// pub const GL_ARRAY_SIZE = 37627;
// pub inline fn glCompressedTextureSubImage1D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLenum, arg5: GLsizei, arg6: ?*const c_void) void {
//     return glad_glCompressedTextureSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub inline fn glWindowPos3sv(arg0: [*c]const GLshort) void {
//     return glad_glWindowPos3sv.?(arg0);
// }
// pub const GL_INT_IMAGE_CUBE_MAP_ARRAY = 36959;
// pub inline fn glMapBuffer(arg0: GLenum, arg1: GLenum) ?*c_void {
//     return glad_glMapBuffer.?(arg0, arg1);
// }
// pub const GL_CCW = 2305;
// pub const GL_BUFFER_USAGE = 34661;
// pub const GL_MAP_WRITE_BIT = 2;
// pub const GL_GEOMETRY_VERTICES_OUT = 35094;
// pub const GL_COLOR_ATTACHMENT18 = 36082;
// pub inline fn glFramebufferRenderbuffer(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLuint) void {
//     return glad_glFramebufferRenderbuffer.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glDeleteBuffers(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteBuffers.?(arg0, arg1);
// }
// pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
// pub inline fn glGetDoublei_v(arg0: GLenum, arg1: GLuint, arg2: [*c]GLdouble) void {
//     return glad_glGetDoublei_v.?(arg0, arg1, arg2);
// }
// pub inline fn glGetQueryBufferObjectui64v(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: GLintptr) void {
//     return glad_glGetQueryBufferObjectui64v.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glIndexf(arg0: GLfloat) void {
//     return glad_glIndexf.?(arg0);
// }
// pub const __UINT_LEAST32_FMTo__ = "o";
// pub const __FLT_MIN_EXP__ = -125;
// pub const __UINT_LEAST64_FMTu__ = "llu";
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 37101;
// pub const GL_BUFFER_IMMUTABLE_STORAGE = 33311;
// pub const GL_UNIFORM_MATRIX_STRIDE = 35389;
// pub const GL_LIGHTING = 2896;
// pub const GL_ACTIVE_SUBROUTINE_UNIFORMS = 36326;
// pub const GL_MAX_COLOR_ATTACHMENTS = 36063;
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 37577;
// pub const __INT_FAST64_FMTd__ = "lld";
// pub const INT_LEAST8_MIN = INT8_MIN;
// pub inline fn glGetCompressedTexImage(arg0: GLenum, arg1: GLint, arg2: ?*c_void) void {
//     return glad_glGetCompressedTexImage.?(arg0, arg1, arg2);
// }
// pub const GL_PIXEL_PACK_BUFFER = 35051;
// pub const GL_MAX_SUBROUTINES = 36327;
// pub const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447;
// pub inline fn glCopyTexSubImage3D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLint, arg7: GLsizei, arg8: GLsizei) void {
//     return glad_glCopyTexSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_CAVEAT_SUPPORT = 33464;
// pub inline fn glRenderbufferStorage(arg0: GLenum, arg1: GLenum, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glRenderbufferStorage.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MAX_VIEWPORTS = 33371;
// pub const GL_POSITION = 4611;
// pub const GL_DEPTH_FUNC = 2932;
// pub const __UINT_LEAST8_FMTx__ = "hhx";
// pub const GL_VERTEX_ARRAY_SIZE = 32890;
// pub const __SSE4_2__ = 1;
// pub const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 33357;
// pub const _Notref_ = _Notref_impl_;
// pub const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 37081;
// pub inline fn glVertexArrayAttribFormat(arg0: GLuint, arg1: GLuint, arg2: GLint, arg3: GLenum, arg4: GLboolean, arg5: GLuint) void {
//     return glad_glVertexArrayAttribFormat.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glProgramUniform2fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLfloat) void {
//     return glad_glProgramUniform2fv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glPixelTransferi(arg0: GLenum, arg1: GLint) void {
//     return glad_glPixelTransferi.?(arg0, arg1);
// }
// pub inline fn glPointParameteriv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glPointParameteriv.?(arg0, arg1);
// }
// pub const GL_SAMPLER_3D = 35679;
// pub inline fn glBindBufferBase(arg0: GLenum, arg1: GLuint, arg2: GLuint) void {
//     return glad_glBindBufferBase.?(arg0, arg1, arg2);
// }
// pub const __DBL_DENORM_MIN__ = 0.000000;
// pub const GL_SHADER_STORAGE_BARRIER_BIT = 8192;
// pub const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 33380;
// pub inline fn glUniformMatrix3x2dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix3x2dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glDeleteSync(arg0: GLsync) void {
//     return glad_glDeleteSync.?(arg0);
// }
// pub inline fn glVertex4s(arg0: GLshort, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glVertex4s.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_GREEN_SIZE = 32861;
// pub const GL_SAMPLER_2D_RECT = 35683;
// pub const _CRT_INSECURE_DEPRECATE_MEMORY = _Replacement;
// pub inline fn glProgramUniform3i(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint) void {
//     return glad_glProgramUniform3i.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glMultiTexCoord3f(arg0: GLenum, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glMultiTexCoord3f.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glUniform3dv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLdouble) void {
//     return glad_glUniform3dv.?(arg0, arg1, arg2);
// }
// pub const __LDBL_HAS_DENORM__ = 1;
// pub const GL_INVALID_FRAMEBUFFER_OPERATION = 1286;
// pub const GL_CONSTANT_COLOR = 32769;
// pub const GL_MULT = 259;
// pub const GL_COMPILE_AND_EXECUTE = 4865;
// pub inline fn glMultiTexCoord4dv(arg0: GLenum, arg1: [*c]const GLdouble) void {
//     return glad_glMultiTexCoord4dv.?(arg0, arg1);
// }
// pub const GL_TRANSPOSE_COLOR_MATRIX = 34022;
// pub inline fn glColorP3uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glColorP3uiv.?(arg0, arg1);
// }
// pub const GL_RGBA8_SNORM = 36759;
// pub const GL_BLEND_SRC = 3041;
// pub const __SIZE_FMTu__ = "llu";
// pub const GL_DRAW_INDIRECT_BUFFER = 36671;
// pub inline fn glGetQueryBufferObjecti64v(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: GLintptr) void {
//     return glad_glGetQueryBufferObjecti64v.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glUniform2i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glUniform2i.?(arg0, arg1, arg2);
// }
// pub inline fn glMultiTexCoord1fv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glMultiTexCoord1fv.?(arg0, arg1);
// }
// pub inline fn glClearNamedBufferSubData(arg0: GLuint, arg1: GLenum, arg2: GLintptr, arg3: GLsizeiptr, arg4: GLenum, arg5: GLenum, arg6: ?*const c_void) void {
//     return glad_glClearNamedBufferSubData.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const __PCLMUL__ = 1;
// pub const GL_FLOAT_VEC4 = 35666;
// pub const GL_SHADER_STORAGE_BLOCK = 37606;
// pub const GL_CURRENT_QUERY = 34917;
// pub const GL_RENDERBUFFER_INTERNAL_FORMAT = 36164;
// pub inline fn glGetActiveUniformName(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLchar) void {
//     return glad_glGetActiveUniformName.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_BLUE_INTEGER = 36246;
// pub const GL_COMPARE_R_TO_TEXTURE = 34894;
// pub inline fn glDisable(arg0: GLenum) void {
//     return glad_glDisable.?(arg0);
// }
// pub inline fn glGetUniformIndices(arg0: GLuint, arg1: GLsizei, arg2: [*c]const ([*c]const GLchar), arg3: [*c]GLuint) void {
//     return glad_glGetUniformIndices.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_RENDERBUFFER_HEIGHT = 36163;
// pub const GL_CULL_FACE = 2884;
// pub inline fn glVertexAttrib3fv(arg0: GLuint, arg1: [*c]const GLfloat) void {
//     return glad_glVertexAttrib3fv.?(arg0, arg1);
// }
// pub const GL_DRAW_BUFFER7 = 34860;
// pub const GL_LIGHT3 = 16387;
// pub inline fn glValidateProgram(arg0: GLuint) void {
//     return glad_glValidateProgram.?(arg0);
// }
// pub inline fn glDeleteTextures(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteTextures.?(arg0, arg1);
// }
// pub inline fn glGetNamedBufferPointerv(arg0: GLuint, arg1: GLenum, arg2: [*c](?*c_void)) void {
//     return glad_glGetNamedBufferPointerv.?(arg0, arg1, arg2);
// }
// pub const GL_4D_COLOR_TEXTURE = 1540;
// pub const __x86_64__ = 1;
// pub const GL_TESS_EVALUATION_SUBROUTINE = 37610;
// pub inline fn glQueryCounter(arg0: GLuint, arg1: GLenum) void {
//     return glad_glQueryCounter.?(arg0, arg1);
// }
// pub const GL_GEOMETRY_SHADER_INVOCATIONS = 34943;
// pub inline fn glBufferSubData(arg0: GLenum, arg1: GLintptr, arg2: GLsizeiptr, arg3: ?*const c_void) void {
//     return glad_glBufferSubData.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_NORMAL_ARRAY_STRIDE = 32895;
// pub inline fn glGetTexEnviv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTexEnviv.?(arg0, arg1, arg2);
// }
// pub const GL_VERSION_3_2 = 1;
// pub const GL_MODELVIEW_MATRIX = 2982;
// pub inline fn glColor4b(arg0: GLbyte, arg1: GLbyte, arg2: GLbyte, arg3: GLbyte) void {
//     return glad_glColor4b.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glMapGrid1f(arg0: GLint, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glMapGrid1f.?(arg0, arg1, arg2);
// }
// pub inline fn glGenVertexArrays(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenVertexArrays.?(arg0, arg1);
// }
// pub inline fn glShaderBinary(arg0: GLsizei, arg1: [*c]const GLuint, arg2: GLenum, arg3: ?*const c_void, arg4: GLsizei) void {
//     return glad_glShaderBinary.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_IMPLEMENTATION_COLOR_READ_TYPE = 35738;
// pub const __ORDER_BIG_ENDIAN__ = 4321;
// pub const __LDBL_MIN_10_EXP__ = -307;
// pub const GL_DRAW_PIXEL_TOKEN = 1797;
// pub const GL_FOG_COORDINATE_SOURCE = 33872;
// pub const GL_DOUBLE_VEC3 = 36861;
// pub inline fn glBindSamplers(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glBindSamplers.?(arg0, arg1, arg2);
// }
// pub const GL_OR = 5383;
// pub const GL_INTENSITY12 = 32844;
// pub const WCHAR_MAX = 65535;
// pub inline fn glLightModelf(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glLightModelf.?(arg0, arg1);
// }
// pub const GL_DISPLAY_LIST = 33511;
// pub const GL_RGBA32F = 34836;
// pub inline fn glTexCoord3iv(arg0: [*c]const GLint) void {
//     return glad_glTexCoord3iv.?(arg0);
// }
// pub const __SIZEOF_INT128__ = 16;
// pub inline fn glWaitSync(arg0: GLsync, arg1: GLbitfield, arg2: GLuint64) void {
//     return glad_glWaitSync.?(arg0, arg1, arg2);
// }
// pub inline fn glDisableVertexAttribArray(arg0: GLuint) void {
//     return glad_glDisableVertexAttribArray.?(arg0);
// }
// pub const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 36961;
// pub inline fn glTexGend(arg0: GLenum, arg1: GLenum, arg2: GLdouble) void {
//     return glad_glTexGend.?(arg0, arg1, arg2);
// }
// pub inline fn glBufferStorage(arg0: GLenum, arg1: GLsizeiptr, arg2: ?*const c_void, arg3: GLbitfield) void {
//     return glad_glBufferStorage.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073;
// pub const GL_ARRAY_BUFFER = 34962;
// pub const GL_EYE_LINEAR = 9216;
// pub const GL_MAX_ATTRIB_STACK_DEPTH = 3381;
// pub const GL_RED_BIAS = 3349;
// pub const GL_TEXTURE21 = 34005;
// pub inline fn glVertexAttribI4sv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttribI4sv.?(arg0, arg1);
// }
// pub inline fn glGetTexParameterIiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetTexParameterIiv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE10 = 33994;
// pub const __clang__ = 1;
// pub inline fn glClearTexSubImage(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLenum, arg10: ?*const c_void) void {
//     return glad_glClearTexSubImage.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
// }
// pub const GL_SECONDARY_COLOR_ARRAY_TYPE = 33883;
// pub inline fn glProgramUniformMatrix2fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix2fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_TRANSFORM_FEEDBACK_BUFFERS = 36464;
// pub const GL_IMAGE_PIXEL_FORMAT = 33449;
// pub const __LDBL_DIG__ = 15;
// pub const GL_UNSIGNED_INT_SAMPLER_2D_RECT = 36309;
// pub inline fn glUniformMatrix4x3fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix4x3fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FUNC_REVERSE_SUBTRACT = 32779;
// pub const GL_TEXTURE_SWIZZLE_RGBA = 36422;
// pub const GL_SOURCE1_RGB = 34177;
// pub inline fn glPatchParameterfv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glPatchParameterfv.?(arg0, arg1);
// }
// pub inline fn glColor4ub(arg0: GLubyte, arg1: GLubyte, arg2: GLubyte, arg3: GLubyte) void {
//     return glad_glColor4ub.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetVertexArrayiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetVertexArrayiv.?(arg0, arg1, arg2);
// }
// pub inline fn glMultiDrawElements(arg0: GLenum, arg1: [*c]const GLsizei, arg2: GLenum, arg3: [*c]const (?*const c_void), arg4: GLsizei) void {
//     return glad_glMultiDrawElements.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_DEBUG_TYPE_ERROR = 33356;
// pub const GL_RG16F = 33327;
// pub const UINT_FAST64_MAX = UINT64_MAX;
// pub inline fn glEvalCoord1f(arg0: GLfloat) void {
//     return glad_glEvalCoord1f.?(arg0);
// }
// pub const GL_IMAGE_CLASS_2_X_32 = 33466;
// pub const GL_PIXEL_BUFFER_BARRIER_BIT = 128;
// pub const GL_VERTEX_ATTRIB_ARRAY_POINTER = 34373;
// pub const GL_BUFFER_ACCESS_FLAGS = 37151;
// pub inline fn glUniformMatrix2x4dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix2x4dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glCopyTexSubImage1D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei) void {
//     return glad_glCopyTexSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_VIEW_CLASS_48_BITS = 33479;
// pub const GL_PROJECTION_STACK_DEPTH = 2980;
// pub inline fn glCheckFramebufferStatus(arg0: GLenum) GLenum {
//     return glad_glCheckFramebufferStatus.?(arg0);
// }
// pub const __FLT_HAS_DENORM__ = 1;
// pub inline fn glVertexAttribI4uiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttribI4uiv.?(arg0, arg1);
// }
// pub const GL_NAND = 5390;
// pub const GL_COMPARE_REF_TO_TEXTURE = 34894;
// pub const GL_SLUMINANCE8 = 35911;
// pub const GL_GENERATE_MIPMAP = 33169;
// pub const GL_RGB16F = 34843;
// pub inline fn glMemoryBarrierByRegion(arg0: GLbitfield) void {
//     return glad_glMemoryBarrierByRegion.?(arg0);
// }
// pub const __FINITE_MATH_ONLY__ = 0;
// pub inline fn glMultiTexCoord3fv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glMultiTexCoord3fv.?(arg0, arg1);
// }
// pub inline fn glPointParameteri(arg0: GLenum, arg1: GLint) void {
//     return glad_glPointParameteri.?(arg0, arg1);
// }
// pub const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 37594;
// pub inline fn glScissor(arg0: GLint, arg1: GLint, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glScissor.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MIN = 32775;
// pub inline fn glTexCoord3sv(arg0: [*c]const GLshort) void {
//     return glad_glTexCoord3sv.?(arg0);
// }
// pub const GL_FRAGMENT_SHADER_BIT = 2;
// pub const GL_DEPTH_COMPONENT16 = 33189;
// pub const __INT_LEAST32_FMTi__ = "i";
// pub const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 37583;
// pub const __function_ignore_lock_checking = lock;
// pub const GL_DEBUG_SOURCE_API = 33350;
// pub const __LDBL_EPSILON__ = 0.000000;
// pub const __STDC_UTF_32__ = 1;
// pub inline fn glTextureParameteri(arg0: GLuint, arg1: GLenum, arg2: GLint) void {
//     return glad_glTextureParameteri.?(arg0, arg1, arg2);
// }
// pub const GL_DEBUG_CALLBACK_FUNCTION = 33348;
// pub inline fn glSecondaryColor3ub(arg0: GLubyte, arg1: GLubyte, arg2: GLubyte) void {
//     return glad_glSecondaryColor3ub.?(arg0, arg1, arg2);
// }
// pub inline fn glGetTextureLevelParameterfv(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: [*c]GLfloat) void {
//     return glad_glGetTextureLevelParameterfv.?(arg0, arg1, arg2, arg3);
// }
// pub const __SEG_FS = 1;
// pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
// pub const __SIZEOF_DOUBLE__ = 8;
// pub const GL_LEFT = 1030;
// pub const GL_IMAGE_BUFFER = 36945;
// pub const GL_REPLACE = 7681;
// pub const GL_LOSE_CONTEXT_ON_RESET = 33362;
// pub const GL_BLEND_SRC_RGB = 32969;
// pub const GL_LINE_LOOP = 2;
// pub inline fn glBindFragDataLocationIndexed(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: [*c]const GLchar) void {
//     return glad_glBindFragDataLocationIndexed.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTexCoordP3uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glTexCoordP3uiv.?(arg0, arg1);
// }
// pub inline fn glUseProgramStages(arg0: GLuint, arg1: GLbitfield, arg2: GLuint) void {
//     return glad_glUseProgramStages.?(arg0, arg1, arg2);
// }
// pub const GL_DEPTH32F_STENCIL8 = 36013;
// pub const __SIZE_FMTX__ = "llX";
// pub const GL_DEPTH_CLEAR_VALUE = 2931;
// pub const __inner_data_entrypoint = category;
// pub const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 36481;
// pub const GL_TEXTURE_IMMUTABLE_FORMAT = 37167;
// pub inline fn glGetPolygonStipple(arg0: [*c]GLubyte) void {
//     return glad_glGetPolygonStipple.?(arg0);
// }
// pub inline fn glProgramUniform3dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLdouble) void {
//     return glad_glProgramUniform3dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_FEEDBACK_BUFFER_TYPE = 3570;
// pub inline fn glGetProgramResourceLocationIndex(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLchar) GLint {
//     return glad_glGetProgramResourceLocationIndex.?(arg0, arg1, arg2);
// }
// pub const GL_ALL_ATTRIB_BITS = 4294967295;
// pub const GL_GREEN_BIAS = 3353;
// pub const GL_POINT_SPRITE_COORD_ORIGIN = 36000;
// pub inline fn glLighti(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glLighti.?(arg0, arg1, arg2);
// }
// pub const GL_GREEN = 6404;
// pub const GL_CLAMP_TO_EDGE = 33071;
// pub inline fn glTexCoordP1uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glTexCoordP1uiv.?(arg0, arg1);
// }
// pub inline fn glGetNamedBufferParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetNamedBufferParameteriv.?(arg0, arg1, arg2);
// }
// pub inline fn glGetVertexArrayIndexed64iv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: [*c]GLint64) void {
//     return glad_glGetVertexArrayIndexed64iv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_VERSION_4_6 = 1;
// pub const _Readable_bytes_impl_ = size;
// pub inline fn glTexCoord4dv(arg0: [*c]const GLdouble) void {
//     return glad_glTexCoord4dv.?(arg0);
// }
// pub inline fn glVertexAttribI4i(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint) void {
//     return glad_glVertexAttribI4i.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_DRAW_BUFFERS = 34852;
// pub const GL_CONTEXT_FLAG_DEBUG_BIT = 2;
// pub const GL_RG32UI = 33340;
// pub const GL_COMPATIBLE_SUBROUTINES = 36427;
// pub inline fn glIsTexture(arg0: GLuint) GLboolean {
//     return glad_glIsTexture.?(arg0);
// }
// pub const GL_VERTEX_SHADER = 35633;
// pub const GL_FRAMEBUFFER_RENDERABLE = 33417;
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 37100;
// pub const __write_guarded_by = lock;
// pub const GL_TEXTURE_RED_TYPE = 35856;
// pub const GL_TOP_LEVEL_ARRAY_STRIDE = 37645;
// pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
// pub inline fn glMultiTexCoord1i(arg0: GLenum, arg1: GLint) void {
//     return glad_glMultiTexCoord1i.?(arg0, arg1);
// }
// pub inline fn glTexCoord2dv(arg0: [*c]const GLdouble) void {
//     return glad_glTexCoord2dv.?(arg0);
// }
// pub inline fn glVertexAttribIPointer(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLsizei, arg4: ?*const c_void) void {
//     return glad_glVertexAttribIPointer.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGetTextureSubImage(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLenum, arg10: GLsizei, arg11: ?*c_void) void {
//     return glad_glGetTextureSubImage.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);
// }
// pub inline fn glGetnTexImage(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLenum, arg4: GLsizei, arg5: ?*c_void) void {
//     return glad_glGetnTexImage.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glSamplerParameterfv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glSamplerParameterfv.?(arg0, arg1, arg2);
// }
// pub const GL_COMPRESSED_SLUMINANCE = 35914;
// pub const _Analysis_assume_nullterminated_ = x;
// pub const GL_PIXEL_MAP_I_TO_I_SIZE = 3248;
// pub inline fn glTransformFeedbackBufferBase(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glTransformFeedbackBufferBase.?(arg0, arg1, arg2);
// }
// pub const GL_RGB_INTEGER = 36248;
// pub const GL_SCISSOR_TEST = 3089;
// pub const __SCHAR_MAX__ = 127;
// pub const GL_LOCATION_COMPONENT = 37706;
// pub inline fn glDeleteProgramPipelines(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteProgramPipelines.?(arg0, arg1);
// }
// pub const GL_ATOMIC_COUNTER_BARRIER_BIT = 4096;
// pub const GL_AND_REVERSE = 5378;
// pub const _Analysis_suppress_lock_checking_ = lock;
// pub const GL_RASTERIZER_DISCARD = 35977;
// pub inline fn glGetnPixelMapusv(arg0: GLenum, arg1: GLsizei, arg2: [*c]GLushort) void {
//     return glad_glGetnPixelMapusv.?(arg0, arg1, arg2);
// }
// pub const GL_MAP2_GRID_DOMAIN = 3538;
// pub const GL_CLIENT_PIXEL_STORE_BIT = 1;
// pub const GL_SRGB8 = 35905;
// pub const __LDBL_MANT_DIG__ = 53;
// pub inline fn glTextureParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTextureParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_COMPRESSED_RG = 33318;
// pub const GL_LUMINANCE6_ALPHA2 = 32836;
// pub const GL_DRAW_BUFFER0 = 34853;
// pub const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657;
// pub const GL_LIGHT2 = 16386;
// pub inline fn glMultiTexCoord2fv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glMultiTexCoord2fv.?(arg0, arg1);
// }
// pub const GL_VERTICES_SUBMITTED = 33518;
// pub inline fn glGenBuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenBuffers.?(arg0, arg1);
// }
// pub const GL_RGBA_MODE = 3121;
// pub const GL_PROGRAM_PIPELINE_BINDING = 33370;
// pub const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 33458;
// pub const GL_RENDERBUFFER_BLUE_SIZE = 36178;
// pub const GL_IMAGE_CLASS_4_X_8 = 33471;
// pub const __UINT64_FMTX__ = "llX";
// pub inline fn glGetVertexAttribIuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLuint) void {
//     return glad_glGetVertexAttribIuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glRectiv(arg0: [*c]const GLint, arg1: [*c]const GLint) void {
//     return glad_glRectiv.?(arg0, arg1);
// }
// pub const KHRONOS_APIENTRY = __stdcall;
// pub const GL_MAX_COMBINED_ATOMIC_COUNTERS = 37591;
// pub const GL_UNIFORM_OFFSET = 35387;
// pub inline fn glMultiTexCoord3s(arg0: GLenum, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glMultiTexCoord3s.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glUniformMatrix3x4fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix3x4fv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glLoadMatrixf(arg0: [*c]const GLfloat) void {
//     return glad_glLoadMatrixf.?(arg0);
// }
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 36387;
// pub const __inexpressible_writableTo = size;
// pub const GL_DEPTH_STENCIL_ATTACHMENT = 33306;
// pub const GL_SAMPLER_2D_RECT_SHADOW = 35684;
// pub inline fn glClientWaitSync(arg0: GLsync, arg1: GLbitfield, arg2: GLuint64) GLenum {
//     return glad_glClientWaitSync.?(arg0, arg1, arg2);
// }
// pub inline fn glArrayElement(arg0: GLint) void {
//     return glad_glArrayElement.?(arg0);
// }
// pub const GL_VERSION_3_3 = 1;
// pub const __SSE__ = 1;
// pub const GL_UPPER_LEFT = 36002;
// pub inline fn glSampleMaski(arg0: GLuint, arg1: GLbitfield) void {
//     return glad_glSampleMaski.?(arg0, arg1);
// }
// pub inline fn glTexStorage2DMultisample(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLboolean) void {
//     return glad_glTexStorage2DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const _MSC_FULL_VER = 192428314;
// pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub inline fn glIsProgramPipeline(arg0: GLuint) GLboolean {
//     return glad_glIsProgramPipeline.?(arg0);
// }
// pub inline fn glClearBufferfv(arg0: GLenum, arg1: GLint, arg2: [*c]const GLfloat) void {
//     return glad_glClearBufferfv.?(arg0, arg1, arg2);
// }
// pub inline fn glUniformMatrix2x3fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix2x3fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DOUBLE_VEC2 = 36860;
// pub const __UINT_LEAST8_FMTu__ = "hhu";
// pub const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975;
// pub const GL_INT_SAMPLER_2D_MULTISAMPLE = 37129;
// pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 37123;
// pub inline fn glInvalidateSubFramebuffer(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLenum, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei) void {
//     return glad_glInvalidateSubFramebuffer.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE = 37063;
// pub const GL_LUMINANCE12 = 32833;
// pub const __SIZEOF_WCHAR_T__ = 2;
// pub inline fn glAreTexturesResident(arg0: GLsizei, arg1: [*c]const GLuint, arg2: [*c]GLboolean) GLboolean {
//     return glad_glAreTexturesResident.?(arg0, arg1, arg2);
// }
// pub inline fn glProgramUniformMatrix4fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix4fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __LDBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
// pub const GL_IMAGE_BINDING_LAYERED = 36668;
// pub const GL_STENCIL_FAIL = 2964;
// pub const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 37068;
// pub const GL_RGB5_A1 = 32855;
// pub inline fn glGetAttribLocation(arg0: GLuint, arg1: [*c]const GLchar) GLint {
//     return glad_glGetAttribLocation.?(arg0, arg1);
// }
// pub inline fn glTexStorage3D(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei) void {
//     return glad_glTexStorage3D.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glUniformMatrix2dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix2dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE22 = 34006;
// pub inline fn glPixelStorei(arg0: GLenum, arg1: GLint) void {
//     return glad_glPixelStorei.?(arg0, arg1);
// }
// pub inline fn glCopyPixels(arg0: GLint, arg1: GLint, arg2: GLsizei, arg3: GLsizei, arg4: GLenum) void {
//     return glad_glCopyPixels.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_STENCIL_PASS_DEPTH_FAIL = 2965;
// pub inline fn glProgramUniformMatrix4x2fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLfloat) void {
//     return glad_glProgramUniformMatrix4x2fv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_TEXTURE13 = 33997;
// pub const __UINTPTR_FMTX__ = "llX";
// pub const GL_RG8_SNORM = 36757;
// pub const GL_TEXTURE_1D_ARRAY = 35864;
// pub const _CRT_PACKING = 8;
// pub const _Create_lock_level_ = level;
// pub const GL_RGB12 = 32851;
// pub const GL_POINT_SIZE_MIN = 33062;
// pub const GL_VIEW_COMPATIBILITY_CLASS = 33462;
// pub inline fn glGetInteger64i_v(arg0: GLenum, arg1: GLuint, arg2: [*c]GLint64) void {
//     return glad_glGetInteger64i_v.?(arg0, arg1, arg2);
// }
// pub const _Releases_nonreentrant_lock_ = lock;
// pub const GL_PATCH_DEFAULT_INNER_LEVEL = 36467;
// pub inline fn glDebugMessageControl(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: [*c]const GLuint, arg5: GLboolean) void {
//     return glad_glDebugMessageControl.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glIndexdv(arg0: [*c]const GLdouble) void {
//     return glad_glIndexdv.?(arg0);
// }
// pub const GL_TEXTURE_SWIZZLE_R = 36418;
// pub inline fn glTexCoord4i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glTexCoord4i.?(arg0, arg1, arg2, arg3);
// }
// pub const __guarded_by = lock;
// pub const GL_MAX_ELEMENTS_VERTICES = 33000;
// pub const GL_TEXTURE_COMPARE_FUNC = 34893;
// pub const __BMI__ = 1;
// pub inline fn glVertexAttrib3d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glVertexAttrib3d.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_CURRENT_SECONDARY_COLOR = 33881;
// pub const GL_CLIENT_ALL_ATTRIB_BITS = 4294967295;
// pub inline fn glIndexd(arg0: GLdouble) void {
//     return glad_glIndexd.?(arg0);
// }
// pub const GL_UNPACK_SKIP_ROWS = 3315;
// pub const GL_FLAT = 7424;
// pub const GL_MAX_GEOMETRY_OUTPUT_VERTICES = 36320;
// pub const GL_DEPTH_WRITEMASK = 2930;
// pub const GL_SYNC_FLAGS = 37141;
// pub const INT_FAST8_MIN = INT8_MIN;
// pub inline fn glTexCoord2s(arg0: GLshort, arg1: GLshort) void {
//     return glad_glTexCoord2s.?(arg0, arg1);
// }
// pub inline fn glPixelMapfv(arg0: GLenum, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glPixelMapfv.?(arg0, arg1, arg2);
// }
// pub inline fn glTextureStorage2D(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glTextureStorage2D.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_PERSPECTIVE_CORRECTION_HINT = 3152;
// pub inline fn glGetActiveAtomicCounterBufferiv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetActiveAtomicCounterBufferiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glUnmapNamedBuffer(arg0: GLuint) GLboolean {
//     return glad_glUnmapNamedBuffer.?(arg0);
// }
// pub const GL_MAX_DEBUG_MESSAGE_LENGTH = 37187;
// pub inline fn glFenceSync(arg0: GLenum, arg1: GLbitfield) GLsync {
//     return glad_glFenceSync.?(arg0, arg1);
// }
// pub const GL_NO_ERROR = 0;
// pub const GL_STENCIL_BACK_PASS_DEPTH_FAIL = 34818;
// pub const __FLT_MIN__ = 0.000000;
// pub const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 36482;
// pub const __readableTo = extent;
// pub const GL_POLYGON_BIT = 8;
// pub const GL_RG16UI = 33338;
// pub const __useHeader = _Use_decl_anno_impl_;
// pub inline fn glGenTextures(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenTextures.?(arg0, arg1);
// }
// pub const __releases_shared_lock = lock;
// pub const GL_ALPHA_TEST_FUNC = 3009;
// pub const GL_HIGH_INT = 36341;
// pub const __UINT_LEAST32_FMTX__ = "X";
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 34032;
// pub const GL_EQUAL = 514;
// pub inline fn glEndConditionalRender() void {
//     return glad_glEndConditionalRender.?();
// }
// pub inline fn glProgramUniformMatrix3dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix3dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __UINT_FAST16_FMTo__ = "ho";
// pub const GL_CLAMP_VERTEX_COLOR = 35098;
// pub const _Acquires_lock_ = lock;
// pub inline fn glGetLightiv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetLightiv.?(arg0, arg1, arg2);
// }
// pub inline fn glMultiTexCoord1dv(arg0: GLenum, arg1: [*c]const GLdouble) void {
//     return glad_glMultiTexCoord1dv.?(arg0, arg1);
// }
// pub const INT_LEAST64_MIN = INT64_MIN;
// pub const GL_CLIP_PLANE0 = 12288;
// pub inline fn glDeleteQueries(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteQueries.?(arg0, arg1);
// }
// pub const GL_LIST_BASE = 2866;
// pub const __SIZE_FMTx__ = "llx";
// pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 37587;
// pub const GL_FILL = 6914;
// pub inline fn glMultiTexCoord3d(arg0: GLenum, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glMultiTexCoord3d.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glDrawRangeElementsBaseVertex(arg0: GLenum, arg1: GLuint, arg2: GLuint, arg3: GLsizei, arg4: GLenum, arg5: ?*const c_void, arg6: GLint) void {
//     return glad_glDrawRangeElementsBaseVertex.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const INT_FAST32_MIN = INT32_MIN;
// pub const GL_VERTEX_SUBROUTINE_UNIFORM = 37614;
// pub const GL_POINT_TOKEN = 1793;
// pub const GL_VERSION_4_5 = 1;
// pub inline fn glSamplerParameteri(arg0: GLuint, arg1: GLenum, arg2: GLint) void {
//     return glad_glSamplerParameteri.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE8 = 33992;
// pub const GL_COLOR_ATTACHMENT2 = 36066;
// pub const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395;
// pub inline fn glColor3s(arg0: GLshort, arg1: GLshort, arg2: GLshort) void {
//     return glad_glColor3s.?(arg0, arg1, arg2);
// }
// pub const GL_VIEWPORT_SUBPIXEL_BITS = 33372;
// pub inline fn glFramebufferTextureLayer(arg0: GLenum, arg1: GLenum, arg2: GLuint, arg3: GLint, arg4: GLint) void {
//     return glad_glFramebufferTextureLayer.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_DYNAMIC_COPY = 35050;
// pub inline fn glResumeTransformFeedback() void {
//     return glad_glResumeTransformFeedback.?();
// }
// pub const GL_POLYGON_OFFSET_POINT = 10753;
// pub const _Guarded_by_ = lock;
// pub const __llvm__ = 1;
// pub inline fn glRasterPos2iv(arg0: [*c]const GLint) void {
//     return glad_glRasterPos2iv.?(arg0);
// }
// pub inline fn glDrawElementsInstancedBaseVertex(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void, arg4: GLsizei, arg5: GLint) void {
//     return glad_glDrawElementsInstancedBaseVertex.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_DEBUG_SEVERITY_NOTIFICATION = 33387;
// pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub inline fn glCullFace(arg0: GLenum) void {
//     return glad_glCullFace.?(arg0);
// }
// pub const GL_SYNC_CONDITION = 37139;
// pub const GL_MAX_ELEMENTS_INDICES = 33001;
// pub const GL_EDGE_FLAG_ARRAY_STRIDE = 32908;
// pub inline fn glEvalPoint1(arg0: GLint) void {
//     return glad_glEvalPoint1.?(arg0);
// }
// pub inline fn glVertexAttrib1dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttrib1dv.?(arg0, arg1);
// }
// pub const GL_FRAGMENT_SHADER_INVOCATIONS = 33524;
// pub inline fn glScissorArrayv(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLint) void {
//     return glad_glScissorArrayv.?(arg0, arg1, arg2);
// }
// pub const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY = 36875;
// pub const GL_AUTO_NORMAL = 3456;
// pub inline fn glGetQueryBufferObjectiv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: GLintptr) void {
//     return glad_glGetQueryBufferObjectiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_STENCIL_ATTACHMENT = 36128;
// pub inline fn glGetTexLevelParameteriv(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetTexLevelParameteriv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glUniform4i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint) void {
//     return glad_glUniform4i.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_SPIR_V_BINARY = 38226;
// pub inline fn glVertexAttribP4uiv(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: [*c]const GLuint) void {
//     return glad_glVertexAttribP4uiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNSIGNED_SHORT_4_4_4_4_REV = 33637;
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 37576;
// pub inline fn glIndexubv(arg0: [*c]const GLubyte) void {
//     return glad_glIndexubv.?(arg0);
// }
// pub const GL_COMPRESSED_RGBA_BPTC_UNORM = 36492;
// pub const GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 36493;
// pub const __INT32_MAX__ = 2147483647;
// pub const GL_DRAW_FRAMEBUFFER = 36009;
// pub const GL_VIEWPORT_BOUNDS_RANGE = 33373;
// pub const GL_INTERNALFORMAT_SHARED_SIZE = 33399;
// pub const GL_SMOOTH_POINT_SIZE_RANGE = 2834;
// pub const GL_ANY_SAMPLES_PASSED = 35887;
// pub inline fn glCopyTextureSubImage3D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLint, arg7: GLsizei, arg8: GLsizei) void {
//     return glad_glCopyTextureSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_BLEND_EQUATION_ALPHA = 34877;
// pub const GL_DRAW_BUFFER1 = 34854;
// pub inline fn glBeginQuery(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBeginQuery.?(arg0, arg1);
// }
// pub const GL_BUFFER_MAP_OFFSET = 37153;
// pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
// pub const GL_INT_SAMPLER_1D_ARRAY = 36302;
// pub const GL_COMPRESSED_ALPHA = 34025;
// pub const GL_TEXTURE_2D_MULTISAMPLE = 37120;
// pub const GL_FRONT_RIGHT = 1025;
// pub inline fn glVertexPointer(arg0: GLint, arg1: GLenum, arg2: GLsizei, arg3: ?*const c_void) void {
//     return glad_glVertexPointer.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_INNOCENT_CONTEXT_RESET = 33364;
// pub inline fn glGetPixelMapusv(arg0: GLenum, arg1: [*c]GLushort) void {
//     return glad_glGetPixelMapusv.?(arg0, arg1);
// }
// pub const GL_LIST_MODE = 2864;
// pub const GL_UNSIGNED_INT_SAMPLER_3D = 36307;
// pub const GL_MAX_IMAGE_SAMPLES = 36973;
// pub const GL_DEPTH_COMPONENT = 6402;
// pub const GL_BLEND_DST_ALPHA = 32970;
// pub const GL_IMAGE_CLASS_4_X_32 = 33465;
// pub const GL_RGB32I = 36227;
// pub inline fn glClearTexImage(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLenum, arg4: ?*const c_void) void {
//     return glad_glClearTexImage.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glMapGrid1d(arg0: GLint, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glMapGrid1d.?(arg0, arg1, arg2);
// }
// pub const __INT_FAST8_MAX__ = 127;
// pub const GL_NEVER = 512;
// pub const GL_MAX_ELEMENT_INDEX = 36203;
// pub inline fn glNamedFramebufferReadBuffer(arg0: GLuint, arg1: GLenum) void {
//     return glad_glNamedFramebufferReadBuffer.?(arg0, arg1);
// }
// pub const GL_MAX_RECTANGLE_TEXTURE_SIZE = 34040;
// pub inline fn glClearBufferfi(arg0: GLenum, arg1: GLint, arg2: GLfloat, arg3: GLint) void {
//     return glad_glClearBufferfi.?(arg0, arg1, arg2, arg3);
// }
// pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_FRAMEBUFFER_UNDEFINED = 33305;
// pub const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET = 36444;
// pub const GL_TRANSFORM_FEEDBACK = 36386;
// pub inline fn glGetNamedBufferSubData(arg0: GLuint, arg1: GLintptr, arg2: GLsizeiptr, arg3: ?*c_void) void {
//     return glad_glGetNamedBufferSubData.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_ADD = 260;
// pub const GL_RG32I = 33339;
// pub const GL_IMAGE_CLASS_1_X_32 = 33467;
// pub inline fn glMultiTexCoord2sv(arg0: GLenum, arg1: [*c]const GLshort) void {
//     return glad_glMultiTexCoord2sv.?(arg0, arg1);
// }
// pub const __INTMAX_FMTi__ = "lli";
// pub const GL_STREAM_READ = 35041;
// pub const GL_T2F_N3F_V3F = 10795;
// pub const GL_PROGRAM_BINARY_RETRIEVABLE_HINT = 33367;
// pub inline fn glTexCoord1dv(arg0: [*c]const GLdouble) void {
//     return glad_glTexCoord1dv.?(arg0);
// }
// pub const GL_UNSIGNED_INT_IMAGE_CUBE = 36966;
// pub inline fn glColorMaterial(arg0: GLenum, arg1: GLenum) void {
//     return glad_glColorMaterial.?(arg0, arg1);
// }
// pub const GL_LINES_ADJACENCY = 10;
// pub inline fn glRasterPos3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glRasterPos3i.?(arg0, arg1, arg2);
// }
// pub const GL_TRANSFORM_FEEDBACK_PAUSED = 36387;
// pub inline fn glMemoryBarrier(arg0: GLbitfield) void {
//     return glad_glMemoryBarrier.?(arg0);
// }
// pub const GL_TEXTURE23 = 34007;
// pub inline fn glCompileShader(arg0: GLuint) void {
//     return glad_glCompileShader.?(arg0);
// }
// pub const GL_TEXTURE12 = 33996;
// pub const GL_UNIFORM_IS_ROW_MAJOR = 35390;
// pub const GL_SELECTION_BUFFER_POINTER = 3571;
// pub inline fn glTexImage1D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLint, arg5: GLenum, arg6: GLenum, arg7: ?*const c_void) void {
//     return glad_glTexImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976;
// pub const GL_SAMPLER_2D_MULTISAMPLE_ARRAY = 37131;
// pub inline fn glTexStorage1D(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei) void {
//     return glad_glTexStorage1D.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_INT_IMAGE_1D_ARRAY = 36957;
// pub const WINT_MAX = 65535;
// pub const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347;
// pub const GL_MAX_FRAMEBUFFER_HEIGHT = 37654;
// pub const GL_COLOR_INDEX = 6400;
// pub const GL_SOURCE2_RGB = 34178;
// pub inline fn glEvalCoord2fv(arg0: [*c]const GLfloat) void {
//     return glad_glEvalCoord2fv.?(arg0);
// }
// pub const GL_RGBA16UI = 36214;
// pub const __ATOMIC_SEQ_CST = 5;
// pub inline fn glMultiDrawElementsBaseVertex(arg0: GLenum, arg1: [*c]const GLsizei, arg2: GLenum, arg3: [*c]const (?*const c_void), arg4: GLsizei, arg5: [*c]const GLint) void {
//     return glad_glMultiDrawElementsBaseVertex.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 37589;
// pub inline fn glGetUniformuiv(arg0: GLuint, arg1: GLint, arg2: [*c]GLuint) void {
//     return glad_glGetUniformuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glInvalidateTexImage(arg0: GLuint, arg1: GLint) void {
//     return glad_glInvalidateTexImage.?(arg0, arg1);
// }
// pub const GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED = 33523;
// pub const __SIZEOF_LONG_LONG__ = 8;
// pub const _Use_decl_annotations_ = _Use_decl_anno_impl_;
// pub inline fn glInvalidateBufferData(arg0: GLuint) void {
//     return glad_glInvalidateBufferData.?(arg0);
// }
// pub const _Readable_elements_impl_ = size;
// pub const __UINT8_MAX__ = 255;
// pub const GL_COPY_INVERTED = 5388;
// pub inline fn glTexParameteri(arg0: GLenum, arg1: GLenum, arg2: GLint) void {
//     return glad_glTexParameteri.?(arg0, arg1, arg2);
// }
// pub const GL_IMAGE_2D_RECT = 36943;
// pub const __UINT16_FMTo__ = "ho";
// pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
// pub const _Notvalid_ = _Notvalid_impl_;
// pub const __elem_readableTo = size;
// pub const GL_BACK = 1029;
// pub const GL_NICEST = 4354;
// pub const GL_STENCIL_INDEX8 = 36168;
// pub inline fn glTexParameteriv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTexParameteriv.?(arg0, arg1, arg2);
// }
// pub const _Pre_ = _Pre_impl_;
// pub inline fn glGetProgramInterfaceiv(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetProgramInterfaceiv.?(arg0, arg1, arg2, arg3);
// }
// pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
// pub const GL_LUMINANCE4 = 32831;
// pub inline fn glClearBufferuiv(arg0: GLenum, arg1: GLint, arg2: [*c]const GLuint) void {
//     return glad_glClearBufferuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glEndTransformFeedback() void {
//     return glad_glEndTransformFeedback.?();
// }
// pub const GL_COPY_WRITE_BUFFER_BINDING = 36663;
// pub inline fn glUniform1iv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLint) void {
//     return glad_glUniform1iv.?(arg0, arg1, arg2);
// }
// pub const GL_TEXTURE_GREEN_TYPE = 35857;
// pub const GL_INTENSITY4 = 32842;
// pub const GL_IMPLEMENTATION_COLOR_READ_FORMAT = 35739;
// pub const __UINTPTR_FMTx__ = "llx";
// pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
// pub const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 36059;
// pub inline fn glDeleteLists(arg0: GLuint, arg1: GLsizei) void {
//     return glad_glDeleteLists.?(arg0, arg1);
// }
// pub inline fn glTexCoord2fv(arg0: [*c]const GLfloat) void {
//     return glad_glTexCoord2fv.?(arg0);
// }
// pub const GL_RENDERBUFFER_SAMPLES = 36011;
// pub const GL_TEXTURE_FETCH_BARRIER_BIT = 8;
// pub const _GrouP_impl_ = annos;
// pub const GL_TEXTURE_IMMUTABLE_LEVELS = 33503;
// pub inline fn glBlendFuncSeparatei(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: GLenum, arg4: GLenum) void {
//     return glad_glBlendFuncSeparatei.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGetSamplerParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetSamplerParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_COMPUTE_SHADER_INVOCATIONS = 33525;
// pub inline fn glFogi(arg0: GLenum, arg1: GLint) void {
//     return glad_glFogi.?(arg0, arg1);
// }
// pub inline fn glGetFragDataIndex(arg0: GLuint, arg1: [*c]const GLchar) GLint {
//     return glad_glGetFragDataIndex.?(arg0, arg1);
// }
// pub const __INT_LEAST8_MAX__ = 127;
// pub const GL_TEXTURE_COMPONENTS = 4099;
// pub const GL_CLIP_PLANE1 = 12289;
// pub const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 37572;
// pub inline fn glVertexAttrib4iv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttrib4iv.?(arg0, arg1);
// }
// pub inline fn glBindVertexArray(arg0: GLuint) void {
//     return glad_glBindVertexArray.?(arg0);
// }
// pub const GL_CLEAR = 5376;
// pub inline fn glVertexP4uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glVertexP4uiv.?(arg0, arg1);
// }
// pub const GL_VERSION_4_4 = 1;
// pub inline fn glVertexAttrib3s(arg0: GLuint, arg1: GLshort, arg2: GLshort, arg3: GLshort) void {
//     return glad_glVertexAttrib3s.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_SECONDARY_COLOR_ARRAY_POINTER = 33885;
// pub const __ADX__ = 1;
// pub const GL_TEXTURE9 = 33993;
// pub const GL_COLOR_ATTACHMENT3 = 36067;
// pub inline fn glUniform4iv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLint) void {
//     return glad_glUniform4iv.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttrib4Nbv(arg0: GLuint, arg1: [*c]const GLbyte) void {
//     return glad_glVertexAttrib4Nbv.?(arg0, arg1);
// }
// pub const __inexpressible_readableTo = size;
// pub inline fn glGetTexGendv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLdouble) void {
//     return glad_glGetTexGendv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 37584;
// pub inline fn glGetActiveSubroutineName(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLsizei, arg4: [*c]GLsizei, arg5: [*c]GLchar) void {
//     return glad_glGetActiveSubroutineName.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_UNSIGNED_INT_2_10_10_10_REV = 33640;
// pub inline fn glRasterPos3iv(arg0: [*c]const GLint) void {
//     return glad_glRasterPos3iv.?(arg0);
// }
// pub inline fn glFlushMappedNamedBufferRange(arg0: GLuint, arg1: GLintptr, arg2: GLsizeiptr) void {
//     return glad_glFlushMappedNamedBufferRange.?(arg0, arg1, arg2);
// }
// pub const __UINT_FAST32_FMTo__ = "o";
// pub const GL_FOG_COORD_ARRAY_STRIDE = 33877;
// pub const GL_UNSIGNED_BYTE = 5121;
// pub const GL_MAX_INTEGER_SAMPLES = 37136;
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 37579;
// pub const GL_MAX_VERTEX_UNIFORM_BLOCKS = 35371;
// pub inline fn glGetActiveUniformBlockiv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetActiveUniformBlockiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glBufferData(arg0: GLenum, arg1: GLsizeiptr, arg2: ?*const c_void, arg3: GLenum) void {
//     return glad_glBufferData.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glMultiDrawElementsIndirect(arg0: GLenum, arg1: GLenum, arg2: ?*const c_void, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glMultiDrawElementsIndirect.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __XSAVEOPT__ = 1;
// pub const GL_C4UB_V3F = 10787;
// pub const GL_VERTEX_PROGRAM_POINT_SIZE = 34370;
// pub const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 33296;
// pub const GL_PROXY_TEXTURE_2D_MULTISAMPLE = 37121;
// pub const GL_POLYGON_OFFSET_CLAMP = 36379;
// pub const GL_AUX3 = 1036;
// pub inline fn glTexCoord3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glTexCoord3i.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexAttribI4bv(arg0: GLuint, arg1: [*c]const GLbyte) void {
//     return glad_glVertexAttribI4bv.?(arg0, arg1);
// }
// pub const INT_LEAST32_MAX = INT32_MAX;
// pub inline fn glFogCoordfv(arg0: [*c]const GLfloat) void {
//     return glad_glFogCoordfv.?(arg0);
// }
// pub const __UINT_LEAST32_FMTx__ = "x";
// pub const GL_SAMPLER_2D_ARRAY = 36289;
// pub inline fn glHint(arg0: GLenum, arg1: GLenum) void {
//     return glad_glHint.?(arg0, arg1);
// }
// pub const GL_TEXTURE_INTERNAL_FORMAT = 4099;
// pub const GL_VIEWPORT = 2978;
// pub const GL_DRAW_BUFFER2 = 34855;
// pub inline fn glFramebufferTexture2D(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLuint, arg4: GLint) void {
//     return glad_glFramebufferTexture2D.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGetString(arg0: GLenum) [*c]const GLubyte {
//     return glad_glGetString.?(arg0);
// }
// pub inline fn glUniform4dv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLdouble) void {
//     return glad_glUniform4dv.?(arg0, arg1, arg2);
// }
// pub const GL_UNSIGNED_INT_IMAGE_2D = 36963;
// pub const GL_OPERAND0_RGB = 34192;
// pub inline fn glTextureBufferRange(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLintptr, arg4: GLsizeiptr) void {
//     return glad_glTextureBufferRange.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_INT_SAMPLER_BUFFER = 36304;
// pub const GL_SAMPLER_1D_ARRAY_SHADOW = 36291;
// pub const GL_DEPTH_BIAS = 3359;
// pub const GL_UNSIGNED_INT_VEC3 = 36295;
// pub inline fn glMultiTexCoord3dv(arg0: GLenum, arg1: [*c]const GLdouble) void {
//     return glad_glMultiTexCoord3dv.?(arg0, arg1);
// }
// pub inline fn glLoadMatrixd(arg0: [*c]const GLdouble) void {
//     return glad_glLoadMatrixd.?(arg0);
// }
// pub inline fn glStencilOp(arg0: GLenum, arg1: GLenum, arg2: GLenum) void {
//     return glad_glStencilOp.?(arg0, arg1, arg2);
// }
// pub const GL_INT_IMAGE_1D = 36951;
// pub const GL_VERTEX_ATTRIB_ARRAY_INTEGER = 35069;
// pub const __STDC_VERSION__ = @as(c_long, 201112);
// pub const __INT_LEAST8_FMTi__ = "hhi";
// pub const GL_PROXY_TEXTURE_CUBE_MAP = 34075;
// pub const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 36485;
// pub inline fn glTranslated(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glTranslated.?(arg0, arg1, arg2);
// }
// pub inline fn glFeedbackBuffer(arg0: GLsizei, arg1: GLenum, arg2: [*c]GLfloat) void {
//     return glad_glFeedbackBuffer.?(arg0, arg1, arg2);
// }
// pub const GL_LINE_BIT = 4;
// pub inline fn glGetQueryObjecti64v(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint64) void {
//     return glad_glGetQueryObjecti64v.?(arg0, arg1, arg2);
// }
// pub const _Maybevalid_ = _Maybevalid_impl_;
// pub inline fn glScissorIndexed(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glScissorIndexed.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGenerateTextureMipmap(arg0: GLuint) void {
//     return glad_glGenerateTextureMipmap.?(arg0);
// }
// pub const GL_LINE_SMOOTH_HINT = 3154;
// pub const GL_SAMPLE_ALPHA_TO_ONE = 32927;
// pub const __INT_LEAST16_FMTi__ = "hi";
// pub const GL_MAX_COMBINED_UNIFORM_BLOCKS = 35374;
// pub const GL_UNIFORM_BARRIER_BIT = 4;
// pub const GL_VERTEX_ATTRIB_ARRAY_STRIDE = 34340;
// pub inline fn glGenFramebuffers(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenFramebuffers.?(arg0, arg1);
// }
// pub inline fn glColor3ubv(arg0: [*c]const GLubyte) void {
//     return glad_glColor3ubv.?(arg0);
// }
// pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
// pub const GL_MAJOR_VERSION = 33307;
// pub const GL_SPOT_DIRECTION = 4612;
// pub inline fn glCompressedTexSubImage2D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLsizei, arg5: GLsizei, arg6: GLenum, arg7: GLsizei, arg8: ?*const c_void) void {
//     return glad_glCompressedTexSubImage2D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
// }
// pub const GL_FRONT_FACE = 2886;
// pub const __RDSEED__ = 1;
// pub const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 1;
// pub inline fn glVertexAttribDivisor(arg0: GLuint, arg1: GLuint) void {
//     return glad_glVertexAttribDivisor.?(arg0, arg1);
// }
// pub const GL_TEXTURE24 = 34008;
// pub const __FSGSBASE__ = 1;
// pub const GL_TEXTURE15 = 33999;
// pub const __FLT_EVAL_METHOD__ = 0;
// pub inline fn glVertexArrayBindingDivisor(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glVertexArrayBindingDivisor.?(arg0, arg1, arg2);
// }
// pub const __SSE_MATH__ = 1;
// pub inline fn glWindowPos3iv(arg0: [*c]const GLint) void {
//     return glad_glWindowPos3iv.?(arg0);
// }
// pub const GL_TEXTURE_MATRIX = 2984;
// pub inline fn glUniform4ui(arg0: GLint, arg1: GLuint, arg2: GLuint, arg3: GLuint, arg4: GLuint) void {
//     return glad_glUniform4ui.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_TEXTURE_COORD_ARRAY_SIZE = 32904;
// pub const __UINT_FAST8_FMTo__ = "hho";
// pub const GL_OBJECT_PLANE = 9473;
// pub const GL_MAX_VERTEX_ATOMIC_COUNTERS = 37586;
// pub inline fn glColor4uiv(arg0: [*c]const GLuint) void {
//     return glad_glColor4uiv.?(arg0);
// }
// pub const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 37084;
// pub const __INT8_MAX__ = 127;
// pub inline fn glPauseTransformFeedback() void {
//     return glad_glPauseTransformFeedback.?();
// }
// pub const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 33452;
// pub const __DBL_DECIMAL_DIG__ = 17;
// pub const GL_NEAREST_MIPMAP_LINEAR = 9986;
// pub inline fn glClearNamedBufferData(arg0: GLuint, arg1: GLenum, arg2: GLenum, arg3: GLenum, arg4: ?*const c_void) void {
//     return glad_glClearNamedBufferData.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const __LDBL_MAX_EXP__ = 1024;
// pub const GL_PROXY_TEXTURE_1D = 32867;
// pub const _WIN64 = 1;
// pub const GL_DOT3_RGB = 34478;
// pub inline fn glVertexAttrib3f(arg0: GLuint, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glVertexAttrib3f.?(arg0, arg1, arg2, arg3);
// }
// pub const __LONG_MAX__ = @as(c_long, 2147483647);
// pub const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 34925;
// pub const GL_RG8UI = 33336;
// pub const __pic__ = 2;
// pub const GL_NEAREST = 9728;
// pub const GL_POINT_BIT = 2;
// pub const GL_TEXTURE_GEN_MODE = 9472;
// pub const __LDBL_DENORM_MIN__ = 0.000000;
// pub const GL_RENDERBUFFER_RED_SIZE = 36176;
// pub inline fn glTexImage2DMultisample(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLboolean) void {
//     return glad_glTexImage2DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glFogiv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glFogiv.?(arg0, arg1);
// }
// pub const GL_ATTRIB_STACK_DEPTH = 2992;
// pub const GL_ORDER = 2561;
// pub inline fn glFogCoordf(arg0: GLfloat) void {
//     return glad_glFogCoordf.?(arg0);
// }
// pub const GL_TESS_CONTROL_SHADER_PATCHES = 33521;
// pub inline fn glPointParameterf(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glPointParameterf.?(arg0, arg1);
// }
// pub const GL_REFERENCED_BY_TESS_CONTROL_SHADER = 37639;
// pub inline fn glSecondaryColor3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glSecondaryColor3i.?(arg0, arg1, arg2);
// }
// pub inline fn glGetTransformFeedbacki_v(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: [*c]GLint) void {
//     return glad_glGetTransformFeedbacki_v.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glReadPixels(arg0: GLint, arg1: GLint, arg2: GLsizei, arg3: GLsizei, arg4: GLenum, arg5: GLenum, arg6: ?*c_void) void {
//     return glad_glReadPixels.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_CONTEXT_LOST = 1287;
// pub const GL_DST_COLOR = 774;
// pub const GL_COMBINE_ALPHA = 34162;
// pub inline fn glProgramUniform1iv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLint) void {
//     return glad_glProgramUniform1iv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_PROXY_TEXTURE_2D_ARRAY = 35867;
// pub inline fn glGetProgramPipelineiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetProgramPipelineiv.?(arg0, arg1, arg2);
// }
// pub const __ATOMIC_ACQUIRE = 2;
// pub const GL_ONE_MINUS_SRC1_COLOR = 35066;
// pub const GL_PACK_COMPRESSED_BLOCK_HEIGHT = 37164;
// pub const GL_NUM_SAMPLE_COUNTS = 37760;
// pub const __requires_exclusive_lock_held = lock;
// pub const GL_COLOR_ENCODING = 33430;
// pub const __UINT_FAST8_FMTX__ = "hhX";
// pub const GL_DEBUG_SEVERITY_LOW = 37192;
// pub const GL_PIXEL_MAP_S_TO_S_SIZE = 3249;
// pub inline fn glVertexAttribL4d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble) void {
//     return glad_glVertexAttribL4d.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glGetActiveUniformBlockName(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLchar) void {
//     return glad_glGetActiveUniformBlockName.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_VIEW_CLASS_BPTC_UNORM = 33490;
// pub const GL_INVERT = 5386;
// pub const UINT_LEAST64_MAX = UINT64_MAX;
// pub const GL_RGB16_SNORM = 36762;
// pub inline fn glIndexub(arg0: GLubyte) void {
//     return glad_glIndexub.?(arg0);
// }
// pub const GL_CLIP_PLANE2 = 12290;
// pub const GL_FEEDBACK = 7169;
// pub const __UINT_FAST16_FMTX__ = "hX";
// pub const __UINT_FAST32_FMTx__ = "x";
// pub inline fn glGetNamedRenderbufferParameteriv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetNamedRenderbufferParameteriv.?(arg0, arg1, arg2);
// }
// pub inline fn glUniformMatrix2x3dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix2x3dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_LINES = 1;
// pub inline fn glTexCoord1f(arg0: GLfloat) void {
//     return glad_glTexCoord1f.?(arg0);
// }
// pub const GL_IMAGE_CUBE_MAP_ARRAY = 36948;
// pub const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 37575;
// pub inline fn glBindTexture(arg0: GLenum, arg1: GLuint) void {
//     return glad_glBindTexture.?(arg0, arg1);
// }
// pub inline fn glProgramUniform4iv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLint) void {
//     return glad_glProgramUniform4iv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glSampleCoverage(arg0: GLfloat, arg1: GLboolean) void {
//     return glad_glSampleCoverage.?(arg0, arg1);
// }
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_START = 35972;
// pub inline fn glSelectBuffer(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glSelectBuffer.?(arg0, arg1);
// }
// pub const GL_COLOR_ATTACHMENT0 = 36064;
// pub const GL_QUERY_RESULT_AVAILABLE = 34919;
// pub const GL_LIST_BIT = 131072;
// pub const __x86_64 = 1;
// pub const GL_MAP_FLUSH_EXPLICIT_BIT = 16;
// pub inline fn glProgramUniform1uiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLuint) void {
//     return glad_glProgramUniform1uiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DEBUG_SEVERITY_MEDIUM = 37191;
// pub inline fn glRasterPos4i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glRasterPos4i.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glInvalidateTexSubImage(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei) void {
//     return glad_glInvalidateTexSubImage.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub const GL_COMPRESSED_SIGNED_RG_RGTC2 = 36286;
// pub const __UINTMAX_FMTo__ = "llo";
// pub const GL_MAP1_VERTEX_4 = 3480;
// pub inline fn glGetSynciv(arg0: GLsync, arg1: GLenum, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLint) void {
//     return glad_glGetSynciv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_FRACTIONAL_ODD = 36475;
// pub inline fn glGetnMinmax(arg0: GLenum, arg1: GLboolean, arg2: GLenum, arg3: GLenum, arg4: GLsizei, arg5: ?*c_void) void {
//     return glad_glGetnMinmax.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const __F16C__ = 1;
// pub inline fn glRasterPos4dv(arg0: [*c]const GLdouble) void {
//     return glad_glRasterPos4dv.?(arg0);
// }
// pub const GL_PIXEL_MAP_G_TO_G_SIZE = 3255;
// pub inline fn glMultiTexCoord1d(arg0: GLenum, arg1: GLdouble) void {
//     return glad_glMultiTexCoord1d.?(arg0, arg1);
// }
// pub const GL_BUFFER_STORAGE_FLAGS = 33312;
// pub const PTRDIFF_MIN = INTPTR_MIN;
// pub const GL_QUERY_RESULT = 34918;
// pub const GL_QUERY_BUFFER = 37266;
// pub inline fn glIndexMask(arg0: GLuint) void {
//     return glad_glIndexMask.?(arg0);
// }
// pub const GL_NUM_SHADER_BINARY_FORMATS = 36345;
// pub const GL_AUX2 = 1035;
// pub const GL_BACK_LEFT = 1026;
// pub inline fn glSecondaryColor3us(arg0: GLushort, arg1: GLushort, arg2: GLushort) void {
//     return glad_glSecondaryColor3us.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLE_ALPHA_TO_COVERAGE = 32926;
// pub const GL_STENCIL_PASS_DEPTH_PASS = 2966;
// pub const GL_MAX_DEPTH = 33408;
// pub const GL_TEXTURE_BINDING_3D = 32874;
// pub inline fn glProgramUniform4dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLdouble) void {
//     return glad_glProgramUniform4dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glLightiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glLightiv.?(arg0, arg1, arg2);
// }
// pub const GL_FOG_COORD_ARRAY = 33879;
// pub inline fn glBlendEquation(arg0: GLenum) void {
//     return glad_glBlendEquation.?(arg0);
// }
// pub const __FLT_RADIX__ = 2;
// pub const GL_IMAGE_CUBE = 36944;
// pub const GL_DEPTH_COMPONENT24 = 33190;
// pub const GL_REFERENCED_BY_COMPUTE_SHADER = 37643;
// pub const GL_DRAW_BUFFER3 = 34856;
// pub inline fn glBegin(arg0: GLenum) void {
//     return glad_glBegin.?(arg0);
// }
// pub const GL_GEOMETRY_SUBROUTINE = 37611;
// pub const GL_FUNC_ADD = 32774;
// pub const GL_UNSIGNED_INT_VEC2 = 36294;
// pub const _Satisfies_impl_ = expr;
// pub const GL_TESS_CONTROL_SUBROUTINE = 37609;
// pub const GL_ATOMIC_COUNTER_BUFFER = 37568;
// pub const GL_STREAM_COPY = 35042;
// pub const GL_POLYGON_OFFSET_FACTOR = 32824;
// pub inline fn glDrawTransformFeedbackStream(arg0: GLenum, arg1: GLuint, arg2: GLuint) void {
//     return glad_glDrawTransformFeedbackStream.?(arg0, arg1, arg2);
// }
// pub const GL_COEFF = 2560;
// pub const GL_2D = 1536;
// pub const GL_PATCH_VERTICES = 36466;
// pub const GL_LINE = 6913;
// pub const GL_GEOMETRY_OUTPUT_TYPE = 35096;
// pub const __INT64_FMTi__ = "lli";
// pub inline fn glDrawArraysInstanced(arg0: GLenum, arg1: GLint, arg2: GLsizei, arg3: GLsizei) void {
//     return glad_glDrawArraysInstanced.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glDepthRangef(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glDepthRangef.?(arg0, arg1);
// }
// pub const GL_SMOOTH_LINE_WIDTH_GRANULARITY = 2851;
// pub inline fn glGetQueryObjectiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetQueryObjectiv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 35373;
// pub const __LDBL_MIN__ = 0.000000;
// pub inline fn glTextureSubImage1D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLsizei, arg4: GLenum, arg5: GLenum, arg6: ?*const c_void) void {
//     return glad_glTextureSubImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
// pub const GL_RGBA8I = 36238;
// pub const GL_MAX_TEXTURE_SIZE = 3379;
// pub const GL_BOOL_VEC4 = 35673;
// pub inline fn glWindowPos2fv(arg0: [*c]const GLfloat) void {
//     return glad_glWindowPos2fv.?(arg0);
// }
// pub inline fn glVertex3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glVertex3d.?(arg0, arg1, arg2);
// }
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = 37707;
// pub const GL_NOTEQUAL = 517;
// pub const GL_INTENSITY16 = 32845;
// pub const GL_CLAMP_FRAGMENT_COLOR = 35099;
// pub const GL_QUERY = 33507;
// pub const __CRTDECL = __CLRCALL_PURE_OR_CDECL;
// pub const GL_CURRENT_RASTER_DISTANCE = 2825;
// pub const __UINT_LEAST64_FMTX__ = "llX";
// pub const __clang_minor__ = 0;
// pub const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE = 33378;
// pub inline fn glVertex4iv(arg0: [*c]const GLint) void {
//     return glad_glVertex4iv.?(arg0);
// }
// pub const GL_TEXTURE_BORDER = 4101;
// pub inline fn glTexCoord1sv(arg0: [*c]const GLshort) void {
//     return glad_glTexCoord1sv.?(arg0);
// }
// pub inline fn glDeleteVertexArrays(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteVertexArrays.?(arg0, arg1);
// }
// pub const GL_MEDIUM_INT = 36340;
// pub const __UINT_FAST64_FMTo__ = "llo";
// pub inline fn glProgramUniform4ui(arg0: GLuint, arg1: GLint, arg2: GLuint, arg3: GLuint, arg4: GLuint, arg5: GLuint) void {
//     return glad_glProgramUniform4ui.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_TEXTURE25 = 34009;
// pub const GL_REFERENCED_BY_TESS_EVALUATION_SHADER = 37640;
// pub const GL_MAP_UNSYNCHRONIZED_BIT = 32;
// pub const GL_TEXTURE14 = 33998;
// pub inline fn glViewportArrayv(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glViewportArrayv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_CULL_DISTANCES = 33529;
// pub inline fn glTexParameterIuiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glTexParameterIuiv.?(arg0, arg1, arg2);
// }
// pub const GL_LUMINANCE16_ALPHA16 = 32840;
// pub const GL_LOW_INT = 36339;
// pub const GL_TEXTURE_INTENSITY_SIZE = 32865;
// pub const GL_SPHERE_MAP = 9218;
// pub const GL_VERTEX_ARRAY = 32884;
// pub const GL_PRIMITIVE_RESTART_INDEX = 36766;
// pub const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 37083;
// pub const GL_IMAGE_CLASS_2_X_16 = 33469;
// pub const GL_SCISSOR_BIT = 524288;
// pub inline fn glDrawTransformFeedbackInstanced(arg0: GLenum, arg1: GLuint, arg2: GLsizei) void {
//     return glad_glDrawTransformFeedbackInstanced.?(arg0, arg1, arg2);
// }
// pub const __UINT8_FMTX__ = "hhX";
// pub const GL_AMBIENT = 4608;
// pub inline fn glTexCoord4d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glTexCoord4d.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glCopyImageSubData(arg0: GLuint, arg1: GLenum, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLuint, arg7: GLenum, arg8: GLint, arg9: GLint, arg10: GLint, arg11: GLint, arg12: GLsizei, arg13: GLsizei, arg14: GLsizei) void {
//     return glad_glCopyImageSubData.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14);
// }
// pub const __byte_writableTo = size;
// pub inline fn glGetBufferPointerv(arg0: GLenum, arg1: GLenum, arg2: [*c](?*c_void)) void {
//     return glad_glGetBufferPointerv.?(arg0, arg1, arg2);
// }
// pub const GL_RG16 = 33324;
// pub inline fn glClearBufferSubData(arg0: GLenum, arg1: GLenum, arg2: GLintptr, arg3: GLsizeiptr, arg4: GLenum, arg5: GLenum, arg6: ?*const c_void) void {
//     return glad_glClearBufferSubData.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_RGB8_SNORM = 36758;
// pub const GL_PIXEL_MAP_A_TO_A = 3193;
// pub inline fn glVertexAttribLPointer(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLsizei, arg4: ?*const c_void) void {
//     return glad_glVertexAttribLPointer.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_VERTEX_IMAGE_UNIFORMS = 37066;
// pub const __UINT8_FMTx__ = "hhx";
// pub const GL_NUM_ACTIVE_VARIABLES = 37636;
// pub inline fn glVertex4dv(arg0: [*c]const GLdouble) void {
//     return glad_glVertex4dv.?(arg0);
// }
// pub const __ORDER_LITTLE_ENDIAN__ = 1234;
// pub inline fn glUniform2ui(arg0: GLint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glUniform2ui.?(arg0, arg1, arg2);
// }
// pub inline fn glVertexP3ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glVertexP3ui.?(arg0, arg1);
// }
// pub const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379;
// pub const GL_DEPTH_SCALE = 3358;
// pub const GL_LINE_WIDTH = 2849;
// pub const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321;
// pub inline fn glMultiTexCoordP2uiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glMultiTexCoordP2uiv.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 36665;
// pub const GL_ACTIVE_RESOURCES = 37621;
// pub const GL_MAX_COMPUTE_UNIFORM_BLOCKS = 37307;
// pub inline fn glMaterialf(arg0: GLenum, arg1: GLenum, arg2: GLfloat) void {
//     return glad_glMaterialf.?(arg0, arg1, arg2);
// }
// pub const GL_UNPACK_SKIP_IMAGES = 32877;
// pub const GL_TEXTURE_WRAP_R = 32882;
// pub const GL_IMAGE_1D_ARRAY = 36946;
// pub const GL_GEOMETRY_TEXTURE = 33438;
// pub const GL_STENCIL_WRITEMASK = 2968;
// pub const GL_LUMINANCE8_ALPHA8 = 32837;
// pub const GL_GET_TEXTURE_IMAGE_FORMAT = 33425;
// pub const GL_R32I = 33333;
// pub const GL_R32UI = 33334;
// pub inline fn glFrontFace(arg0: GLenum) void {
//     return glad_glFrontFace.?(arg0);
// }
// pub inline fn glGetnUniformfv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]GLfloat) void {
//     return glad_glGetnUniformfv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glNormalPointer(arg0: GLenum, arg1: GLsizei, arg2: ?*const c_void) void {
//     return glad_glNormalPointer.?(arg0, arg1, arg2);
// }
// pub const GL_INT_SAMPLER_3D = 36299;
// pub inline fn glWindowPos2i(arg0: GLint, arg1: GLint) void {
//     return glad_glWindowPos2i.?(arg0, arg1);
// }
// pub inline fn glGetUniformSubroutineuiv(arg0: GLenum, arg1: GLint, arg2: [*c]GLuint) void {
//     return glad_glGetUniformSubroutineuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glObjectPtrLabel(arg0: ?*const c_void, arg1: GLsizei, arg2: [*c]const GLchar) void {
//     return glad_glObjectPtrLabel.?(arg0, arg1, arg2);
// }
// pub const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660;
// pub const GL_COMPUTE_SUBROUTINE_UNIFORM = 37619;
// pub const GL_BACK_RIGHT = 1027;
// pub const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 37125;
// pub inline fn glVertexAttrib1sv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttrib1sv.?(arg0, arg1);
// }
// pub const __acquires_shared_lock = lock;
// pub const __elem_writableTo = size;
// pub const GL_MAX_CLIP_PLANES = 3378;
// pub inline fn glTexGendv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLdouble) void {
//     return glad_glTexGendv.?(arg0, arg1, arg2);
// }
// pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
// pub inline fn glVertexAttribL4dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttribL4dv.?(arg0, arg1);
// }
// pub const __acquires_exclusive_lock = lock;
// pub const GL_MIN_MAP_BUFFER_ALIGNMENT = 37052;
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 35397;
// pub const GL_SYNC_FLUSH_COMMANDS_BIT = 1;
// pub const GL_QUERY_TARGET = 33514;
// pub const GL_TEXTURE_COMPRESSION_HINT = 34031;
// pub const GL_BOOL = 35670;
// pub const GL_SAMPLER_CUBE_MAP_ARRAY = 36876;
// pub const GL_CLIP_PLANE3 = 12291;
// pub const __INT_LEAST64_FMTi__ = "lli";
// pub const GL_TEXTURE_SWIZZLE_A = 36421;
// pub const GL_FRAGMENT_SHADER_DERIVATIVE_HINT = 35723;
// pub const GL_SAMPLE_BUFFERS = 32936;
// pub const __AVX__ = 1;
// pub const GL_R3_G3_B2 = 10768;
// pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
// pub inline fn glVertexAttrib4bv(arg0: GLuint, arg1: [*c]const GLbyte) void {
//     return glad_glVertexAttrib4bv.?(arg0, arg1);
// }
// pub const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 37581;
// pub inline fn glVertex2i(arg0: GLint, arg1: GLint) void {
//     return glad_glVertex2i.?(arg0, arg1);
// }
// pub const GL_LIGHT_MODEL_LOCAL_VIEWER = 2897;
// pub const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 35881;
// pub const GL_TEXTURE_BUFFER_BINDING = 35882;
// pub const GL_UNSIGNED_SHORT_5_6_5_REV = 33636;
// pub const GL_R16UI = 33332;
// pub inline fn glVertexArrayAttribBinding(arg0: GLuint, arg1: GLuint, arg2: GLuint) void {
//     return glad_glVertexArrayAttribBinding.?(arg0, arg1, arg2);
// }
// pub const GL_QUERY_BUFFER_BARRIER_BIT = 32768;
// pub const GL_COLOR_ATTACHMENT1 = 36065;
// pub inline fn glUniformMatrix4x2dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix4x2dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glValidateProgramPipeline(arg0: GLuint) void {
//     return glad_glValidateProgramPipeline.?(arg0);
// }
// pub const GL_STENCIL_CLEAR_VALUE = 2961;
// pub const GL_POLYGON_SMOOTH = 2881;
// pub const GL_FOG_MODE = 2917;
// pub inline fn glGetnColorTable(arg0: GLenum, arg1: GLenum, arg2: GLenum, arg3: GLsizei, arg4: ?*c_void) void {
//     return glad_glGetnColorTable.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glUniform2dv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLdouble) void {
//     return glad_glUniform2dv.?(arg0, arg1, arg2);
// }
// pub inline fn glGetVertexAttribiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetVertexAttribiv.?(arg0, arg1, arg2);
// }
// pub const GL_NUM_COMPATIBLE_SUBROUTINES = 36426;
// pub inline fn glTexGeniv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTexGeniv.?(arg0, arg1, arg2);
// }
// pub const GL_SHADER_COMPILER = 36346;
// pub inline fn glGetUniformBlockIndex(arg0: GLuint, arg1: [*c]const GLchar) GLuint {
//     return glad_glGetUniformBlockIndex.?(arg0, arg1);
// }
// pub const GL_DEBUG_OUTPUT_SYNCHRONOUS = 33346;
// pub inline fn glDepthRange(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glDepthRange.?(arg0, arg1);
// }
// pub const __UINT_FAST8_MAX__ = 255;
// pub const __DBL_MIN_10_EXP__ = -307;
// pub const GL_COORD_REPLACE = 34914;
// pub const GL_VIEW_CLASS_S3TC_DXT5_RGBA = 33487;
// pub const GL_IMAGE_1D = 36940;
// pub const GL_BLUE_BIAS = 3355;
// pub inline fn glSamplerParameterIuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glSamplerParameterIuiv.?(arg0, arg1, arg2);
// }
// pub const __SSE3__ = 1;
// pub const GL_AUX1 = 1034;
// pub const GL_DEPTH_RANGE = 2928;
// pub const GL_BLUE = 6405;
// pub const __UINT_FAST32_FMTu__ = "u";
// pub const GL_STENCIL_FUNC = 2962;
// pub const GL_SELECTION_BUFFER_SIZE = 3572;
// pub const GL_CLEAR_BUFFER = 33460;
// pub const __SSP_STRONG__ = 2;
// pub const GL_LUMINANCE4_ALPHA4 = 32835;
// pub const GL_INDEX_CLEAR_VALUE = 3104;
// pub const GL_PACK_IMAGE_HEIGHT = 32876;
// pub const __FXSR__ = 1;
// pub const __WCHAR_UNSIGNED__ = 1;
// pub inline fn glNamedFramebufferParameteri(arg0: GLuint, arg1: GLenum, arg2: GLint) void {
//     return glad_glNamedFramebufferParameteri.?(arg0, arg1, arg2);
// }
// pub const __UINT32_FMTx__ = "x";
// pub inline fn glTextureParameterfv(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLfloat) void {
//     return glad_glTextureParameterfv.?(arg0, arg1, arg2);
// }
// pub const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 37064;
// pub const GL_FLOAT = 5126;
// pub const GL_VIEW_CLASS_S3TC_DXT1_RGBA = 33485;
// pub inline fn glTexParameterIiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLint) void {
//     return glad_glTexParameterIiv.?(arg0, arg1, arg2);
// }
// pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
// pub const GL_IMAGE_CLASS_2_X_8 = 33472;
// pub const GL_RG8I = 33335;
// pub const GL_HINT_BIT = 32768;
// pub const GL_SPOT_EXPONENT = 4613;
// pub const GL_REPEAT = 10497;
// pub inline fn glNormalP3ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glNormalP3ui.?(arg0, arg1);
// }
// pub inline fn glEvalCoord2d(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glEvalCoord2d.?(arg0, arg1);
// }
// pub const GL_SRC0_ALPHA = 34184;
// pub const GL_SRGB_WRITE = 33432;
// pub inline fn glGetActiveSubroutineUniformiv(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLenum, arg4: [*c]GLint) void {
//     return glad_glGetActiveSubroutineUniformiv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glMap1f(arg0: GLenum, arg1: GLfloat, arg2: GLfloat, arg3: GLint, arg4: GLint, arg5: [*c]const GLfloat) void {
//     return glad_glMap1f.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_PROVOKING_VERTEX = 36431;
// pub const GL_FRAMEBUFFER_DEFAULT_HEIGHT = 37649;
// pub const GL_CONSTANT_ALPHA = 32771;
// pub inline fn glTranslatef(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glTranslatef.?(arg0, arg1, arg2);
// }
// pub inline fn glTextureStorage1D(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei) void {
//     return glad_glTextureStorage1D.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COLOR_BUFFER_BIT = 16384;
// pub inline fn glColorP3ui(arg0: GLenum, arg1: GLuint) void {
//     return glad_glColorP3ui.?(arg0, arg1);
// }
// pub const __UINT64_C_SUFFIX__ = ULL;
// pub inline fn glGetFramebufferParameteriv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetFramebufferParameteriv.?(arg0, arg1, arg2);
// }
// pub const GL_RGBA12 = 32858;
// pub const _Analysis_assume_lock_released_ = lock;
// pub const GL_MAX_UNIFORM_LOCATIONS = 33390;
// pub inline fn glGenQueries(arg0: GLsizei, arg1: [*c]GLuint) void {
//     return glad_glGenQueries.?(arg0, arg1);
// }
// pub const GL_LUMINANCE16 = 32834;
// pub inline fn glProgramUniform2uiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLuint) void {
//     return glad_glProgramUniform2uiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetTextureParameterIuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLuint) void {
//     return glad_glGetTextureParameterIuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glNamedFramebufferDrawBuffers(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLenum) void {
//     return glad_glNamedFramebufferDrawBuffers.?(arg0, arg1, arg2);
// }
// pub const GL_OBJECT_TYPE = 37138;
// pub inline fn glTextureSubImage3D(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLenum, arg10: ?*const c_void) void {
//     return glad_glTextureSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
// }
// pub inline fn glBindVertexBuffers(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLuint, arg3: [*c]const GLintptr, arg4: [*c]const GLsizei) void {
//     return glad_glBindVertexBuffers.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_INTERNALFORMAT_STENCIL_TYPE = 33405;
// pub inline fn glRasterPos3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glRasterPos3d.?(arg0, arg1, arg2);
// }
// pub const GL_PRIMARY_COLOR = 34167;
// pub const GL_TEXTURE_1D = 3552;
// pub const GL_TEXTURE26 = 34010;
// pub const GL_STENCIL_REF = 2967;
// pub inline fn glProgramUniform2i(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glProgramUniform2i.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_R16_SNORM = 36760;
// pub const GL_MIRRORED_REPEAT = 33648;
// pub const GL_SOURCE0_ALPHA = 34184;
// pub const GL_TRANSFORM_BIT = 4096;
// pub const GL_TEXTURE17 = 34001;
// pub const GL_VERTEX_BINDING_OFFSET = 33495;
// pub const GL_PIXEL_MAP_B_TO_B_SIZE = 3256;
// pub const __LDBL_MAX_10_EXP__ = 308;
// pub const GL_RGB16 = 32852;
// pub inline fn glUniform3f(arg0: GLint, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glUniform3f.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_INT_IMAGE_BUFFER = 36956;
// pub const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 33453;
// pub const GL_CLIP_DISTANCE5 = 12293;
// pub const GL_DOUBLE_MAT3x4 = 36684;
// pub const GL_ALPHA_BIAS = 3357;
// pub const GL_SLUMINANCE_ALPHA = 35908;
// pub const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS = 36445;
// pub const GL_MAX_TESS_PATCH_COMPONENTS = 36484;
// pub inline fn glInvalidateBufferSubData(arg0: GLuint, arg1: GLintptr, arg2: GLsizeiptr) void {
//     return glad_glInvalidateBufferSubData.?(arg0, arg1, arg2);
// }
// pub const GL_INTERNALFORMAT_STENCIL_SIZE = 33398;
// pub inline fn glEnd() void {
//     return glad_glEnd.?();
// }
// pub const GL_RGB10_A2UI = 36975;
// pub const GL_ALREADY_SIGNALED = 37146;
// pub const GL_BLUE_BITS = 3412;
// pub const GL_STACK_UNDERFLOW = 1284;
// pub const INT_FAST16_MAX = INT32_MAX;
// pub inline fn glProgramUniform2ui(arg0: GLuint, arg1: GLint, arg2: GLuint, arg3: GLuint) void {
//     return glad_glProgramUniform2ui.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_RG16I = 33337;
// pub const __INT_FAST32_FMTd__ = "d";
// pub const GL_LINEAR_MIPMAP_NEAREST = 9985;
// pub const GL_OPERAND0_ALPHA = 34200;
// pub inline fn glMapNamedBufferRange(arg0: GLuint, arg1: GLintptr, arg2: GLsizeiptr, arg3: GLbitfield) ?*c_void {
//     return glad_glMapNamedBufferRange.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DEPTH_BUFFER_BIT = 256;
// pub const GL_UNIFORM_BLOCK_NAME_LENGTH = 35393;
// pub const GL_SLUMINANCE = 35910;
// pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
// pub const GL_SAMPLE_MASK_VALUE = 36434;
// pub inline fn glColor4fv(arg0: [*c]const GLfloat) void {
//     return glad_glColor4fv.?(arg0);
// }
// pub inline fn glColorP4uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glColorP4uiv.?(arg0, arg1);
// }
// pub const GL_FASTEST = 4353;
// pub const GL_MAX_LABEL_LENGTH = 33512;
// pub const GL_DEBUG_TYPE_PUSH_GROUP = 33385;
// pub inline fn glDrawRangeElements(arg0: GLenum, arg1: GLuint, arg2: GLuint, arg3: GLsizei, arg4: GLenum, arg5: ?*const c_void) void {
//     return glad_glDrawRangeElements.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_FRAMEBUFFER_BARRIER_BIT = 1024;
// pub const GL_MAP_INVALIDATE_RANGE_BIT = 4;
// pub const GL_TEXTURE_WRAP_S = 10242;
// pub inline fn glMultiTexCoord4fv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glMultiTexCoord4fv.?(arg0, arg1);
// }
// pub const GL_DEPTH = 6145;
// pub const GL_COMPRESSED_LUMINANCE_ALPHA = 34027;
// pub const GL_LUMINANCE12_ALPHA4 = 32838;
// pub inline fn glFogCoordd(arg0: GLdouble) void {
//     return glad_glFogCoordd.?(arg0);
// }
// pub const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 36489;
// pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT = 37160;
// pub const GL_MAX_MODELVIEW_STACK_DEPTH = 3382;
// pub inline fn glNamedBufferSubData(arg0: GLuint, arg1: GLintptr, arg2: GLsizeiptr, arg3: ?*const c_void) void {
//     return glad_glNamedBufferSubData.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glBeginQueryIndexed(arg0: GLenum, arg1: GLuint, arg2: GLuint) void {
//     return glad_glBeginQueryIndexed.?(arg0, arg1, arg2);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 33303;
// pub inline fn glGetQueryObjectuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLuint) void {
//     return glad_glGetQueryObjectuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glWindowPos2f(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glWindowPos2f.?(arg0, arg1);
// }
// pub inline fn glClearNamedFramebufferfi(arg0: GLuint, arg1: GLenum, arg2: GLint, arg3: GLfloat, arg4: GLint) void {
//     return glad_glClearNamedFramebufferfi.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_RENDERBUFFER = 36161;
// pub const GL_MAX_COMPUTE_ATOMIC_COUNTERS = 33381;
// pub inline fn glNormal3iv(arg0: [*c]const GLint) void {
//     return glad_glNormal3iv.?(arg0);
// }
// pub const GL_WRITE_ONLY = 35001;
// pub const GL_WAIT_FAILED = 37149;
// pub const GL_VERTEX_BINDING_BUFFER = 36687;
// pub const GL_INT_SAMPLER_1D = 36297;
// pub const GL_UNSIGNED_INT_SAMPLER_2D = 36306;
// pub inline fn glNormal3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glNormal3i.?(arg0, arg1, arg2);
// }
// pub const __SIZEOF_FLOAT__ = 4;
// pub const INT_FAST64_MAX = INT64_MAX;
// pub const __requires_lock_held = lock;
// pub const GL_CURRENT_PROGRAM = 35725;
// pub inline fn glNewList(arg0: GLuint, arg1: GLenum) void {
//     return glad_glNewList.?(arg0, arg1);
// }
// pub const GL_UNSIGNALED = 37144;
// pub const __INT_LEAST32_FMTd__ = "d";
// pub inline fn glInterleavedArrays(arg0: GLenum, arg1: GLsizei, arg2: ?*const c_void) void {
//     return glad_glInterleavedArrays.?(arg0, arg1, arg2);
// }
// pub const GL_CLIP_PLANE4 = 12292;
// pub const GL_TEXTURE_MAG_FILTER = 10240;
// pub const __postcond = expr;
// pub const GL_TEXTURE_SWIZZLE_B = 36420;
// pub inline fn glRectsv(arg0: [*c]const GLshort, arg1: [*c]const GLshort) void {
//     return glad_glRectsv.?(arg0, arg1);
// }
// pub const GL_SHORT = 5122;
// pub inline fn glVertex4i(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glVertex4i.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glTexCoord1d(arg0: GLdouble) void {
//     return glad_glTexCoord1d.?(arg0);
// }
// pub inline fn glBindVertexBuffer(arg0: GLuint, arg1: GLuint, arg2: GLintptr, arg3: GLsizei) void {
//     return glad_glBindVertexBuffer.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_V3F = 10785;
// pub const GL_ATOMIC_COUNTER_BUFFER_START = 37570;
// pub const GL_OPERAND1_RGB = 34193;
// pub const GL_POINT_SIZE_GRANULARITY = 2835;
// pub inline fn glProgramUniform2dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLdouble) void {
//     return glad_glProgramUniform2dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COLOR_ATTACHMENT6 = 36070;
// pub const GL_FOG_COORDINATE_ARRAY = 33879;
// pub const _Requires_lock_held_ = lock;
// pub const GL_IMAGE_3D = 36942;
// pub inline fn glNormal3dv(arg0: [*c]const GLdouble) void {
//     return glad_glNormal3dv.?(arg0);
// }
// pub inline fn glUniformMatrix3x2fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix3x2fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COLOR_RENDERABLE = 33414;
// pub const GL_INDEX_WRITEMASK = 3105;
// pub const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 33299;
// pub const __declare_lock_level = level;
// pub const GL_ALPHA_SCALE = 3356;
// pub inline fn glMultiTexCoord1f(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glMultiTexCoord1f.?(arg0, arg1);
// }
// pub const GL_MODULATE = 8448;
// pub inline fn glColor3ub(arg0: GLubyte, arg1: GLubyte, arg2: GLubyte) void {
//     return glad_glColor3ub.?(arg0, arg1, arg2);
// }
// pub inline fn glUniform3fv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLfloat) void {
//     return glad_glUniform3fv.?(arg0, arg1, arg2);
// }
// pub const GL_ONE_MINUS_CONSTANT_COLOR = 32770;
// pub inline fn glCreateShaderProgramv(arg0: GLenum, arg1: GLsizei, arg2: [*c]const ([*c]const GLchar)) GLuint {
//     return glad_glCreateShaderProgramv.?(arg0, arg1, arg2);
// }
// pub const __override = __inner_override;
// pub const __DBL_HAS_DENORM__ = 1;
// pub inline fn glVertexAttribP1ui(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: GLuint) void {
//     return glad_glVertexAttribP1ui.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glPushMatrix() void {
//     return glad_glPushMatrix.?();
// }
// pub inline fn glVertexAttribFormat(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLboolean, arg4: GLuint) void {
//     return glad_glVertexAttribFormat.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 36665;
// pub const GL_AUX0 = 1033;
// pub const GL_WEIGHT_ARRAY_BUFFER_BINDING = 34974;
// pub const GL_NORMALIZE = 2977;
// pub const PTRDIFF_MAX = INTPTR_MAX;
// pub const __AVX2__ = 1;
// pub const __WINT_MAX__ = 65535;
// pub inline fn glGetVertexArrayIndexediv(arg0: GLuint, arg1: GLuint, arg2: GLenum, arg3: [*c]GLint) void {
//     return glad_glGetVertexArrayIndexediv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983;
// pub const __acquires_lock = lock;
// pub const GL_MAX_PATCH_VERTICES = 36477;
// pub inline fn glUniform1uiv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glUniform1uiv.?(arg0, arg1, arg2);
// }
// pub const _HAS_EXCEPTIONS = 1;
// pub inline fn glIndexPointer(arg0: GLenum, arg1: GLsizei, arg2: ?*const c_void) void {
//     return glad_glIndexPointer.?(arg0, arg1, arg2);
// }
// pub const GL_SAMPLER_2D_MULTISAMPLE = 37128;
// pub const GL_PROXY_TEXTURE_1D_ARRAY = 35865;
// pub const GL_UNSIGNED_INT = 5125;
// pub const GL_ELEMENT_ARRAY_BUFFER = 34963;
// pub inline fn glEnableVertexAttribArray(arg0: GLuint) void {
//     return glad_glEnableVertexAttribArray.?(arg0);
// }
// pub const GL_DEBUG_SOURCE_OTHER = 33355;
// pub const GL_TESS_CONTROL_SHADER_BIT = 8;
// pub inline fn glEvalMesh1(arg0: GLenum, arg1: GLint, arg2: GLint) void {
//     return glad_glEvalMesh1.?(arg0, arg1, arg2);
// }
// pub const GL_POLYGON_STIPPLE_BIT = 16;
// pub inline fn glUniformMatrix4x3dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix4x3dv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glIsEnabledi(arg0: GLenum, arg1: GLuint) GLboolean {
//     return glad_glIsEnabledi.?(arg0, arg1);
// }
// pub const GL_MAX_DEBUG_LOGGED_MESSAGES = 37188;
// pub const GL_SAMPLE_MASK = 36433;
// pub inline fn glIsList(arg0: GLuint) GLboolean {
//     return glad_glIsList.?(arg0);
// }
// pub const __INT_LEAST32_MAX__ = 2147483647;
// pub const GL_POLYGON_OFFSET_FILL = 32823;
// pub const GL_TEXTURE_COORD_ARRAY_STRIDE = 32906;
// pub const GL_ZERO_TO_ONE = 37727;
// pub const GL_MAP_COHERENT_BIT = 128;
// pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
// pub inline fn glUniformMatrix2x4fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix2x4fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_LAST_VERTEX_CONVENTION = 36430;
// pub const GL_R8_SNORM = 36756;
// pub inline fn glVertex3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glVertex3f.?(arg0, arg1, arg2);
// }
// pub const __LITTLE_ENDIAN__ = 1;
// pub const __FLT_HAS_QUIET_NAN__ = 1;
// pub const GL_LIGHT_MODEL_AMBIENT = 2899;
// pub const GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 36495;
// pub const GL_UNIFORM_BLOCK = 37602;
// pub inline fn glColor4bv(arg0: [*c]const GLbyte) void {
//     return glad_glColor4bv.?(arg0);
// }
// pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
// pub const GL_TEXTURE_BINDING_2D_ARRAY = 35869;
// pub inline fn glVertexAttribI1iv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttribI1iv.?(arg0, arg1);
// }
// pub const GL_SAMPLE_POSITION = 36432;
// pub inline fn glUniform1d(arg0: GLint, arg1: GLdouble) void {
//     return glad_glUniform1d.?(arg0, arg1);
// }
// pub const GL_TEXTURE27 = 34011;
// pub const GL_COMPUTE_TEXTURE = 33440;
// pub inline fn glSecondaryColor3dv(arg0: [*c]const GLdouble) void {
//     return glad_glSecondaryColor3dv.?(arg0);
// }
// pub const GL_COMPRESSED_SRGB = 35912;
// pub const GL_INT_IMAGE_2D_RECT = 36954;
// pub const GL_TEXTURE16 = 34000;
// pub const GL_VERSION = 7938;
// pub inline fn glGetActiveAttrib(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLint, arg5: [*c]GLenum, arg6: [*c]GLchar) void {
//     return glad_glGetActiveAttrib.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub inline fn glBlitFramebuffer(arg0: GLint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint, arg6: GLint, arg7: GLint, arg8: GLbitfield, arg9: GLenum) void {
//     return glad_glBlitFramebuffer.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
// }
// pub const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 37582;
// pub const GL_UNIFORM_NAME_LENGTH = 35385;
// pub const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 3387;
// pub const GL_CLIP_DISTANCE4 = 12292;
// pub const GL_CLIP_ORIGIN = 37724;
// pub inline fn glTexCoord2sv(arg0: [*c]const GLshort) void {
//     return glad_glTexCoord2sv.?(arg0);
// }
// pub const GL_3D_COLOR = 1538;
// pub inline fn glGetBooleanv(arg0: GLenum, arg1: [*c]GLboolean) void {
//     return glad_glGetBooleanv.?(arg0, arg1);
// }
// pub const __FLT_MAX_10_EXP__ = 38;
// pub inline fn glTexCoord4f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glTexCoord4f.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glBindTextureUnit(arg0: GLuint, arg1: GLuint) void {
//     return glad_glBindTextureUnit.?(arg0, arg1);
// }
// pub inline fn glGetIntegeri_v(arg0: GLenum, arg1: GLuint, arg2: [*c]GLint) void {
//     return glad_glGetIntegeri_v.?(arg0, arg1, arg2);
// }
// pub inline fn glVertex2s(arg0: GLshort, arg1: GLshort) void {
//     return glad_glVertex2s.?(arg0, arg1);
// }
// pub const GL_MAX_VARYING_VECTORS = 36348;
// pub const GL_COLOR_ATTACHMENT20 = 36084;
// pub inline fn glIsRenderbuffer(arg0: GLuint) GLboolean {
//     return glad_glIsRenderbuffer.?(arg0);
// }
// pub const GL_IMAGE_2D_MULTISAMPLE_ARRAY = 36950;
// pub const GL_TEXTURE_BIT = 262144;
// pub const GL_QUERY_BY_REGION_NO_WAIT = 36374;
// pub const __DBL_MIN__ = 0.000000;
// pub const GL_COLOR_ATTACHMENT11 = 36075;
// pub const _WIN32 = 1;
// pub const _STL_LANG = __cplusplus;
// pub const GL_DRAW_INDIRECT_BUFFER_BINDING = 36675;
// pub const GL_READ_PIXELS_FORMAT = 33421;
// pub inline fn glIndexi(arg0: GLint) void {
//     return glad_glIndexi.?(arg0);
// }
// pub const GL_COLOR_ARRAY = 32886;
// pub const GL_PARAMETER_BUFFER = 33006;
// pub const GL_ONE_MINUS_SRC1_ALPHA = 35067;
// pub const GL_IMAGE_2D_ARRAY = 36947;
// pub const GL_FRAMEBUFFER_UNSUPPORTED = 36061;
// pub const GL_UNIFORM_BLOCK_INDEX = 35386;
// pub const GL_STENCIL_BACK_PASS_DEPTH_PASS = 34819;
// pub const GL_TEXTURE_WRAP_T = 10243;
// pub inline fn glMultiTexCoord1s(arg0: GLenum, arg1: GLshort) void {
//     return glad_glMultiTexCoord1s.?(arg0, arg1);
// }
// pub const GL_STENCIL_INDEX4 = 36167;
// pub const GL_REFERENCED_BY_VERTEX_SHADER = 37638;
// pub const GL_DIFFUSE = 4609;
// pub const _Group_impl_ = annos;
// pub inline fn glLightModelfv(arg0: GLenum, arg1: [*c]const GLfloat) void {
//     return glad_glLightModelfv.?(arg0, arg1);
// }
// pub inline fn glSecondaryColor3d(arg0: GLdouble, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glSecondaryColor3d.?(arg0, arg1, arg2);
// }
// pub const GL_COLOR_ARRAY_TYPE = 32898;
// pub const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 33382;
// pub inline fn glEndQueryIndexed(arg0: GLenum, arg1: GLuint) void {
//     return glad_glEndQueryIndexed.?(arg0, arg1);
// }
// pub const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 37078;
// pub const GL_READ_BUFFER = 3074;
// pub const GL_CURRENT_FOG_COORD = 33875;
// pub inline fn glProgramBinary(arg0: GLuint, arg1: GLenum, arg2: ?*const c_void, arg3: GLsizei) void {
//     return glad_glProgramBinary.?(arg0, arg1, arg2, arg3);
// }
// pub const __INT_FAST8_FMTd__ = "hhd";
// pub const GL_ALIASED_POINT_SIZE_RANGE = 33901;
// pub inline fn glGetSubroutineIndex(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLchar) GLuint {
//     return glad_glGetSubroutineIndex.?(arg0, arg1, arg2);
// }
// pub const GL_INTENSITY8 = 32843;
// pub const GL_MAX_GEOMETRY_SHADER_INVOCATIONS = 36442;
// pub const GL_BLEND_DST = 3040;
// pub const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 36483;
// pub const GL_CONDITION_SATISFIED = 37148;
// pub const GL_TEXTURE_COORD_ARRAY_TYPE = 32905;
// pub const _Requires_shared_lock_held_ = lock;
// pub const __FLT_MAX_EXP__ = 128;
// pub const GL_COMPRESSED_SIGNED_RED_RGTC1 = 36284;
// pub const GL_ACCUM = 256;
// pub const GL_TRANSFORM_FEEDBACK_VARYINGS = 35971;
// pub const GL_MATRIX_STRIDE = 37631;
// pub const GL_CLIP_PLANE5 = 12293;
// pub inline fn glUniform1ui(arg0: GLint, arg1: GLuint) void {
//     return glad_glUniform1ui.?(arg0, arg1);
// }
// pub const __INT_FAST64_FMTi__ = "lli";
// pub inline fn glPolygonMode(arg0: GLenum, arg1: GLenum) void {
//     return glad_glPolygonMode.?(arg0, arg1);
// }
// pub inline fn glVertex3dv(arg0: [*c]const GLdouble) void {
//     return glad_glVertex3dv.?(arg0);
// }
// pub inline fn glRenderMode(arg0: GLenum) GLint {
//     return glad_glRenderMode.?(arg0);
// }
// pub const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050;
// pub inline fn glVertexAttrib2sv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttrib2sv.?(arg0, arg1);
// }
// pub inline fn glCompressedTexImage1D(arg0: GLenum, arg1: GLint, arg2: GLenum, arg3: GLsizei, arg4: GLint, arg5: GLsizei, arg6: ?*const c_void) void {
//     return glad_glCompressedTexImage1D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub inline fn glVertexBindingDivisor(arg0: GLuint, arg1: GLuint) void {
//     return glad_glVertexBindingDivisor.?(arg0, arg1);
// }
// pub const _SAL_VERSION = 20;
// pub inline fn glMultiTexCoord3i(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glMultiTexCoord3i.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glGetPixelMapuiv(arg0: GLenum, arg1: [*c]GLuint) void {
//     return glad_glGetPixelMapuiv.?(arg0, arg1);
// }
// pub const GL_CLIENT_VERTEX_ARRAY_BIT = 2;
// pub const GL_SRC1_COLOR = 35065;
// pub inline fn glClearAccum(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glClearAccum.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_COLOR_ATTACHMENT7 = 36071;
// pub const GL_INDEX_ARRAY_STRIDE = 32902;
// pub const GL_KEEP = 7680;
// pub inline fn glActiveTexture(arg0: GLenum) void {
//     return glad_glActiveTexture.?(arg0);
// }
// pub inline fn glCompressedTexSubImage3D(arg0: GLenum, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei, arg7: GLsizei, arg8: GLenum, arg9: GLsizei, arg10: ?*const c_void) void {
//     return glad_glCompressedTexSubImage3D.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
// }
// pub inline fn glProgramUniform3uiv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLuint) void {
//     return glad_glProgramUniform3uiv.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glClearColor(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat, arg3: GLfloat) void {
//     return glad_glClearColor.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MAP1_VERTEX_3 = 3479;
// pub const GL_RG16_SNORM = 36761;
// pub const GL_DEPTH_RENDERABLE = 33415;
// pub inline fn glProgramUniform3fv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: [*c]const GLfloat) void {
//     return glad_glProgramUniform3fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_DRAW_BUFFER = 3073;
// pub const GL_ELEMENT_ARRAY_BARRIER_BIT = 2;
// pub const __inner_blocksOn = resource;
// pub const GL_CONSTANT_ATTENUATION = 4615;
// pub const GL_FOG_COORDINATE = 33873;
// pub const GL_TEXTURE_2D = 3553;
// pub const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661;
// pub const __CHAR_BIT__ = 8;
// pub const GL_MAX_WIDTH = 33406;
// pub const __callback = __inner_callback;
// pub const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH = 35722;
// pub inline fn glColor3dv(arg0: [*c]const GLdouble) void {
//     return glad_glColor3dv.?(arg0);
// }
// pub const GL_UNPACK_ALIGNMENT = 3317;
// pub const GL_MAX_CUBE_MAP_TEXTURE_SIZE = 34076;
// pub const __FLT_EPSILON__ = 0.000000;
// pub const GL_VERSION_1_4 = 1;
// pub const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 37082;
// pub inline fn glGetnMapiv(arg0: GLenum, arg1: GLenum, arg2: GLsizei, arg3: [*c]GLint) void {
//     return glad_glGetnMapiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_REFERENCED_BY_FRAGMENT_SHADER = 37642;
// pub inline fn glDrawElements(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: ?*const c_void) void {
//     return glad_glDrawElements.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_RGB = 6407;
// pub const GL_INTERLEAVED_ATTRIBS = 35980;
// pub inline fn glVertexAttribI4iv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttribI4iv.?(arg0, arg1);
// }
// pub const __FLT_HAS_INFINITY__ = 1;
// pub inline fn glGetBufferParameteriv(arg0: GLenum, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetBufferParameteriv.?(arg0, arg1, arg2);
// }
// pub inline fn glPointSize(arg0: GLfloat) void {
//     return glad_glPointSize.?(arg0);
// }
// pub const GL_FRONT = 1028;
// pub const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 34033;
// pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*c]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*c]void, 0) else @as([*c]void, 0);
// pub inline fn glPolygonStipple(arg0: [*c]const GLubyte) void {
//     return glad_glPolygonStipple.?(arg0);
// }
// pub const GL_CURRENT_NORMAL = 2818;
// pub inline fn glBlendEquationi(arg0: GLuint, arg1: GLenum) void {
//     return glad_glBlendEquationi.?(arg0, arg1);
// }
// pub inline fn glUniformMatrix2fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix2fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_STENCIL_BUFFER_BIT = 1024;
// pub inline fn glTexCoord4sv(arg0: [*c]const GLshort) void {
//     return glad_glTexCoord4sv.?(arg0);
// }
// pub inline fn glVertexAttrib4Niv(arg0: GLuint, arg1: [*c]const GLint) void {
//     return glad_glVertexAttrib4Niv.?(arg0, arg1);
// }
// pub const GL_INT_IMAGE_2D_MULTISAMPLE = 36960;
// pub inline fn glGetActiveUniformsiv(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLuint, arg3: GLenum, arg4: [*c]GLint) void {
//     return glad_glGetActiveUniformsiv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_PROGRAM_BINARY_FORMATS = 34815;
// pub const GL_TEXTURE_RECTANGLE = 34037;
// pub inline fn glStencilFunc(arg0: GLenum, arg1: GLint, arg2: GLuint) void {
//     return glad_glStencilFunc.?(arg0, arg1, arg2);
// }
// pub const GL_PACK_SKIP_PIXELS = 3332;
// pub inline fn glEvalCoord2f(arg0: GLfloat, arg1: GLfloat) void {
//     return glad_glEvalCoord2f.?(arg0, arg1);
// }
// pub inline fn glMultiTexCoordP1uiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glMultiTexCoordP1uiv.?(arg0, arg1, arg2);
// }
// pub const __DBL_HAS_QUIET_NAN__ = 1;
// pub const GL_DITHER = 3024;
// pub const GL_COMPILE = 4864;
// pub inline fn glPolygonOffsetClamp(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glPolygonOffsetClamp.?(arg0, arg1, arg2);
// }
// pub const GL_LOGIC_OP_MODE = 3056;
// pub inline fn glMap1d(arg0: GLenum, arg1: GLdouble, arg2: GLdouble, arg3: GLint, arg4: GLint, arg5: [*c]const GLdouble) void {
//     return glad_glMap1d.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub const GL_EMISSION = 5632;
// pub const GL_CW = 2304;
// pub const __ORDER_PDP_ENDIAN__ = 3412;
// pub inline fn glVertexArrayVertexBuffer(arg0: GLuint, arg1: GLuint, arg2: GLuint, arg3: GLintptr, arg4: GLsizei) void {
//     return glad_glVertexArrayVertexBuffer.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glEdgeFlagv(arg0: [*c]const GLboolean) void {
//     return glad_glEdgeFlagv.?(arg0);
// }
// pub inline fn glTexCoord2i(arg0: GLint, arg1: GLint) void {
//     return glad_glTexCoord2i.?(arg0, arg1);
// }
// pub const GL_SOURCE0_RGB = 34176;
// pub const __INT16_TYPE__ = short;
// pub inline fn glGetSamplerParameterIuiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLuint) void {
//     return glad_glGetSamplerParameterIuiv.?(arg0, arg1, arg2);
// }
// pub inline fn glClientActiveTexture(arg0: GLenum) void {
//     return glad_glClientActiveTexture.?(arg0);
// }
// pub inline fn glUniformMatrix3x4dv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLdouble) void {
//     return glad_glUniformMatrix3x4dv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_RENDER = 7168;
// pub inline fn glVertexAttrib4d(arg0: GLuint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble, arg4: GLdouble) void {
//     return glad_glVertexAttrib4d.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_SRGB_ALPHA = 35906;
// pub const UINT_LEAST32_MAX = UINT32_MAX;
// pub const GL_MAP1_INDEX = 3473;
// pub const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS = 34924;
// pub inline fn glVertexAttribI3uiv(arg0: GLuint, arg1: [*c]const GLuint) void {
//     return glad_glVertexAttribI3uiv.?(arg0, arg1);
// }
// pub const GL_INT_IMAGE_CUBE = 36955;
// pub inline fn glGetVertexAttribIiv(arg0: GLuint, arg1: GLenum, arg2: [*c]GLint) void {
//     return glad_glGetVertexAttribIiv.?(arg0, arg1, arg2);
// }
// pub const GL_COLOR_MATERIAL = 2903;
// pub inline fn glRasterPos3f(arg0: GLfloat, arg1: GLfloat, arg2: GLfloat) void {
//     return glad_glRasterPos3f.?(arg0, arg1, arg2);
// }
// pub inline fn glColorPointer(arg0: GLint, arg1: GLenum, arg2: GLsizei, arg3: ?*const c_void) void {
//     return glad_glColorPointer.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_BYTE = 5120;
// pub const _Pre1_impl_ = p1;
// pub const GL_MAX_NAME_LENGTH = 37622;
// pub const GL_AUX_BUFFERS = 3072;
// pub const __SSE2__ = 1;
// pub const GL_TEXTURE28 = 34012;
// pub const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 36879;
// pub const GL_TEXTURE_ENV_COLOR = 8705;
// pub const GL_VIEW_CLASS_32_BITS = 33480;
// pub const GL_GEOMETRY_SHADER_BIT = 4;
// pub inline fn glVertexAttribI3i(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint) void {
//     return glad_glVertexAttribI3i.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_UNIFORM_BUFFER_SIZE = 35370;
// pub const GL_LINE_STIPPLE = 2852;
// pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
// pub inline fn glProgramUniform4i(arg0: GLuint, arg1: GLint, arg2: GLint, arg3: GLint, arg4: GLint, arg5: GLint) void {
//     return glad_glProgramUniform4i.?(arg0, arg1, arg2, arg3, arg4, arg5);
// }
// pub inline fn glGetError() GLenum {
//     return glad_glGetError.?();
// }
// pub const GL_INTERNALFORMAT_DEPTH_TYPE = 33404;
// pub inline fn glIsVertexArray(arg0: GLuint) GLboolean {
//     return glad_glIsVertexArray.?(arg0);
// }
// pub inline fn glUniform3d(arg0: GLint, arg1: GLdouble, arg2: GLdouble, arg3: GLdouble) void {
//     return glad_glUniform3d.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET = 36443;
// pub inline fn glProgramUniformMatrix4dv(arg0: GLuint, arg1: GLint, arg2: GLsizei, arg3: GLboolean, arg4: [*c]const GLdouble) void {
//     return glad_glProgramUniformMatrix4dv.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_CLIP_DISTANCE7 = 12295;
// pub inline fn glMultiTexCoord2iv(arg0: GLenum, arg1: [*c]const GLint) void {
//     return glad_glMultiTexCoord2iv.?(arg0, arg1);
// }
// pub const GL_MAX_LIST_NESTING = 2865;
// pub const GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 4;
// pub const GL_MAP1_GRID_DOMAIN = 3536;
// pub const __INT8_FMTi__ = "hhi";
// pub inline fn glVertexAttrib4sv(arg0: GLuint, arg1: [*c]const GLshort) void {
//     return glad_glVertexAttrib4sv.?(arg0, arg1);
// }
// pub const GL_TEXTURE_VIEW = 33461;
// pub const __CLRCALL_PURE_OR_CDECL = __cdecl;
// pub inline fn glGetSubroutineUniformLocation(arg0: GLuint, arg1: GLenum, arg2: [*c]const GLchar) GLint {
//     return glad_glGetSubroutineUniformLocation.?(arg0, arg1, arg2);
// }
// pub const GL_COMPRESSED_SIGNED_RG11_EAC = 37491;
// pub const GL_INDEX_LOGIC_OP = 3057;
// pub const GL_COLOR_ATTACHMENT21 = 36085;
// pub inline fn glUniform2uiv(arg0: GLint, arg1: GLsizei, arg2: [*c]const GLuint) void {
//     return glad_glUniform2uiv.?(arg0, arg1, arg2);
// }
// pub const GL_NORMAL_MAP = 34065;
// pub const GL_COLOR_ATTACHMENT10 = 36074;
// pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
// pub const GL_GEOMETRY_SUBROUTINE_UNIFORM = 37617;
// pub const GL_VIEW_CLASS_8_BITS = 33483;
// pub const GL_TYPE = 37626;
// pub const GL_RENDERER = 7937;
// pub inline fn glColor3i(arg0: GLint, arg1: GLint, arg2: GLint) void {
//     return glad_glColor3i.?(arg0, arg1, arg2);
// }
// pub inline fn glCreateQueries(arg0: GLenum, arg1: GLsizei, arg2: [*c]GLuint) void {
//     return glad_glCreateQueries.?(arg0, arg1, arg2);
// }
// pub const GL_DEPTH_STENCIL_TEXTURE_MODE = 37098;
// pub inline fn glNormalP3uiv(arg0: GLenum, arg1: [*c]const GLuint) void {
//     return glad_glNormalP3uiv.?(arg0, arg1);
// }
// pub const __analysis_assume_lock_released = lock;
// pub inline fn glMultiTexCoord2d(arg0: GLenum, arg1: GLdouble, arg2: GLdouble) void {
//     return glad_glMultiTexCoord2d.?(arg0, arg1, arg2);
// }
// pub const GL_FIRST_VERTEX_CONVENTION = 36429;
// pub inline fn glDeleteFramebuffers(arg0: GLsizei, arg1: [*c]const GLuint) void {
//     return glad_glDeleteFramebuffers.?(arg0, arg1);
// }
// pub const GL_FLOAT_32_UNSIGNED_INT_24_8_REV = 36269;
// pub inline fn glIsShader(arg0: GLuint) GLboolean {
//     return glad_glIsShader.?(arg0);
// }
// pub const __BMI2__ = 1;
// pub const GL_R8UI = 33330;
// pub inline fn glDeleteProgram(arg0: GLuint) void {
//     return glad_glDeleteProgram.?(arg0);
// }
// pub const GL_MAX_CLIP_DISTANCES = 3378;
// pub const GL_NEAREST_MIPMAP_NEAREST = 9984;
// pub inline fn glVertexAttribIFormat(arg0: GLuint, arg1: GLint, arg2: GLenum, arg3: GLuint) void {
//     return glad_glVertexAttribIFormat.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glVertexAttribP1uiv(arg0: GLuint, arg1: GLenum, arg2: GLboolean, arg3: [*c]const GLuint) void {
//     return glad_glVertexAttribP1uiv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_TEXTURE_BINDING_CUBE_MAP = 34068;
// pub inline fn glWindowPos2d(arg0: GLdouble, arg1: GLdouble) void {
//     return glad_glWindowPos2d.?(arg0, arg1);
// }
// pub const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = 2;
// pub const GL_POINT_SIZE_MAX = 33063;
// pub const GL_MAX_VIEWPORT_DIMS = 3386;
// pub const INT_LEAST8_MAX = INT8_MAX;
// pub const __SIZEOF_POINTER__ = 8;
// pub const GL_STENCIL = 6146;
// pub const GL_TEXTURE = 5890;
// pub const GL_VERTEX_ATTRIB_RELATIVE_OFFSET = 33493;
// pub const GL_COMPRESSED_RGBA8_ETC2_EAC = 37496;
// pub const GL_SRC2_RGB = 34178;
// pub const __corei7 = 1;
// pub const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 36383;
// pub const GL_UNSIGNED_INT_IMAGE_1D = 36962;
// pub const GL_3D = 1537;
// pub inline fn glProgramUniform1ui(arg0: GLuint, arg1: GLint, arg2: GLuint) void {
//     return glad_glProgramUniform1ui.?(arg0, arg1, arg2);
// }
// pub inline fn glGetActiveUniform(arg0: GLuint, arg1: GLuint, arg2: GLsizei, arg3: [*c]GLsizei, arg4: [*c]GLint, arg5: [*c]GLenum, arg6: [*c]GLchar) void {
//     return glad_glGetActiveUniform.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub inline fn glGetProgramResourceiv(arg0: GLuint, arg1: GLenum, arg2: GLuint, arg3: GLsizei, arg4: [*c]const GLenum, arg5: GLsizei, arg6: [*c]GLsizei, arg7: [*c]GLint) void {
//     return glad_glGetProgramResourceiv.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
// }
// pub inline fn glMultiTexCoordP3uiv(arg0: GLenum, arg1: GLenum, arg2: [*c]const GLuint) void {
//     return glad_glMultiTexCoordP3uiv.?(arg0, arg1, arg2);
// }
// pub inline fn glSpecializeShader(arg0: GLuint, arg1: [*c]const GLchar, arg2: GLuint, arg3: [*c]const GLuint, arg4: [*c]const GLuint) void {
//     return glad_glSpecializeShader.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub inline fn glDrawTransformFeedback(arg0: GLenum, arg1: GLuint) void {
//     return glad_glDrawTransformFeedback.?(arg0, arg1);
// }
// pub const GL_QUERY_BY_REGION_WAIT_INVERTED = 36377;
// pub const __LDBL_HAS_INFINITY__ = 1;
// pub const GL_COMPRESSED_RGB = 34029;
// pub const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 37592;
// pub const GL_CURRENT_BIT = 1;
// pub const __UINTPTR_FMTo__ = "llo";
// pub const GL_VIEW_CLASS_16_BITS = 33482;
// pub const GL_RIGHT = 1031;
// pub const GL_STENCIL_COMPONENTS = 33413;
// pub const GL_COLOR_ATTACHMENT4 = 36068;
// pub const GL_DEPTH_COMPONENTS = 33412;
// pub const GL_UNSIGNED_INT_IMAGE_2D_RECT = 36965;
// pub inline fn glClearDepthf(arg0: GLfloat) void {
//     return glad_glClearDepthf.?(arg0);
// }
// pub const GL_MAP_INVALIDATE_BUFFER_BIT = 8;
// pub const GL_LOAD = 257;
// pub const GL_4_BYTES = 5129;
// pub const GL_ALPHA8 = 32828;
// pub const GL_UNSIGNED_SHORT_1_5_5_5_REV = 33638;
// pub const GL_INT_IMAGE_2D_ARRAY = 36958;
// pub inline fn glEdgeFlag(arg0: GLboolean) void {
//     return glad_glEdgeFlag.?(arg0);
// }
// pub const UINT_FAST32_MAX = UINT32_MAX;
// pub const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 37079;
// pub inline fn glUniformMatrix4fv(arg0: GLint, arg1: GLsizei, arg2: GLboolean, arg3: [*c]const GLfloat) void {
//     return glad_glUniformMatrix4fv.?(arg0, arg1, arg2, arg3);
// }
// pub const GL_RED = 6403;
// pub const GL_POINT_SPRITE = 34913;
// pub inline fn glRenderbufferStorageMultisample(arg0: GLenum, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei) void {
//     return glad_glRenderbufferStorageMultisample.?(arg0, arg1, arg2, arg3, arg4);
// }
// pub const GL_SAMPLE_COVERAGE_INVERT = 32939;
// pub const __CLFLUSHOPT__ = 1;
// pub const GL_MAX_FRAGMENT_IMAGE_UNIFORMS = 37070;
// pub const GL_VERSION_1_5 = 1;
// pub const GL_IMAGE_BINDING_ACCESS = 36670;
// pub const GL_SAMPLER_CUBE = 35680;
// pub const GL_R8I = 33329;
// pub inline fn glTexCoord1fv(arg0: [*c]const GLfloat) void {
//     return glad_glTexCoord1fv.?(arg0);
// }
// pub const GL_ONE_MINUS_DST_ALPHA = 773;
// pub const GL_MAX_EVAL_ORDER = 3376;
// pub inline fn glVertexAttribL1dv(arg0: GLuint, arg1: [*c]const GLdouble) void {
//     return glad_glVertexAttribL1dv.?(arg0, arg1);
// }
// pub const GL_POLYGON_SMOOTH_HINT = 3155;
// pub const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 37573;
// pub inline fn glMultiTexCoord3sv(arg0: GLenum, arg1: [*c]const GLshort) void {
//     return glad_glMultiTexCoord3sv.?(arg0, arg1);
// }
// pub inline fn glFogf(arg0: GLenum, arg1: GLfloat) void {
//     return glad_glFogf.?(arg0, arg1);
// }
// pub const GL_STENCIL_BACK_FUNC = 34816;
// pub inline fn glClearStencil(arg0: GLint) void {
//     return glad_glClearStencil.?(arg0);
// }
// pub inline fn glColor4dv(arg0: [*c]const GLdouble) void {
//     return glad_glColor4dv.?(arg0);
// }
// pub const GL_DEBUG_TYPE_POP_GROUP = 33386;
// pub const GL_TESS_EVALUATION_SHADER_INVOCATIONS = 33522;
// pub inline fn glCreateShader(arg0: GLenum) GLuint {
//     return glad_glCreateShader.?(arg0);
// }
// pub const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055;
// pub const GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 16384;
// pub const __WCHAR_MAX__ = 65535;
// pub inline fn glInvalidateNamedFramebufferSubData(arg0: GLuint, arg1: GLsizei, arg2: [*c]const GLenum, arg3: GLint, arg4: GLint, arg5: GLsizei, arg6: GLsizei) void {
//     return glad_glInvalidateNamedFramebufferSubData.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_DOUBLE_MAT4x3 = 36686;
// pub inline fn glPushClientAttrib(arg0: GLbitfield) void {
//     return glad_glPushClientAttrib.?(arg0);
// }
// pub inline fn glColorMask(arg0: GLboolean, arg1: GLboolean, arg2: GLboolean, arg3: GLboolean) void {
//     return glad_glColorMask.?(arg0, arg1, arg2, arg3);
// }
// pub inline fn glMultiTexCoordP2ui(arg0: GLenum, arg1: GLenum, arg2: GLuint) void {
//     return glad_glMultiTexCoordP2ui.?(arg0, arg1, arg2);
// }
// pub const GL_BLEND_SRC_ALPHA = 32971;
// pub inline fn glGetUniformdv(arg0: GLuint, arg1: GLint, arg2: [*c]GLdouble) void {
//     return glad_glGetUniformdv.?(arg0, arg1, arg2);
// }
// pub const GL_CLAMP = 10496;
// pub const __UINTMAX_FMTX__ = "llX";
// pub const GL_SINGLE_COLOR = 33273;
// pub const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY = 36874;
// pub const GL_PRIMITIVE_RESTART = 36765;
// pub const GL_LOW_FLOAT = 36336;
// pub const GL_LOWER_LEFT = 36001;
// pub const GL_FLOAT_MAT2x3 = 35685;
// pub const GL_FRAMEBUFFER_ATTACHMENT_LAYERED = 36263;
// pub const GL_COLOR_LOGIC_OP = 3058;
// pub const _Deref2_post1_impl_ = p1;
// pub const GL_SHADER_IMAGE_ATOMIC = 33446;
// pub inline fn glTextureStorage3DMultisample(arg0: GLuint, arg1: GLsizei, arg2: GLenum, arg3: GLsizei, arg4: GLsizei, arg5: GLsizei, arg6: GLboolean) void {
//     return glad_glTextureStorage3DMultisample.?(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
// }
// pub const GL_RETURN = 258;
// pub const gladGLversionStruct = struct_gladGLversionStruct;
// pub const __GLsync = struct___GLsync;
// pub const _cl_context = struct__cl_context;
// pub const _cl_event = struct__cl_event;

//