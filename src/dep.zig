// /* Definitions of dependency data structures for GNU Make.
// Copyright (C) 1988-2023 Free Software Foundation, Inc.
// This file is part of GNU Make.

// GNU Make is free software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the Free Software
// Foundation; either version 3 of the License, or (at your option) any later
// version.

// GNU Make is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://www.gnu.org/licenses/>.  */

const makeint = @import("makeint.zig");
const filedef = @import("filedef.zig");

/// パースとグロビングのために、名前のチェーンで使用される構造体。
fn NAMESEQ(_t: type) type {
    return struct {
        next: *_t,
        name: *const c_char,
    };
}

pub const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

// /* Flag bits for the second argument to 'read_makefile'.
//    These flags are saved in the 'flags' field of each
//    'struct goaldep' in the chain returned by 'read_all_makefiles'.  */

// #define RM_NOFLAG               0
// #define RM_NO_DEFAULT_GOAL      (1 << 0) /* Do not set default goal.  */
// #define RM_INCLUDED             (1 << 1) /* Search makefile search path.  */
// #define RM_DONTCARE             (1 << 2) /* No error if it doesn't exist.  */
// #define RM_NO_TILDE             (1 << 3) /* Don't expand ~ in file name.  */

/// ファイルの依存関係を表す構造体。
/// 各構造体ファイルの'deps'は、'next'を介して、これらの連鎖を指す。
/// 'stem' は、静的パターン規則のこの dep 行のステム、または NULL である。
/// explicit は、暗黙的ルール検索が実行され、前提条件
/// が含まれていない場合に設定される。explicit が設定されている場合、ファイルは中間ではありません。
fn DEP(_t: type) type {
    return struct {
        nameseq: NAMESEQ(_t),
        file: *filedef.file,
        shuf: *_t,
        stem: *const c_char,
        packed_struct: packed struct {
            flags: u8,
            changed: u1,
            ignore_mtime: u1,
            staticpattern: u1,
            need_2nd_expansion: u1,
            ignore_automatic_vars: u1,
            is_explicit: u1,
            wait_here: u1,
        },
    };
}

// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
pub const struct_dep = opaque {};

/// 一つのゴールを表す構造。
/// 構築されるゴールは、'next'を介して連鎖する、この連鎖を構成する。
/// 'stem'は使われないが、これを含めて無視する方が単純である。
pub const goaldep = struct {
    dep: DEP(goaldep),
    error_: c_int,
    floc: makeint.floc,
};

// /* Options for parsing lists of filenames.  */

// #define PARSEFS_NONE    0x0000
// #define PARSEFS_NOSTRIP 0x0001
// #define PARSEFS_NOAR    0x0002
// #define PARSEFS_NOGLOB  0x0004
// #define PARSEFS_EXISTS  0x0008
// #define PARSEFS_NOCACHE 0x0010
// #define PARSEFS_ONEWORD 0x0020
// #define PARSEFS_WAIT    0x0040

// #define PARSE_FILE_SEQ(_s,_t,_c,_p,_f) \
//             (_t *)parse_file_seq ((_s),sizeof (_t),(_c),(_p),(_f))
// #define PARSE_SIMPLE_SEQ(_s,_t) \
//             (_t *)parse_file_seq ((_s),sizeof (_t),MAP_NUL,NULL,PARSEFS_NONE)

// #ifdef VMS
// void *parse_file_seq ();
// #else
// void *parse_file_seq (char **stringp, size_t size,
//                       int stopmap, const char *prefix, int flags);
// #endif

// char *tilde_expand (const char *name);

// #ifndef NO_ARCHIVES
// struct nameseq *ar_glob (const char *arname, const char *member_pattern, size_t size);
// #endif

// #define dep_name(d)       ((d)->name ? (d)->name : (d)->file->name)

// #define alloc_seq_elt(_t) xcalloc (sizeof (_t))
// void free_ns_chain (struct nameseq *n);

// #if defined(MAKE_MAINTAINER_MODE) && defined(__GNUC__) && !defined(__STRICT_ANSI__)
// /* Use inline to get real type-checking.  */
// #define SI static inline
// SI struct nameseq *alloc_ns (void)    { return alloc_seq_elt (struct nameseq); }
// SI struct dep *alloc_dep (void)       { return alloc_seq_elt (struct dep); }
// SI struct goaldep *alloc_goaldep (void) { return alloc_seq_elt (struct goaldep); }

// SI void free_ns (struct nameseq *n)      { free (n); }
// SI void free_dep (struct dep *d)         { free_ns ((struct nameseq *)d); }
// SI void free_goaldep (struct goaldep *g) { free_dep ((struct dep *)g); }
// SI void free_dep_chain (struct dep *d)   { free_ns_chain((struct nameseq *)d); }
// SI void free_goal_chain (struct goaldep *g) { free_dep_chain((struct dep *)g); }
// #else
// # define alloc_ns()          alloc_seq_elt (struct nameseq)
// # define alloc_dep()         alloc_seq_elt (struct dep)
// # define alloc_goaldep()     alloc_seq_elt (struct goaldep)

// # define free_ns(_n)         free (_n)
// # define free_dep(_d)        free_ns (_d)
// # define free_goaldep(_g)    free_dep (_g)

// # define free_dep_chain(_d)  free_ns_chain ((struct nameseq *)(_d))
// # define free_goal_chain(_g) free_ns_chain ((struct nameseq *)(_g))
// #endif

// struct dep *copy_dep_chain (const struct dep *d);

// struct goaldep *read_all_makefiles (const char **makefiles);
// void eval_buffer (char *buffer, const floc *floc);
// enum update_status update_goal_chain (struct goaldep *goals);
