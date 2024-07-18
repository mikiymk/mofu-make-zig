const root = @import("root.zig");

const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};

extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

const struct__IO_marker = opaque {};
const _IO_lock_t = anyopaque;
const struct__IO_codecvt = opaque {};
const struct__IO_wide_data = opaque {};
const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};

const FILE = struct__IO_FILE;

extern var stdout: [*c]FILE;

extern fn fclose(__stream: [*c]FILE) c_int;
extern fn fflush(__stream: [*c]FILE) c_int;

extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn puts(__s: [*c]const u8) c_int;

extern fn fileno(__stream: [*c]FILE) c_int;

extern fn __errno_location() [*c]c_int;

extern fn getlogin() [*c]u8;

extern fn free(__ptr: ?*anyopaque) void;

extern fn getenv(__name: [*c]const u8) [*c]u8;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const __size_t = c_ulong;
const struct_dirent_37 = opaque {};
const glob_t = extern struct {
    gl_pathc: __size_t = @import("std").mem.zeroes(__size_t),
    gl_pathv: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    gl_offs: __size_t = @import("std").mem.zeroes(__size_t),
    gl_flags: c_int = @import("std").mem.zeroes(c_int),
    gl_closedir: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    gl_readdir: ?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_37 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) ?*struct_dirent_37),
    gl_opendir: ?*const fn ([*c]const u8) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]const u8) callconv(.C) ?*anyopaque),
    gl_lstat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
    gl_stat: ?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (noalias [*c]const u8, noalias [*c]struct_stat) callconv(.C) c_int),
};

extern fn glob(noalias __pattern: [*c]const u8, __flags: c_int, __errfunc: ?*const fn ([*c]const u8, c_int) callconv(.C) c_int, noalias __pglob: [*c]glob_t) c_int;
extern fn globfree(__pglob: [*c]glob_t) void;

const struct_dep = @import("dep.zig").struct_dep;
// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
const struct_commands = opaque {};
const hash_func_t = ?*const fn (?*const anyopaque) callconv(.C) c_ulong;
const hash_cmp_func_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
const struct_hash_table = extern struct {
    ht_vec: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
    ht_hash_1: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_hash_2: hash_func_t = @import("std").mem.zeroes(hash_func_t),
    ht_compare: hash_cmp_func_t = @import("std").mem.zeroes(hash_cmp_func_t),
    ht_size: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_capacity: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_fill: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_empty_slots: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_collisions: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_lookups: c_ulong = @import("std").mem.zeroes(c_ulong),
    ht_rehashes: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_variable_set = extern struct {
    table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table),
};
const struct_variable_set_list = extern struct {
    next: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    set: [*c]struct_variable_set = @import("std").mem.zeroes([*c]struct_variable_set),
    next_is_parent: c_int = @import("std").mem.zeroes(c_int),
};
const struct_file = @import("filedef.zig").struct_file;
const floc = @import("makeint.zig").floc;
const concat = @import("misc.zig").concat;

const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;
const out_of_memory = @import("output.zig").out_of_memory;
const o_default: c_int = 0;

const o_file: c_int = 2;
const o_env_override: c_int = 3;
const o_command: c_int = 4;
const o_override: c_int = 5;

const enum_variable_origin = c_int;
const struct_variable = @import("variable.zig").struct_variable;

extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;
extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
extern fn next_token([*c]const u8) [*c]u8;

const ar_name = @import("ar.zig").ar_name;
const ar_parse_name = @import("ar.zig").ar_parse_name;

const file_exists_p = @import("dir.zig").file_exists_p;

const dir_setup_glob = @import("dir.zig").dir_setup_glob;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

extern var warn_undefined_variables_flag: c_int;
extern var posix_pedantic: c_int;

extern var second_expansion: c_int;

extern var one_shell: c_int;

extern var default_file: ?*struct_file;
const lookup_file = @import("file.zig").lookup_file;
const enter_file = @import("file.zig").enter_file;
const split_prereqs = @import("file.zig").split_prereqs;
const enter_prereqs = @import("file.zig").enter_prereqs;

const snapped_deps = @import("file.zig").snapped_deps;
const struct_nameseq = @import("dep.zig").struct_nameseq;

// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
const struct_goaldep = opaque {};
const struct_passwd = extern struct {
    pw_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_passwd: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    pw_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    pw_gecos: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_dir: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    pw_shell: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
const ar_glob = @import("ar.zig").ar_glob;
extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: ?*const struct_dep) ?*struct_dep;

extern fn fd_noinherit(c_int) void;

const f_simple: c_int = 1;

const f_append: c_int = 4;

const f_append_value: c_int = 7;
const enum_variable_flavor = c_uint;
const v_default: c_int = 0;

const struct_pattern_var = extern struct {
    next: ?*struct_pattern_var = @import("std").mem.zeroes(?*struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};

extern var variable_buffer: [*c]u8;
extern var current_variable_set_list: [*c]struct_variable_set_list;
extern var default_goal_var: ?*struct_variable;

const allocated_variable_expand_for_file = @import("expand.zig").allocated_variable_expand_for_file;

const pattern_matches = @import("function.zig").pattern_matches;

const patsubst_expand_pat = @import("function.zig").patsubst_expand_pat;

extern fn initialize_file_variables(file: ?*struct_file, reading: c_int) void;

extern fn do_variable_definition(flocp: [*c]const floc, name: [*c]const u8, value: [*c]const u8, origin: enum_variable_origin, flavor: enum_variable_flavor, target_var: c_int) ?*struct_variable;

extern fn assign_variable_definition(v: ?*struct_variable, line: [*c]const u8) ?*struct_variable;
extern fn try_variable_definition(flocp: [*c]const floc, line: [*c]const u8, origin: enum_variable_origin, target_var: c_int) ?*struct_variable;

extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) ?*struct_variable;

extern fn undefine_variable_in_set(name: [*c]const u8, length: usize, origin: enum_variable_origin, set: [*c]struct_variable_set) void;

extern fn create_pattern_var(target: [*c]const u8, suffix: [*c]const u8) ?*struct_pattern_var;

extern var suffix_file: ?*struct_file;

extern fn create_pattern_rule(targets: [*c][*c]const u8, target_percents: [*c][*c]const u8, num: c_ushort, terminal: c_int, deps: ?*struct_dep, commands: ?*struct_commands, override: c_int) void;

extern var db_level: c_int;

extern fn getpwnam(__name: [*c]const u8) [*c]struct_passwd;

pub const struct_ebuffer = extern struct {
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufnext: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    bufstart: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: usize = @import("std").mem.zeroes(usize),
    fp: [*c]FILE = @import("std").mem.zeroes([*c]FILE),
    floc: floc = @import("std").mem.zeroes(floc),
};

// src/read.c:63:18: warning: struct demoted to opaque type - has bitfield
pub const struct_vmodifiers = opaque {};

pub const enum_make_word_type = c_uint;

pub const struct_conditionals = extern struct {
    if_cmds: c_uint = @import("std").mem.zeroes(c_uint),
    allocated: c_uint = @import("std").mem.zeroes(c_uint),
    ignoring: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    seen_else: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};

pub var toplevel_conditionals: struct_conditionals = @import("std").mem.zeroes(struct_conditionals);
pub var conditionals: [*c]struct_conditionals = &toplevel_conditionals;

