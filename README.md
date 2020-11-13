## ZARK

ZARK is a simple OpenGL game framework, it is not a fully featured engine, instead it gives you a simple APIs to get started

#### Notes


⛔ This library won't be for you if need:

- next gen graphics
- fully featured engine
- to target mobiles
- something battle tested
- vulkan, directx, metal

✅ This library is for you if you need: (it probably won't be for :trollface:)

- a dead simple library
- a very efficient and simple 3D rendering API with skeletal animations
- to target low-poly art style

I made this for me, for learning purposes, so it suits my needs

I'm still learning ZIG, so the code can be bad.. very bad 

If you want to help, review the code, offer improvements, go ahead!



![gif from model sample](https://i.imgur.com/asNYCOT.gifv)


## Features

#### Core
- [x] 2D spritebatching
- [x] 3D skeletal animation
- [ ] Material System and proper 3D rendering API (in progress)
- [ ] Audio (SFX/Music)
- [ ] GUI

## Build

- ``git clone --depth=1 https://github.com/ryuukk/zark.git``
- ``cd zark/samples``
- ``zig build help`` *to check list of samples*


#### Supported platforms
- [x] Windows
- [x] Linux
- [x] macOS

## Open-Source libraries used

#### 3rd-party

- [glfw](https://github.com/glfw/glfw): windowing/input
- [glad](https://github.com/Dav1dde/glad): opengl loader