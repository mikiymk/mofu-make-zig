#! /bin/sh -x

cd lib
    zig translate-c -DHAVE_CONFIG_H -I. -I../src -lc concat-filename.c > concat-filename.zig
    zig translate-c -DHAVE_CONFIG_H -I. -I../src -lc findprog-in.c > findprog-in.zig
cd ..

zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/ar.c > src/ar.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/arscan.c > src/arscan.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/commands.c > src/commands.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/default.c > src/default.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/dir.c > src/dir.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/expand.c > src/expand.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/file.c > src/file.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/function.c > src/function.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/getopt.c > src/getopt.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/getopt1.c > src/getopt1.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/guile.c > src/guile.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/hash.c > src/hash.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/implicit.c > src/implicit.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/job.c > src/job.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/load.c > src/load.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/loadapi.c > src/loadapi.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/main.c > src/main.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/misc.c > src/misc.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/output.c > src/output.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/read.c > src/read.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/remake.c > src/remake.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/rule.c > src/rule.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/shuffle.c > src/shuffle.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/signame.c > src/signame.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/strcache.c > src/strcache.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/variable.c > src/variable.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/version.c > src/version.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/vpath.c > src/vpath.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/posixos.c > src/posixos.zig
zig translate-c -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/remote-stub.c > src/remote-stub.zig