pub var default_include_directories: [4][*c]const u8 = [4][*c]const u8{
    "/usr/gnu/include",
    "/usr/local/include",
    "/usr/include",
    null,
};

pub var include_directories: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8);

pub var max_incl_len: usize = @import("std").mem.zeroes(usize);

pub extern var reading_file: [*c]const floc;

pub var read_files: ?*struct_goaldep = null;

pub const word1eq = @compileError("unable to translate macro: undefined identifier `wlen`");
// src/read.c:169:9

pub export fn read_all_makefiles(arg_makefiles: [*c][*c]const u8) ?*struct_goaldep {
    var makefiles = arg_makefiles;
    _ = &makefiles;
    var num_makefiles: c_uint = 0;
    _ = &num_makefiles;
    _ = define_variable_in_set("MAKEFILE_LIST", @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_file)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    while (true) {
        if ((@as(c_int, 1) & db_level) != 0) {
            _ = printf(gettext("Reading makefiles...\n"));
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    {
        var value: [*c]u8 = undefined;
        _ = &value;
        var name: [*c]u8 = undefined;
        _ = &name;
        var p: [*c]u8 = undefined;
        _ = &p;
        var length: usize = undefined;
        _ = &length;
        value = allocated_variable_expand_for_file("$(MAKEFILES)", @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
        p = value;
        while ((blk: {
            const tmp = find_next_token(@as([*c][*c]const u8, @ptrCast(@alignCast(&p))), &length);
            name = tmp;
            break :blk tmp;
        }) != null) {
            if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = '\x00';
            }
            _ = eval_makefile(strcache_add(name), @as(c_ushort, @bitCast(@as(c_short, @truncate(((@as(c_int, 1) << @intCast(0)) | (@as(c_int, 1) << @intCast(1))) | (@as(c_int, 1) << @intCast(2)))))));
        }
        free(@as(?*anyopaque, @ptrCast(value)));
    }
    if (makefiles != null) while (makefiles.* != null) {
        var d: ?*struct_goaldep = eval_makefile(makefiles.*, @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 0))))));
        _ = &d;
        if (__errno_location().* != 0) {
            perror_with_name("", makefiles.*);
        }
        makefiles.* = if (d.*.name != null) d.*.name else d.*.file.*.name;
        num_makefiles +%= 1;
        makefiles += 1;
    };
    if (num_makefiles == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        const default_makefiles = struct {
            var static: [4][*c]const u8 = [4][*c]const u8{
                "GNUmakefile",
                "makefile",
                "Makefile",
                null,
            };
        };
        _ = &default_makefiles;
        var p: [*c][*c]const u8 = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_makefiles.static)));
        _ = &p;
        while ((p.* != null) and !(file_exists_p(p.*) != 0)) {
            p += 1;
        }
        if (p.* != null) {
            _ = eval_makefile(p.*, @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 0))))));
            if (__errno_location().* != 0) {
                perror_with_name("", p.*);
            }
        } else {
            {
                p = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_makefiles.static)));
                while (p.* != null) : (p += 1) {
                    var d: ?*struct_goaldep = @as(?*struct_goaldep, @ptrCast(xcalloc(@sizeOf(struct_goaldep))));
                    _ = &d;
                    d.*.file = enter_file(strcache_add(p.*));
                    d.*.flags = @as(c_uint, @bitCast(@as(c_int, 1) << @intCast(2)));
                    d.*.next = read_files;
                    read_files = d;
                }
            }
        }
    }
    return read_files;
}

pub fn install_conditionals(arg_new: [*c]struct_conditionals) callconv(.C) [*c]struct_conditionals {
    var new = arg_new;
    _ = &new;
    var save: [*c]struct_conditionals = conditionals;
    _ = &save;
    _ = memset(@as(?*anyopaque, @ptrCast(new)), @as(c_int, '\x00'), @sizeOf(struct_conditionals));
    conditionals = new;
    return save;
}

pub fn restore_conditionals(arg_saved: [*c]struct_conditionals) callconv(.C) void {
    var saved = arg_saved;
    _ = &saved;
    free(@as(?*anyopaque, @ptrCast(conditionals.*.ignoring)));
    free(@as(?*anyopaque, @ptrCast(conditionals.*.seen_else)));
    conditionals = saved;
}

pub fn eval_makefile(arg_filename: [*c]const u8, arg_flags: c_ushort) callconv(.C) ?*struct_goaldep {
    var filename = arg_filename;
    _ = &filename;
    var flags = arg_flags;
    _ = &flags;
    var deps: ?*struct_goaldep = undefined;
    _ = &deps;
    var ebuf: struct_ebuffer = undefined;
    _ = &ebuf;
    var curfile: [*c]const floc = undefined;
    _ = &curfile;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    deps = @as(?*struct_goaldep, @ptrCast(xcalloc(@sizeOf(struct_goaldep))));
    deps.*.next = read_files;
    read_files = deps;
    ebuf.floc.filenm = filename;
    ebuf.floc.lineno = 1;
    ebuf.floc.offset = 0;
    if ((@as(c_int, 2) & db_level) != 0) {
        _ = printf(gettext("Reading makefile '%s'"), filename);
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(0))) != 0) {
            _ = printf(gettext(" (no default goal)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(1))) != 0) {
            _ = printf(gettext(" (search path)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(2))) != 0) {
            _ = printf(gettext(" (don't care)"));
        }
        if ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(3))) != 0) {
            _ = printf(gettext(" (no ~ expansion)"));
        }
        _ = puts("...");
    }
    if (!((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(3))) != 0) and (@as(c_int, @bitCast(@as(c_uint, filename[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~'))) {
        expanded = tilde_expand(filename);
        if (expanded != null) {
            filename = expanded;
        }
    }
    __errno_location().* = 0;
    while (true) {
        __errno_location().* = 0;
        ebuf.fp = fopen(filename, "r");
        if (!((ebuf.fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
    }
    deps.*.@"error" = __errno_location().*;
    while (true) {
        switch (deps.*.@"error") {
            @as(c_int, 24), @as(c_int, 23), @as(c_int, 12) => {
                {
                    var err: [*c]const u8 = strerror(deps.*.@"error");
                    _ = &err;
                    fatal(reading_file, strlen(err), "%s", err);
                }
            },
            else => {},
        }
        break;
    }
    if ((((((ebuf.fp == @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (deps.*.@"error" == @as(c_int, 2))) and (include_directories != null)) and ((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(1))) != @as(c_int, 0))) and !false) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(filename.*))]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        var dir: [*c][*c]const u8 = undefined;
        _ = &dir;
        {
            dir = include_directories;
            while (dir.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (dir += 1) {
                var included: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 3))), dir.*, "/", filename);
                _ = &included;
                while (true) {
                    __errno_location().* = 0;
                    ebuf.fp = fopen(included, "r");
                    if (!((ebuf.fp == null) and (__errno_location().* == @as(c_int, 4)))) break;
                }
                if (ebuf.fp != null) {
                    filename = included;
                    break;
                }
                if (__errno_location().* != @as(c_int, 2)) {
                    filename = included;
                    deps.*.@"error" = __errno_location().*;
                    break;
                }
            }
        }
    }
    filename = strcache_add(filename);
    deps.*.file = lookup_file(filename);
    if (deps.*.file == null) {
        deps.*.file = enter_file(filename);
    }
    filename = deps.*.file.*.name;
    deps.*.flags = @as(c_uint, @bitCast(@as(c_uint, flags)));
    deps.*.file.*.is_explicit = 1;
    free(@as(?*anyopaque, @ptrCast(expanded)));
    if (ebuf.fp == null) {
        __errno_location().* = deps.*.@"error";
        deps.*.file.*.last_mtime = 1;
        return deps;
    }
    deps.*.@"error" = 0;
    if (deps.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
        deps.*.file.*.last_mtime = 0;
    }
    fd_noinherit(fileno(ebuf.fp));
    _ = do_variable_definition(&ebuf.floc, "MAKEFILE_LIST", filename, @as(c_uint, @bitCast(o_file)), @as(c_uint, @bitCast(f_append_value)), @as(c_int, 0));
    ebuf.size = 200;
    ebuf.buffer = blk: {
        const tmp = blk_1: {
            const tmp_2 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(ebuf.size))));
            ebuf.bufstart = tmp_2;
            break :blk_1 tmp_2;
        };
        ebuf.bufnext = tmp;
        break :blk tmp;
    };
    curfile = reading_file;
    reading_file = &ebuf.floc;
    eval(&ebuf, @intFromBool(!((@as(c_int, @bitCast(@as(c_uint, flags))) & (@as(c_int, 1) << @intCast(0))) != 0)));
    reading_file = curfile;
    _ = fclose(ebuf.fp);
    free(@as(?*anyopaque, @ptrCast(ebuf.bufstart)));
    __errno_location().* = 0;
    return deps;
}

