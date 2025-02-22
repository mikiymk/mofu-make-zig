#! /bin/sh -x

zig translate-c -DHAVE_CONFIG_H -Ilib -Isrc -lc lib/concat-filename.c > zig/lib/concat-filename.zig
zig translate-c -DHAVE_CONFIG_H -Ilib -Isrc -lc lib/findprog-in.c > zig/lib/findprog-in.zig

zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/ar.c > zig/ar.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/arscan.c > zig/arscan.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/commands.c > zig/commands.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/default.c > zig/default.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/dir.c > zig/dir.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/expand.c > zig/expand.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/file.c > zig/file.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/function.c > zig/function.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/getopt.c > zig/getopt.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/getopt1.c > zig/getopt1.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/guile.c > zig/guile.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/hash.c > zig/hash.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/implicit.c > zig/implicit.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/job.c > zig/job.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/load.c > zig/load.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/loadapi.c > zig/loadapi.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/main.c > zig/main.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/misc.c > zig/misc.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/output.c > zig/output.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/read.c > zig/read.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/remake.c > zig/remake.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/rule.c > zig/rule.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/shuffle.c > zig/shuffle.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/signame.c > zig/signame.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/strcache.c > zig/strcache.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/variable.c > zig/variable.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/version.c > zig/version.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/vpath.c > zig/vpath.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/posixos.c > zig/posixos.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="\"/usr/local/lib\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -lc src/remote-stub.c > zig/remote-stub.zig
