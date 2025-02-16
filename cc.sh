#! /bin/sh -x

cd lib
    cc -DHAVE_CONFIG_H -I. -I../src -lc concat-filename.c
    cc -DHAVE_CONFIG_H -I. -I../src -lc findprog-in.c
cd ..

cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/ar.c # +
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/arscan.c # +
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/commands.c # +
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/default.c # +
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/dir.c # +
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/expand.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/file.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/function.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/getopt.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/getopt1.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/guile.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/hash.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/implicit.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/job.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/load.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/loadapi.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/main.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/misc.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/output.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/read.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/remake.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/rule.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/shuffle.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/signame.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/strcache.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/variable.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/version.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/vpath.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/posixos.c
cc -DHAVE_CONFIG_H -Isrc -I./src -Ilib -I./lib -DLIBDIR="/usr/local/lib" -DLOCALEDIR="/usr/local/share/locale" -lc src/remote-stub.c