pub export fn eval_buffer(arg_buffer: [*c]u8, arg_flocp: [*c]const floc) void {
    var buffer = arg_buffer;
    _ = &buffer;
    var flocp = arg_flocp;
    _ = &flocp;
    var ebuf: struct_ebuffer = undefined;
    _ = &ebuf;
    var saved: [*c]struct_conditionals = undefined;
    _ = &saved;
    var new: struct_conditionals = undefined;
    _ = &new;
    var curfile: [*c]const floc = undefined;
    _ = &curfile;
    ebuf.size = strlen(buffer);
    ebuf.buffer = blk: {
        const tmp = blk_1: {
            const tmp_2 = buffer;
            ebuf.bufstart = tmp_2;
            break :blk_1 tmp_2;
        };
        ebuf.bufnext = tmp;
        break :blk tmp;
    };
    ebuf.fp = null;
    if (flocp != null) {
        ebuf.floc = flocp.*;
    } else if (reading_file != null) {
        ebuf.floc = reading_file.*;
    } else {
        ebuf.floc.filenm = null;
        ebuf.floc.lineno = 1;
        ebuf.floc.offset = 0;
    }
    curfile = reading_file;
    reading_file = &ebuf.floc;
    saved = install_conditionals(&new);
    eval(&ebuf, @as(c_int, 1));
    restore_conditionals(saved);
    reading_file = curfile;
}

// src/read.c:515:23: warning: local variable has opaque type

// src/read.c:500:1: warning: unable to translate function, demoted to extern
pub extern fn parse_var_assignment(arg_line: [*c]const u8, arg_targvar: c_int, arg_vmod: ?*struct_vmodifiers) callconv(.C) [*c]u8;

// src/read.c:634:25: warning: local variable has opaque type

// src/read.c:570:1: warning: unable to translate function, demoted to extern
pub extern fn eval(arg_ebuf: [*c]struct_ebuffer, arg_set_default: c_int) callconv(.C) void;

pub fn remove_comments(arg_line: [*c]u8) callconv(.C) void {
    var line = arg_line;
    _ = &line;
    var comment: [*c]u8 = undefined;
    _ = &comment;
    comment = find_map_unquote(line, @as(c_int, 8) | @as(c_int, 16384));
    if (comment != null) {
        comment.* = '\x00';
    }
}

pub fn do_undefine(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) void {
    var name = arg_name;
    _ = &name;
    var origin = arg_origin;
    _ = &origin;
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var p: [*c]u8 = undefined;
    _ = &p;
    var @"var": [*c]u8 = undefined;
    _ = &@"var";
    @"var" = allocated_variable_expand_for_file(name, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
    name = next_token(@"var");
    if (@as(c_int, @bitCast(@as(c_uint, name.*))) == @as(c_int, '\x00')) {
        fatal(&ebuf.*.floc, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty variable name"));
    }
    p = (name + strlen(name)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    while ((p > name) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
        p -= 1;
    }
    p[@as(c_uint, @intCast(@as(c_int, 1)))] = '\x00';
    undefine_variable_in_set(name, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(name))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))), origin, null);
    free(@as(?*anyopaque, @ptrCast(@"var")));
}

// src/read.c:1409:19: warning: local variable has opaque type

// src/read.c:1406:1: warning: unable to translate function, demoted to extern
pub extern fn do_define(arg_name: [*c]u8, arg_origin: enum_variable_origin, arg_ebuf: [*c]struct_ebuffer) callconv(.C) ?*struct_variable;

// src/read.c:1565:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:1526:1: warning: unable to translate function, demoted to extern
pub extern fn conditional_line(arg_line: [*c]u8, arg_len: usize, arg_flocp: [*c]const floc) callconv(.C) c_int;

pub fn record_target_var(arg_filenames: [*c]struct_nameseq, arg_defn: [*c]u8, arg_origin: enum_variable_origin, arg_vmod: ?*struct_vmodifiers, arg_flocp: [*c]const floc) callconv(.C) void {
    var filenames = arg_filenames;
    _ = &filenames;
    var defn = arg_defn;
    _ = &defn;
    var origin = arg_origin;
    _ = &origin;
    var vmod = arg_vmod;
    _ = &vmod;
    var flocp = arg_flocp;
    _ = &flocp;
    var nextf: [*c]struct_nameseq = undefined;
    _ = &nextf;
    var global: [*c]struct_variable_set_list = undefined;
    _ = &global;
    global = current_variable_set_list;
    while (filenames != null) : (filenames = nextf) {
        var v: ?*struct_variable = undefined;
        _ = &v;
        var name: [*c]const u8 = filenames.*.name;
        _ = &name;
        var percent: [*c]const u8 = undefined;
        _ = &percent;
        var p: ?*struct_pattern_var = undefined;
        _ = &p;
        nextf = filenames.*.next;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        percent = find_percent_cached(&name);
        if (percent != null) {
            p = create_pattern_var(name, percent);
            p.*.variable.fileinfo = flocp.*;
            v = assign_variable_definition(&p.*.variable, defn);
            _ = @as(c_int, 0);
            v.*.origin = origin;
            if (@as(c_int, @bitCast(v.*.flavor)) == f_simple) {
                v.*.value = allocated_variable_expand_for_file(v.*.value, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
            } else {
                v.*.value = xstrdup(v.*.value);
            }
        } else {
            var f: ?*struct_file = undefined;
            _ = &f;
            f = lookup_file(name);
            if (!(f != null)) {
                f = enter_file(strcache_add(name));
            } else if (f.*.double_colon != null) {
                f = f.*.double_colon;
            }
            initialize_file_variables(f, @as(c_int, 1));
            current_variable_set_list = f.*.variables;
            v = try_variable_definition(flocp, defn, origin, @as(c_int, 1));
            if (!(v != null)) {
                fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("Malformed target-specific variable definition"));
            }
            current_variable_set_list = global;
        }
        v.*.per_target = 1;
        v.*.private_var = vmod.*.private_v;
        if (@as(c_int, @bitCast(vmod.*.export_v)) != v_default) {
            v.*.@"export" = vmod.*.export_v;
        }
        if (@as(c_int, @bitCast(v.*.origin)) != o_override) {
            var gv: ?*struct_variable = undefined;
            _ = &gv;
            var len: usize = strlen(v.*.name);
            _ = &len;
            gv = lookup_variable(v.*.name, len);
            if (((gv != null) and (v != gv)) and ((@as(c_int, @bitCast(gv.*.origin)) == o_env_override) or (@as(c_int, @bitCast(gv.*.origin)) == o_command))) {
                free(@as(?*anyopaque, @ptrCast(v.*.value)));
                v.*.value = xstrdup(gv.*.value);
                v.*.origin = gv.*.origin;
                v.*.recursive = gv.*.recursive;
                v.*.append = 0;
            }
        }
    }
}

