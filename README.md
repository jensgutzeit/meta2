# meta2 - An implementation of META II

meta2 is a quick-and-dirty implementation of a META II, a metacompiler
designed by Val Schorre (D. V. Schorre, "META II: A Syntax-oriented Compiler
Writing Language", 1964).

The current version contains an assembler and virtual machine. It is able
to compile itself.

## Requirements

You need Ruby (version >= 2.0) to run the assembler and virtual machine.

## Usage

To assemble a binary for the virtual machine for META II run:

   `meta2asm -f meta2.asm`

The virtual machine image is written to the file meta2.bin.

Now use the virtual machine image to compile META II:

   `meta2vm meta2.bin meta2.meta2 > new_meta2.asm`

The generated file new_meta2.asm is exactly the same as the one use for
creating the binary for the virtual machine (meta2.asm).

## Links

A detailled introduction for META II can be found at
[[http://www.bayfronttechnologies.com/metaii.html]](http://www.bayfronttechnologies.com/metaii.html).

Other implementations of META II:

* [[https://bitbucket.org/bunny351/meta2]](https://bitbucket.org/bunny351/meta2)
* [[https://github.com/robertfeldt/meta_compile]](https://github.com/robertfeldt/meta_compile)
* [[https://github.com/impeachgod/meta]](https://github.com/impeachgod/meta)

Have fun!

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
