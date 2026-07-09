+++
title = 'RepMake'
weight = 5
+++
RepMake is a prototype build system which uses unique features in the Linux Kernel.

Through the magic of strace and eBPF, the program can automatically track build dependencies and run build tasks in the correct order.

It has 2 main features:

1: Dependency information is detected automatically by the build system and saved to .d files future builds.

Run the build a few times (at most 1 run per dependency depth) and it will figure out which files depend on each other.

2: Tasks can be suspended and their dependencies auto-magically built before the task is resumed.

For example, if a task executes a file, the syscall "execve" will be blocked until that file is built.
Then if the linker building the executable calls syscall "openat" on lib.o, the compiler will be called to compile lib.c. Once each task completes
the syscalls are un-blocked and allowed to complete back up the dependency tree. At the end the final execution of the program can continue, unaware of all the extra work done during the "execve" syscall.

It has had 2 iterations:

1: An ANTLR based parser/lexer which reads a MakeFile-like format, and runs each task similar to how "make" would run them.

This parser/lexer was never complete enough to run real makefile, with variables, wildcards, PHONY targets, etc.

2: A "shell wrapper" which injects this functionality around another program, normally bash. This version can run inside "make" through the SHELL built-in variable.


[Check out the code on GitHub.](https://github.com/Repkap11/RepMake)