pub fn check_specials(arg_files: [*c]struct_nameseq, arg_set_default: c_int) callconv(.C) void {
    var files = arg_files;
    _ = &files;
    var set_default = arg_set_default;
    _ = &set_default;
    var t: [*c]struct_nameseq = undefined;
    _ = &t;
    {
        t = files;
        while (t != @as([*c]struct_nameseq, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (t = t.*.next) {
            var nm: [*c]const u8 = t.*.name;
            _ = &nm;
            if (!(posix_pedantic != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".POSIX")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".POSIX".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".POSIX" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                posix_pedantic = 1;
                _ = define_variable_in_set(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-ec", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("CC", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "c99", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("CFLAGS", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-O1", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("FC", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "fort77", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("FFLAGS", @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-O1", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("SCCSGETFLAGS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-s", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                _ = define_variable_in_set("ARFLAGS", @sizeOf([8]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "-rv", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                continue;
            }
            if (!(second_expansion != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".SECONDEXPANSION")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".SECONDEXPANSION".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".SECONDEXPANSION" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                second_expansion = 1;
                continue;
            }
            if (!(one_shell != 0) and ((nm == @as([*c]const u8, @ptrCast(@alignCast(".ONESHELL")))) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, ".ONESHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".ONESHELL" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                one_shell = 1;
                continue;
            }
            if ((set_default != 0) and (@as(c_int, @bitCast(@as(c_uint, default_goal_var.*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) {
                var d: ?*struct_dep = undefined;
                _ = &d;
                var reject: c_int = 0;
                _ = &reject;
                if (strchr(nm, @as(c_int, '%')) != null) break;
                if ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '.')) and (strchr(nm, @as(c_int, '/')) == null)) continue;
                {
                    d = suffix_file.*.deps;
                    while (d != null) : (d = d.*.next) {
                        var d2: ?*struct_dep = undefined;
                        _ = &d2;
                        if ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) != @as(c_int, '.')) and ((nm == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, nm.*))) == @as(c_int, '\x00')) or !(strcmp(nm + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
                            reject = 1;
                            break;
                        }
                        {
                            d2 = suffix_file.*.deps;
                            while (d2 != null) : (d2 = d2.*.next) {
                                var l: usize = strlen(if (d2.*.name != null) d2.*.name else d2.*.file.*.name);
                                _ = &l;
                                if (!(strncmp(nm, if (d2.*.name != null) d2.*.name else d2.*.file.*.name, l) == @as(c_int, 0))) continue;
                                if (((nm + l) == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, (nm + l).*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (nm + l).*))) == @as(c_int, '\x00')) or !(strcmp((nm + l) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
                                    reject = 1;
                                    break;
                                }
                            }
                        }
                        if (reject != 0) break;
                    }
                }
                if (!(reject != 0)) {
                    _ = define_variable_in_set(".DEFAULT_GOAL", @as(usize, @bitCast(@as(c_long, @as(c_int, 13)))), t.*.name, @as(c_uint, @bitCast(o_file)), @as(c_int, 0), null, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                }
            }
        }
    }
}

pub fn check_special_file(arg_file_1: ?*struct_file, arg_flocp: [*c]const floc) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var flocp = arg_flocp;
    _ = &flocp;
    if ((file_1.*.name == @as([*c]const u8, @ptrCast(@alignCast(".WAIT")))) or ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".WAIT".*)))) and ((@as(c_int, @bitCast(@as(c_uint, file_1.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(file_1.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".WAIT" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        const wpre = struct {
            var static: c_uint = 0;
        };
        _ = &wpre;
        const wcmd = struct {
            var static: c_uint = 0;
        };
        _ = &wcmd;
        if (!(wpre.static != 0) and (file_1.*.deps != null)) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".WAIT should not have prerequisites"));
            wpre.static = 1;
        }
        if (!(wcmd.static != 0) and (file_1.*.cmds != null)) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".WAIT should not have commands"));
            wcmd.static = 1;
        }
        return;
    }
}

