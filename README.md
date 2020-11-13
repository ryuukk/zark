## ZARK

ZARK is a simple OpenGL game framework, it is not meant to be a fully featured engine, instead gives you simple a set of simple APIs to get started

#### Note

If you are looking to make the next AAA game, this library won't be for you
I made it because i liked the simplicity of libGDX/XNA, features and code is mostly ported over, and i wanted to learn the ZIG programming language

So yes, it's still WIP, the code can be improved, i try to make ZIG idiomatic code, but i'm still learning, so things can be a little bit ugly

If you want to help, review the code, offer improvements, go ahead


![gif from model sample](https://i.imgur.com/asNYCOT.gifv "zig build model")


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