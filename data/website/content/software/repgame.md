+++
title = 'RepGame'
weight = 3
+++
RepGame is a Minecraft clone written in C++ and Modern OpenGL/WebGL.

It does not use a game engine, only libraries like SDL3, GLM, CUDA, and EnTT.

It runs on Linux, Android, WASM (emscripten), and WINE (probably Windows). All from a single cross platform codebase using my own Makefile based build system.

Features include: infinite terrain gen, frustum culling, back face culling, block meshing, block rotation, simple ambient occlusion lighting, cross platform multiplayer, reflections, collision physics, an inventory, redstone (WIP), flowing water, and more.

On desktop class hardware, the non-WASM versions can run at above 500fps with reasonable render distances.
Performance will drop in the WASM version, or if reflections are turned on.

[Play and/or download](/repgame)
or [check out the code on GitHub.](https://github.com/Repkap11/RepGame)