pub fn record_files(arg_filenames: [*c]struct_nameseq, arg_are_also_makes: c_int, arg_pattern: [*c]const u8, arg_pattern_percent: [*c]const u8, arg_depstr: [*c]u8, arg_cmds_started: c_uint, arg_commands_1: [*c]u8, arg_commands_idx: usize, arg_two_colon: c_int, arg_prefix: u8, arg_flocp: [*c]const floc) callconv(.C) void {
    var filenames = arg_filenames;
    _ = &filenames;
    var are_also_makes = arg_are_also_makes;
    _ = &are_also_makes;
    var pattern = arg_pattern;
    _ = &pattern;
    var pattern_percent = arg_pattern_percent;
    _ = &pattern_percent;
    var depstr = arg_depstr;
    _ = &depstr;
    var cmds_started = arg_cmds_started;
    _ = &cmds_started;
    var commands_1 = arg_commands_1;
    _ = &commands_1;
    var commands_idx = arg_commands_idx;
    _ = &commands_idx;
    var two_colon = arg_two_colon;
    _ = &two_colon;
    var prefix = arg_prefix;
    _ = &prefix;
    var flocp = arg_flocp;
    _ = &flocp;
    var cmds: ?*struct_commands = undefined;
    _ = &cmds;
    var deps: ?*struct_dep = undefined;
    _ = &deps;
    var also_make: ?*struct_dep = null;
    _ = &also_make;
    var implicit_percent: [*c]const u8 = undefined;
    _ = &implicit_percent;
    var name: [*c]const u8 = undefined;
    _ = &name;
    if (snapped_deps != 0) {
        fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("prerequisites cannot be defined in recipes"));
    }
    name = filenames.*.name;
    implicit_percent = find_percent_cached(&name);
    if (commands_idx > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        cmds = @as(?*struct_commands, @ptrCast(xmalloc(@sizeOf(struct_commands))));
        cmds.*.fileinfo.filenm = flocp.*.filenm;
        cmds.*.fileinfo.lineno = @as(c_ulong, @bitCast(@as(c_ulong, cmds_started)));
        cmds.*.fileinfo.offset = 0;
        cmds.*.commands = xstrndup(commands_1, commands_idx);
        cmds.*.command_lines = null;
        cmds.*.recipe_prefix = prefix;
    } else if (are_also_makes != 0) {
        fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("grouped targets must provide a recipe"));
    } else {
        cmds = null;
    }
    if (depstr == null) {
        deps = null;
    } else {
        depstr = unescape_char(depstr, @as(c_int, ':'));
        if ((second_expansion != 0) and (strchr(depstr, @as(c_int, '$')) != null)) {
            deps = @as(?*struct_dep, @ptrCast(xcalloc(@sizeOf(struct_dep))));
            deps.*.name = depstr;
            deps.*.need_2nd_expansion = 1;
            deps.*.staticpattern = @as(c_uint, @intFromBool(pattern != null));
        } else {
            deps = split_prereqs(depstr);
            free(@as(?*anyopaque, @ptrCast(depstr)));
            if (!(pattern != null) and !(implicit_percent != null)) {
                deps = enter_prereqs(deps, null);
            }
        }
    }
    if (implicit_percent != null) {
        var nextf: [*c]struct_nameseq = undefined;
        _ = &nextf;
        var targets: [*c][*c]const u8 = undefined;
        _ = &targets;
        var target_pats: [*c][*c]const u8 = undefined;
        _ = &target_pats;
        var c: c_ushort = undefined;
        _ = &c;
        if (pattern != null) {
            fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("mixed implicit and static pattern rules"));
        }
        nextf = filenames.*.next;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        filenames = nextf;
        {
            c = 1;
            while (nextf != null) : (_ = blk: {
                c +%= 1;
                break :blk blk_1: {
                    const tmp = nextf.*.next;
                    nextf = tmp;
                    break :blk_1 tmp;
                };
            }) {}
        }
        targets = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, c))) *% @sizeOf([*c]const u8)))));
        target_pats = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, c))) *% @sizeOf([*c]const u8)))));
        targets[@as(c_uint, @intCast(@as(c_int, 0)))] = name;
        target_pats[@as(c_uint, @intCast(@as(c_int, 0)))] = implicit_percent;
        c = 1;
        while (filenames != null) {
            name = filenames.*.name;
            implicit_percent = find_percent_cached(&name);
            if (implicit_percent == null) {
                fatal(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("mixed implicit and normal rules"));
            }
            targets[c] = name;
            target_pats[c] = implicit_percent;
            c +%= 1;
            nextf = filenames.*.next;
            free(@as(?*anyopaque, @ptrCast(filenames)));
            filenames = nextf;
        }
        create_pattern_rule(targets, target_pats, c, two_colon, deps, cmds, @as(c_int, 1));
        return;
    }
    while (true) {
        var nextf: [*c]struct_nameseq = filenames.*.next;
        _ = &nextf;
        var f: ?*struct_file = undefined;
        _ = &f;
        var this: ?*struct_dep = null;
        _ = &this;
        free(@as(?*anyopaque, @ptrCast(filenames)));
        if ((pattern != null) and !(pattern_matches(pattern, pattern_percent, name) != 0)) {
            @"error"(flocp, strlen(name), gettext("target '%s' doesn't match the target pattern"), name);
        } else if (deps != null) {
            this = if (nextf != null) copy_dep_chain(deps) else deps;
        }
        if (!(two_colon != 0)) {
            f = enter_file(strcache_add(name));
            if (f.*.double_colon != null) {
                fatal(flocp, strlen(f.*.name), gettext("target file '%s' has both : and :: entries"), f.*.name);
            }
            if ((cmds != null) and (cmds == f.*.cmds)) {
                @"error"(flocp, strlen(f.*.name), gettext("target '%s' given more than once in the same rule"), f.*.name);
            } else if (((cmds != null) and (f.*.cmds != null)) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
                var l: usize = strlen(f.*.name);
                _ = &l;
                @"error"(&cmds.*.fileinfo, l, gettext("warning: overriding recipe for target '%s'"), f.*.name);
                @"error"(&f.*.cmds.*.fileinfo, l, gettext("warning: ignoring old recipe for target '%s'"), f.*.name);
            }
            if (((f == default_file) and (this == null)) and (cmds == null)) {
                f.*.cmds = null;
            }
            if (cmds != null) {
                f.*.cmds = cmds;
            }
            if ((f == suffix_file) and (this == null)) {
                free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(f.*.deps))));
                f.*.deps = null;
            }
            f.*.is_explicit = 1;
        } else {
            f = lookup_file(name);
            if (((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) and !(f.*.double_colon != null)) {
                fatal(flocp, strlen(f.*.name), gettext("target file '%s' has both : and :: entries"), f.*.name);
            }
            f = enter_file(strcache_add(name));
            if (f.*.double_colon == null) {
                f.*.double_colon = f;
            }
            f.*.cmds = cmds;
        }
        if (are_also_makes != 0) {
            var also: ?*struct_dep = @as(?*struct_dep, @ptrCast(xcalloc(@sizeOf(struct_dep))));
            _ = &also;
            also.*.name = f.*.name;
            also.*.file = f;
            also.*.next = also_make;
            also_make = also;
        }
        f.*.is_target = 1;
        if (pattern != null) {
            const percent = struct {
                var static: [*c]const u8 = "%";
            };
            _ = &percent;
            var o: [*c]u8 = patsubst_expand_pat(variable_buffer, name, pattern, percent.static, pattern_percent + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), percent.static + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
            _ = &o;
            f.*.stem = strcache_add_len(variable_buffer, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(o) -% @intFromPtr(variable_buffer))), @sizeOf(u8)))));
            if (this != null) {
                if (!(this.*.need_2nd_expansion != 0)) {
                    this = enter_prereqs(this, f.*.stem);
                } else {
                    this.*.stem = f.*.stem;
                }
            }
        }
        if (this != null) {
            if (f.*.deps == null) {
                f.*.deps = this;
            } else if (cmds != null) {
                var d: ?*struct_dep = this;
                _ = &d;
                while (d.*.next != null) {
                    d = d.*.next;
                }
                d.*.next = f.*.deps;
                f.*.deps = this;
            } else {
                var d: ?*struct_dep = f.*.deps;
                _ = &d;
                while (d.*.next != null) {
                    d = d.*.next;
                }
                d.*.next = this;
            }
        }
        name = f.*.name;
        check_special_file(f, flocp);
        if (nextf == null) break;
        filenames = nextf;
        name = filenames.*.name;
        if (find_percent_cached(&name) != null) {
            @"error"(flocp, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("*** mixed implicit and normal rules: deprecated syntax"));
        }
    }
    {
        var i: ?*struct_dep = undefined;
        _ = &i;
        {
            i = also_make;
            while (i != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (i = i.*.next) {
                var f: ?*struct_file = i.*.file;
                _ = &f;
                var cpy: ?*struct_dep = if (i.*.next != null) copy_dep_chain(also_make) else also_make;
                _ = &cpy;
                if (f.*.also_make != null) {
                    @"error"(&cmds.*.fileinfo, strlen(f.*.name), gettext("warning: overriding group membership for target '%s'"), f.*.name);
                    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(f.*.also_make))));
                }
                f.*.also_make = cpy;
            }
        }
    }
}

pub fn find_map_unquote(arg_string: [*c]u8, arg_stopmap: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var stopmap = arg_stopmap;
    _ = &stopmap;
    var string_len: usize = 0;
    _ = &string_len;
    var p: [*c]u8 = string;
    _ = &p;
    stopmap |= @as(c_int, 1);
    while (true) {
        while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stopmap) != @as(c_int, 0))) {
            p += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) break;
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '$')) {
            var openparen: u8 = p[@as(c_uint, @intCast(@as(c_int, 1)))];
            _ = &openparen;
            if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '\x00')) break;
            p += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            if ((@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) or (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '{'))) {
                var pcount: c_uint = 1;
                _ = &pcount;
                var closeparen: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) @as(c_int, ')') else @as(c_int, '}')))));
                _ = &closeparen;
                while (p.* != 0) {
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
                        pcount +%= 1;
                    } else if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) if ((blk: {
                        const ref = &pcount;
                        ref.* -%= 1;
                        break :blk ref.*;
                    }) == @as(c_uint, @bitCast(@as(c_int, 0)))) {
                        p += 1;
                        break;
                    };
                    p += 1;
                }
            }
            continue;
        }
        if ((p > string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            var i: c_int = -@as(c_int, 2);
            _ = &i;
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
            if (string_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                string_len = strlen(string);
            }
            {
                var hi: c_int = -@divTrunc(i, @as(c_int, 2));
                _ = &hi;
                _ = memmove(@as(?*anyopaque, @ptrCast(&(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast(&(blk: {
                    const tmp = @divTrunc(i, @as(c_int, 2));
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), ((string_len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(string))), @sizeOf(u8))))) +% @as(usize, @bitCast(@as(c_long, hi)))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                p += @as(usize, @bitCast(@as(isize, @intCast(@divTrunc(i, @as(c_int, 2))))));
            }
            if (@import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)) == @as(c_int, 0)) return p;
        } else return p;
    }
    return null;
}

pub fn find_char_unquote(arg_string: [*c]u8, arg_stop: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var stop = arg_stop;
    _ = &stop;
    var string_len: usize = 0;
    _ = &string_len;
    var p: [*c]u8 = string;
    _ = &p;
    while (true) {
        p = strchr(p, stop);
        if (!(p != null)) return null;
        if ((p > string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '\\'))) {
            var i: c_int = -@as(c_int, 2);
            _ = &i;
            while (((&(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) >= string) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\\'))) {
                i -= 1;
            }
            i += 1;
            if (string_len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                string_len = strlen(string);
            }
            {
                var hi: c_int = -@divTrunc(i, @as(c_int, 2));
                _ = &hi;
                _ = memmove(@as(?*anyopaque, @ptrCast(&(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast(&(blk: {
                    const tmp = @divTrunc(i, @as(c_int, 2));
                    if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), ((string_len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(string))), @sizeOf(u8))))) +% @as(usize, @bitCast(@as(c_long, hi)))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                p += @as(usize, @bitCast(@as(isize, @intCast(@divTrunc(i, @as(c_int, 2))))));
            }
            if (@import("std").zig.c_translation.signedRemainder(i, @as(c_int, 2)) == @as(c_int, 0)) return p;
        } else return p;
    }
    return null;
}

pub fn unescape_char(arg_string: [*c]u8, arg_c: c_int) callconv(.C) [*c]u8 {
    var string = arg_string;
    _ = &string;
    var c = arg_c;
    _ = &c;
    var p: [*c]u8 = string;
    _ = &p;
    var s: [*c]u8 = string;
    _ = &s;
    while (@as(c_int, @bitCast(@as(c_uint, s.*))) != @as(c_int, '\x00')) {
        if (@as(c_int, @bitCast(@as(c_uint, s.*))) == @as(c_int, '\\')) {
            var e: [*c]u8 = s;
            _ = &e;
            var l: usize = undefined;
            _ = &l;
            while (@as(c_int, @bitCast(@as(c_uint, e.*))) == @as(c_int, '\\')) {
                e += 1;
            }
            l = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(e) -% @intFromPtr(s))), @sizeOf(u8))));
            if ((@as(c_int, @bitCast(@as(c_uint, e.*))) != c) or ((l % @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) == @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) {
                _ = memmove(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(s)), l);
                p += @as([*c]u8, @ptrFromInt(l));
                if (@as(c_int, @bitCast(@as(c_uint, e.*))) == @as(c_int, '\x00')) break;
            } else if (l > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) {
                l /= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
                _ = memmove(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(s)), l);
                p += @as([*c]u8, @ptrFromInt(l));
            }
            s = e;
        }
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    p.* = '\x00';
    return string;
}

pub export fn find_percent(arg_pattern: [*c]u8) [*c]u8 {
    var pattern = arg_pattern;
    _ = &pattern;
    return find_char_unquote(pattern, @as(c_int, '%'));
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/read.c:2540:1: warning: unable to translate function, demoted to extern
pub extern fn find_percent_cached(arg_string: [*c][*c]const u8) [*c]const u8;

pub fn readstring(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long {
    var ebuf = arg_ebuf;
    _ = &ebuf;
    var eol: [*c]u8 = undefined;
    _ = &eol;
    if (ebuf.*.bufnext >= (ebuf.*.bufstart + ebuf.*.size)) return @as(c_long, @bitCast(@as(c_long, -@as(c_int, 1))));
    eol = blk: {
        const tmp = ebuf.*.bufnext;
        ebuf.*.buffer = tmp;
        break :blk tmp;
    };
    while (true) {
        var backslash: c_int = 0;
        _ = &backslash;
        var bol: [*c]const u8 = eol;
        _ = &bol;
        var p: [*c]const u8 = undefined;
        _ = &p;
        p = blk: {
            const tmp = strchr(eol, @as(c_int, '\n'));
            eol = tmp;
            break :blk tmp;
        };
        if (!(eol != null)) {
            ebuf.*.bufnext = (ebuf.*.bufstart + ebuf.*.size) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            return 0;
        }
        while ((p > bol) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const ref = &p;
            ref.* -= 1;
            break :blk ref.*;
        }).*))) == @as(c_int, '\\'))) {
            backslash = @intFromBool(!(backslash != 0));
        }
        if (!(backslash != 0)) break;
        eol += 1;
    }
    eol.* = '\x00';
    ebuf.*.bufnext = eol + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    return 0;
}

// src/read.c:2697:9: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:2651:1: warning: unable to translate function, demoted to extern
pub extern fn readline(arg_ebuf: [*c]struct_ebuffer) callconv(.C) c_long;

// src/read.c:2794:7: warning: TODO implement translation of stmt class GotoStmtClass

// src/read.c:2776:1: warning: unable to translate function, demoted to extern
pub extern fn get_next_mword(arg_buffer: [*c]u8, arg_startp: [*c][*c]u8, arg_length: [*c]usize) callconv(.C) enum_make_word_type;

pub export fn construct_include_path(arg_arg_dirs: [*c][*c]const u8) void {
    var arg_dirs = arg_arg_dirs;
    _ = &arg_dirs;
    var stbuf: struct_stat = undefined;
    _ = &stbuf;
    var dirs: [*c][*c]const u8 = undefined;
    _ = &dirs;
    var cpp: [*c][*c]const u8 = undefined;
    _ = &cpp;
    var idx: usize = undefined;
    _ = &idx;
    var disable: c_int = 0;
    _ = &disable;
    idx = @sizeOf([4][*c]const u8) / @sizeOf([*c]const u8);
    if (arg_dirs != null) {
        cpp = arg_dirs;
        while (cpp.* != null) : (cpp += 1) {
            idx +%= 1;
        }
    }
    dirs = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(idx *% @sizeOf([*c]const u8)))));
    idx = 0;
    max_incl_len = 0;
    if (arg_dirs != null) while (arg_dirs.* != null) {
        var dir: [*c]const u8 = (blk: {
            const ref = &arg_dirs;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &dir;
        var expanded: [*c]u8 = null;
        _ = &expanded;
        var e: c_int = undefined;
        _ = &e;
        if ((@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '-')) and (@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
            disable = 1;
            idx = 0;
            max_incl_len = 0;
            continue;
        }
        if (@as(c_int, @bitCast(@as(c_uint, dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
            expanded = tilde_expand(dir);
            if (expanded != null) {
                dir = expanded;
            }
        }
        while (((blk: {
            const tmp = stat(dir, &stbuf);
            e = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if ((e == @as(c_int, 0)) and ((stbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
            var len: usize = strlen(dir);
            _ = &len;
            while ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, dir[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '/'))) {
                len -%= 1;
            }
            if (len > max_incl_len) {
                max_incl_len = len;
            }
            dirs[
                blk: {
                    const ref = &idx;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = strcache_add_len(dir, len);
        }
        free(@as(?*anyopaque, @ptrCast(expanded)));
    };
    if (!(disable != 0)) {
        {
            cpp = @as([*c][*c]const u8, @ptrCast(@alignCast(&default_include_directories)));
            while (cpp.* != null) : (cpp += 1) {
                var e: c_int = undefined;
                _ = &e;
                while (((blk: {
                    const tmp = stat(cpp.*, &stbuf);
                    e = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if ((e == @as(c_int, 0)) and ((stbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 16384))))) {
                    var len: usize = strlen(cpp.*);
                    _ = &len;
                    while ((len > @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, cpp.*[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '/'))) {
                        len -%= 1;
                    }
                    if (len > max_incl_len) {
                        max_incl_len = len;
                    }
                    dirs[
                        blk: {
                            const ref = &idx;
                            const tmp = ref.*;
                            ref.* +%= 1;
                            break :blk tmp;
                        }
                    ] = strcache_add_len(cpp.*, len);
                }
            }
        }
    }
    dirs[idx] = null;
    _ = do_variable_definition(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ".INCLUDE_DIRS", "", @as(c_uint, @bitCast(o_default)), @as(c_uint, @bitCast(f_simple)), @as(c_int, 0));
    {
        cpp = dirs;
        while (cpp.* != null) : (cpp += 1) {
            _ = do_variable_definition(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ".INCLUDE_DIRS", cpp.*, @as(c_uint, @bitCast(o_default)), @as(c_uint, @bitCast(f_append)), @as(c_int, 0));
        }
    }
    free(@as(?*anyopaque, @ptrCast(include_directories)));
    include_directories = dirs;
}

pub export fn tilde_expand(arg_name: [*c]const u8) [*c]u8 {
    var name = arg_name;
    _ = &name;
    if ((@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/')) or (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
        var home_dir: [*c]u8 = undefined;
        _ = &home_dir;
        var is_variable: c_int = undefined;
        _ = &is_variable;
        {
            var save: c_int = warn_undefined_variables_flag;
            _ = &save;
            warn_undefined_variables_flag = 0;
            home_dir = allocated_variable_expand_for_file("$(HOME)", @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
            warn_undefined_variables_flag = save;
        }
        is_variable = @intFromBool(@as(c_int, @bitCast(@as(c_uint, home_dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'));
        if (!(is_variable != 0)) {
            free(@as(?*anyopaque, @ptrCast(home_dir)));
            home_dir = getenv("HOME");
        }
        if ((home_dir == null) or (@as(c_int, @bitCast(@as(c_uint, home_dir[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) {
            var logname: [*c]u8 = getlogin();
            _ = &logname;
            home_dir = null;
            if (logname != null) {
                var p: [*c]struct_passwd = getpwnam(logname);
                _ = &p;
                if (p != null) {
                    home_dir = p.*.pw_dir;
                }
            }
        }
        if (home_dir != null) {
            var new: [*c]u8 = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 2))), home_dir, name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))));
            _ = &new;
            if (is_variable != 0) {
                free(@as(?*anyopaque, @ptrCast(home_dir)));
            }
            return new;
        }
    } else {
        var pwent: [*c]struct_passwd = undefined;
        _ = &pwent;
        var userend: [*c]u8 = strchr(name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, '/'));
        _ = &userend;
        if (userend != null) {
            userend.* = '\x00';
        }
        pwent = getpwnam(name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        if (pwent != null) {
            if (userend == null) return xstrdup(pwent.*.pw_dir);
            userend.* = '/';
            return xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 3))), pwent.*.pw_dir, "/", userend + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))));
        } else if (userend != null) {
            userend.* = '/';
        }
    }
    return null;
}

pub export fn parse_file_seq(arg_stringp: [*c][*c]u8, arg_size: usize, arg_stopmap: c_int, arg_prefix: [*c]const u8, arg_flags: c_int) ?*anyopaque {
    var stringp = arg_stringp;
    _ = &stringp;
    var size = arg_size;
    _ = &size;
    var stopmap = arg_stopmap;
    _ = &stopmap;
    var prefix = arg_prefix;
    _ = &prefix;
    var flags = arg_flags;
    _ = &flags;
    const tmpbuf = struct {
        var static: [*c]u8 = null;
    };
    _ = &tmpbuf;
    var cachep: c_int = @intFromBool(!((flags & @as(c_int, 16)) != @as(c_int, 0)));
    _ = &cachep;
    var new: [*c]struct_nameseq = null;
    _ = &new;
    var newp: [*c][*c]struct_nameseq = &new;
    _ = &newp;
    var p: [*c]u8 = undefined;
    _ = &p;
    var gl: glob_t = undefined;
    _ = &gl;
    var tp: [*c]u8 = undefined;
    _ = &tp;
    var findmap: c_int = (stopmap | @as(c_int, 0)) | @as(c_int, 1);
    _ = &findmap;
    var found_wait: c_int = 0;
    _ = &found_wait;
    if (!((flags & @as(c_int, 32)) != @as(c_int, 0))) {
        findmap |= @as(c_int, 2);
    }
    stopmap |= @as(c_int, 1);
    if (size < @sizeOf(struct_nameseq)) {
        size = @sizeOf(struct_nameseq);
    }
    if (!((flags & @as(c_int, 4)) != @as(c_int, 0))) {
        dir_setup_glob(&gl);
    }
    {
        const tmpbuf_len = struct {
            var static: usize = 0;
        };
        _ = &tmpbuf_len;
        var l: usize = strlen(stringp.*) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
        _ = &l;
        if (l > tmpbuf_len.static) {
            tmpbuf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(tmpbuf.static)), l))));
            tmpbuf_len.static = l;
        }
    }
    tp = tmpbuf.static;
    p = stringp.*;
    while (true) {
        var name: [*c]const u8 = undefined;
        _ = &name;
        var nlist: [*c][*c]const u8 = null;
        _ = &nlist;
        var tildep: [*c]u8 = null;
        _ = &tildep;
        var globme: c_int = 1;
        _ = &globme;
        var arname: [*c]u8 = null;
        _ = &arname;
        var memname: [*c]u8 = null;
        _ = &memname;
        var s: [*c]u8 = undefined;
        _ = &s;
        var nlen: usize = undefined;
        _ = &nlen;
        var tot: c_int = undefined;
        _ = &tot;
        var i: c_int = undefined;
        _ = &i;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stopmap) != @as(c_int, 0)) break;
        s = p;
        p = find_map_unquote(p, findmap);
        if (!(p != null)) {
            p = s + strlen(s);
        }
        if ((((flags & @as(c_int, 64)) != @as(c_int, 0)) and (@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8)))) == (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) and (memcmp(@as(?*const anyopaque, @ptrCast(s)), @as(?*const anyopaque, @ptrCast(".WAIT")), @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0))) {
            found_wait = 1;
            continue;
        }
        if (!((flags & @as(c_int, 1)) != @as(c_int, 0))) while (((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8)) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) and (@as(c_int, @bitCast(@as(c_uint, s[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, s[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/'))) {
            s += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
            while (@as(c_int, @bitCast(@as(c_uint, s.*))) == @as(c_int, '/')) {
                s += 1;
            }
        };
        if (s == p) {
            tp[@as(c_uint, @intCast(@as(c_int, 0)))] = '.';
            tp[@as(c_uint, @intCast(@as(c_int, 1)))] = '/';
            tp[@as(c_uint, @intCast(@as(c_int, 2)))] = '\x00';
            nlen = 2;
        } else {
            nlen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(s))), @sizeOf(u8))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(tp)), @as(?*const anyopaque, @ptrCast(s)), nlen);
            tp[nlen] = '\x00';
        }
        if (((!((flags & @as(c_int, 2)) != @as(c_int, 0)) and (tp == tmpbuf.static)) and (@as(c_int, @bitCast(@as(c_uint, tp[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '('))) and (@as(c_int, @bitCast(@as(c_uint, tp[nlen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, ')'))) {
            var n: [*c]u8 = strchr(tp, @as(c_int, '('));
            _ = &n;
            if (n != null) {
                var e: [*c]const u8 = p;
                _ = &e;
                while (true) {
                    var o: [*c]const u8 = e;
                    _ = &o;
                    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
                        e += 1;
                    }
                    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(e.*))]))) & findmap) != @as(c_int, 0))) {
                        e += 1;
                    }
                    if (e == o) break;
                    if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = -@as(c_int, 1);
                        if (tmp >= 0) break :blk e + @as(usize, @intCast(tmp)) else break :blk e - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) == @as(c_int, ')')) {
                        nlen -%= @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(n + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) -% @intFromPtr(tp))), @sizeOf(u8))));
                        tp = n + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                        break;
                    }
                    if (!(@as(c_int, @bitCast(@as(c_uint, e.*))) != @as(c_int, '\x00'))) break;
                }
                if (!(nlen != 0)) continue;
            }
        }
        if (tp > tmpbuf.static) {
            if (@as(c_int, @bitCast(@as(c_uint, tp[nlen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, ')')) {
                tp = tmpbuf.static;
                if (nlen == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) continue;
            } else {
                tp[
                    blk: {
                        const ref = &nlen;
                        const tmp = ref.*;
                        ref.* +%= 1;
                        break :blk tmp;
                    }
                ] = ')';
                tp[nlen] = '\x00';
            }
        }
        if ((flags & @as(c_int, 4)) != @as(c_int, 0)) {
            while (true) {
                var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                _ = &_ns;
                var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, tmpbuf.static);
                _ = &__n;
                _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                if (found_wait != 0) {
                    @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
                    found_wait = 0;
                }
                newp.* = _ns;
                newp = &_ns.*.next;
                if (!false) break;
            }
            continue;
        }
        name = tmpbuf.static;
        if (@as(c_int, @bitCast(@as(c_uint, tmpbuf.static[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
            tildep = tilde_expand(tmpbuf.static);
            if (tildep != null) {
                name = tildep;
            }
        }
        if (!((flags & @as(c_int, 2)) != @as(c_int, 0)) and (ar_name(name) != 0)) {
            ar_parse_name(name, &arname, &memname);
            name = arname;
        }
        if (!((flags & @as(c_int, 8)) != @as(c_int, 0)) and (strpbrk(name, "?*[") == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
            globme = 0;
            tot = 1;
            nlist = &name;
        } else {
            while (true) {
                switch (glob(name, @as(c_int, 1) << @intCast(9), null, &gl)) {
                    @as(c_int, 1) => {
                        out_of_memory();
                        tot = @as(c_int, @bitCast(@as(c_uint, @truncate(gl.gl_pathc))));
                        nlist = @as([*c][*c]const u8, @ptrCast(@alignCast(gl.gl_pathv)));
                        break;
                    },
                    @as(c_int, 0) => {
                        tot = @as(c_int, @bitCast(@as(c_uint, @truncate(gl.gl_pathc))));
                        nlist = @as([*c][*c]const u8, @ptrCast(@alignCast(gl.gl_pathv)));
                        break;
                    },
                    @as(c_int, 3) => {
                        if ((flags & @as(c_int, 8)) != @as(c_int, 0)) {
                            tot = 0;
                            break;
                        }
                        tot = 1;
                        nlist = &name;
                        break;
                    },
                    else => {
                        tot = 1;
                        nlist = &name;
                        break;
                    },
                }
                break;
            }
        }
        {
            i = 0;
            while (i < tot) : (i += 1) if (memname != null) {
                var found: [*c]struct_nameseq = ar_glob((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, memname, size);
                _ = &found;
                if (!(found != null)) {
                    while (true) {
                        var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                        _ = &_ns;
                        var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 5))), prefix, (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*, "(", memname, ")");
                        _ = &__n;
                        _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                        if (found_wait != 0) {
                            @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
                            found_wait = 0;
                        }
                        newp.* = _ns;
                        newp = &_ns.*.next;
                        if (!false) break;
                    }
                } else {
                    if (newp.* != null) {
                        newp.*.*.next = found;
                    } else {
                        newp.* = found;
                    }
                    while (true) {
                        if (!(cachep != 0)) {
                            found.*.name = xstrdup(concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, name));
                        } else if (prefix != null) {
                            found.*.name = strcache_add(concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, name));
                        }
                        if (found.*.next == null) break;
                        found = found.*.next;
                    }
                    newp = &found.*.next;
                }
            } else while (true) {
                var _ns: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(size))));
                _ = &_ns;
                var __n: [*c]const u8 = concat(@as(c_uint, @bitCast(@as(c_int, 2))), prefix, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk nlist + @as(usize, @intCast(tmp)) else break :blk nlist - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*);
                _ = &__n;
                _ns.*.name = if (cachep != 0) strcache_add(__n) else @as([*c]const u8, @ptrCast(@alignCast(xstrdup(__n))));
                if (found_wait != 0) {
                    @as(?*struct_dep, @ptrCast(_ns)).*.wait_here = 1;
                    found_wait = 0;
                }
                newp.* = _ns;
                newp = &_ns.*.next;
                if (!false) break;
            };
        }
        if (globme != 0) {
            globfree(&gl);
        }
        free(@as(?*anyopaque, @ptrCast(arname)));
        free(@as(?*anyopaque, @ptrCast(tildep)));
    }
    stringp.* = p;
    return @as(?*anyopaque, @ptrCast(new));
}
