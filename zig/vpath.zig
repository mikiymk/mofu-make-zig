const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

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

const __sig_atomic_t = c_int;

const time_t = __time_t;

const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
const sigset_t = __sigset_t;

const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
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

const sig_atomic_t = __sig_atomic_t;

const stack_t = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
    ss_size: usize = @import("std").mem.zeroes(usize),
};
const greg_t = c_longlong;
const gregset_t = [23]greg_t;

const struct__libc_fpxreg = extern struct {
    significand: [4]c_ushort = @import("std").mem.zeroes([4]c_ushort),
    exponent: c_ushort = @import("std").mem.zeroes(c_ushort),
    __glibc_reserved1: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
};
const struct__libc_xmmreg = extern struct {
    element: [4]__uint32_t = @import("std").mem.zeroes([4]__uint32_t),
};
const struct__libc_fpstate = extern struct {
    cwd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    swd: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    ftw: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    fop: __uint16_t = @import("std").mem.zeroes(__uint16_t),
    rip: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    rdp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    mxcsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    mxcr_mask: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    _st: [8]struct__libc_fpxreg = @import("std").mem.zeroes([8]struct__libc_fpxreg),
    _xmm: [16]struct__libc_xmmreg = @import("std").mem.zeroes([16]struct__libc_xmmreg),
    __glibc_reserved1: [24]__uint32_t = @import("std").mem.zeroes([24]__uint32_t),
};
const fpregset_t = [*c]struct__libc_fpstate;
const mcontext_t = extern struct {
    gregs: gregset_t = @import("std").mem.zeroes(gregset_t),
    fpregs: fpregset_t = @import("std").mem.zeroes(fpregset_t),
    __reserved1: [8]c_ulonglong = @import("std").mem.zeroes([8]c_ulonglong),
};
const struct_ucontext_t = extern struct {
    uc_flags: c_ulong = @import("std").mem.zeroes(c_ulong),
    uc_link: [*c]struct_ucontext_t = @import("std").mem.zeroes([*c]struct_ucontext_t),
    uc_stack: stack_t = @import("std").mem.zeroes(stack_t),
    uc_mcontext: mcontext_t = @import("std").mem.zeroes(mcontext_t),
    uc_sigmask: sigset_t = @import("std").mem.zeroes(sigset_t),
    __fpregs_mem: struct__libc_fpstate = @import("std").mem.zeroes(struct__libc_fpstate),
    __ssp: [4]c_ulonglong = @import("std").mem.zeroes([4]c_ulonglong),
};

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;

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

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;

extern var daylight: c_int;
extern var timezone: c_long;

extern var getdate_err: c_int;

extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

const uintmax_t = __uintmax_t;

const gettext = root.cstd.gettext;

const struct_dep = opaque {};
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

const enum_update_status_36 = c_uint;

const enum_cmd_state_37 = c_uint;
const struct_file = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    hname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    vpath: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    deps: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    cmds: ?*struct_commands = @import("std").mem.zeroes(?*struct_commands),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    also_make: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    prev: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    renamed: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    variables: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    pat_variables: [*c]struct_variable_set_list = @import("std").mem.zeroes([*c]struct_variable_set_list),
    parent: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    double_colon: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last_mtime: uintmax_t = @import("std").mem.zeroes(uintmax_t),
    mtime_before_update: uintmax_t = @import("std").mem.zeroes(uintmax_t),
    considered: c_uint = @import("std").mem.zeroes(c_uint),
    command_flags: c_int = @import("std").mem.zeroes(c_int),
    update_status: enum_update_status_36 = @import("std").mem.zeroes(enum_update_status_36),
    command_state: enum_cmd_state_37 = @import("std").mem.zeroes(enum_cmd_state_37),
    builtin: c_uint = @import("std").mem.zeroes(c_uint),
    precious: c_uint = @import("std").mem.zeroes(c_uint),
    loaded: c_uint = @import("std").mem.zeroes(c_uint),
    unloaded: c_uint = @import("std").mem.zeroes(c_uint),
    low_resolution_time: c_uint = @import("std").mem.zeroes(c_uint),
    tried_implicit: c_uint = @import("std").mem.zeroes(c_uint),
    updating: c_uint = @import("std").mem.zeroes(c_uint),
    updated: c_uint = @import("std").mem.zeroes(c_uint),
    is_target: c_uint = @import("std").mem.zeroes(c_uint),
    cmd_target: c_uint = @import("std").mem.zeroes(c_uint),
    phony: c_uint = @import("std").mem.zeroes(c_uint),
    intermediate: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    secondary: c_uint = @import("std").mem.zeroes(c_uint),
    notintermediate: c_uint = @import("std").mem.zeroes(c_uint),
    dontcare: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_vpath: c_uint = @import("std").mem.zeroes(c_uint),
    pat_searched: c_uint = @import("std").mem.zeroes(c_uint),
    no_diag: c_uint = @import("std").mem.zeroes(c_uint),
    was_shuffled: c_uint = @import("std").mem.zeroes(c_uint),
    snapped: c_uint = @import("std").mem.zeroes(c_uint),
};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

const enum_variable_origin = c_int;

const enum_variable_flavor = c_uint;

const enum_variable_export = c_uint;
const struct_variable = extern struct {
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    value: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    fileinfo: floc = @import("std").mem.zeroes(floc),
    length: c_uint = @import("std").mem.zeroes(c_uint),
    recursive: c_uint = @import("std").mem.zeroes(c_uint),
    append: c_uint = @import("std").mem.zeroes(c_uint),
    conditional: c_uint = @import("std").mem.zeroes(c_uint),
    per_target: c_uint = @import("std").mem.zeroes(c_uint),
    special: c_uint = @import("std").mem.zeroes(c_uint),
    exportable: c_uint = @import("std").mem.zeroes(c_uint),
    expanding: c_uint = @import("std").mem.zeroes(c_uint),
    private_var: c_uint = @import("std").mem.zeroes(c_uint),
    exp_count: c_uint = @import("std").mem.zeroes(c_uint),
    flavor: enum_variable_flavor = @import("std").mem.zeroes(enum_variable_flavor),
    origin: enum_variable_origin = @import("std").mem.zeroes(enum_variable_origin),
    @"export": enum_variable_export = @import("std").mem.zeroes(enum_variable_export),
};

extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn find_percent([*c]u8) [*c]u8;

extern fn dir_file_exists_p([*c]const u8, [*c]const u8) c_int;

extern fn dir_name([*c]const u8) [*c]const u8;

const struct_vpath = extern struct {
    next: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath),
    pattern: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    percent: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    patlen: usize = @import("std").mem.zeroes(usize),
    searchpath: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    maxlen: usize = @import("std").mem.zeroes(usize),
};
export fn build_vpath_lists() void {
    var new: [*c]struct_vpath = null;
    var old: [*c]struct_vpath = undefined;
    var nexto: [*c]struct_vpath = undefined;
    var p: [*c]u8 = undefined;
    {
        old = vpaths;
        while (old != null) : (old = nexto) {
            nexto = old.*.next;
            old.*.next = new;
            new = old;
        }
    }
    vpaths = new;
    p = variable_expand("$(strip $(VPATH))");
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        const save_vpaths: [*c]struct_vpath = vpaths;
        var gp: [1:0]u8 = "%".*;
        vpaths = null;
        construct_vpath_list(@as([*c]u8, @ptrCast(@alignCast(&gp))), p);
        general_vpath = vpaths;
        vpaths = save_vpaths;
    }
    p = variable_expand("$(strip $(GPATH))");
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        const save_vpaths: [*c]struct_vpath = vpaths;
        var gp: [1:0]u8 = "%".*;
        vpaths = null;
        construct_vpath_list(@as([*c]u8, @ptrCast(@alignCast(&gp))), p);
        gpaths = vpaths;
        vpaths = save_vpaths;
    }
}

export fn construct_vpath_list(arg_pattern: [*c]u8, arg_dirpath: [*c]u8) void {
    const pattern = arg_pattern;
    var dirpath = arg_dirpath;
    var elem: c_uint = undefined;
    var p: [*c]u8 = undefined;
    var vpath_1: [*c][*c]const u8 = undefined;
    var maxvpath: usize = undefined;
    var maxelem: c_uint = undefined;
    var percent: [*c]const u8 = null;
    if (pattern != null) {
        percent = find_percent(pattern);
    }
    if (dirpath == null) {
        var path: [*c]struct_vpath = undefined;
        var lastpath: [*c]struct_vpath = undefined;
        lastpath = null;
        path = vpaths;
        while (path != null) {
            const next: [*c]struct_vpath = path.*.next;
            if ((pattern == null) or ((((percent == null) and (path.*.percent == null)) or (@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)) == @divExact(@as(c_long, @bitCast(@intFromPtr(path.*.percent) -% @intFromPtr(path.*.pattern))), @sizeOf(u8)))) and ((pattern == @as([*c]u8, @ptrCast(@volatileCast(@constCast(path.*.pattern))))) or ((@as(c_int, @bitCast(@as(c_uint, pattern.*))) == @as(c_int, @bitCast(@as(c_uint, path.*.pattern.*)))) and ((@as(c_int, @bitCast(@as(c_uint, pattern.*))) == @as(c_int, '\x00')) or !(strcmp(pattern + @as(usize, @bitCast(@as(isize, @intCast(1)))), path.*.pattern + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))))) {
                if (lastpath == null) {
                    vpaths = path.*.next;
                } else {
                    lastpath.*.next = next;
                }
                free(@as(?*anyopaque, @ptrCast(path.*.searchpath)));
                free(@as(?*anyopaque, @ptrCast(path)));
            } else {
                lastpath = path;
            }
            path = next;
        }
        return;
    }
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(dirpath.*))]))) & (2 | @as(c_int, 64))) != 0) {
        dirpath += 1;
    }
    maxelem = 2;
    p = dirpath;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*))
    ]))) & (2 | @as(c_int, 64))) != 0) {
        maxelem +%= 1;
    };
    vpath_1 = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, maxelem))) *% @sizeOf([*c]const u8)))));
    maxvpath = 0;
    elem = 0;
    p = dirpath;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var v: [*c]u8 = undefined;
        var len: usize = undefined;
        v = p;
        while (((@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, ':'))) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & 2) != 0)) {
            p += 1;
        }
        len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(v))), @sizeOf(u8))));
        if ((len > @as(usize, 1)) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -1;
            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '/'))) {
            len -%= 1;
        }
        if ((len > @as(usize, 1)) or (@as(c_int, @bitCast(@as(c_uint, v.*))) != @as(c_int, '.'))) {
            vpath_1[
                blk: {
                    const ref = &elem;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = dir_name(strcache_add_len(v, len));
            if (len > maxvpath) {
                maxvpath = len;
            }
        }
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (2 | @as(c_int, 64))) != 0) {
            p += 1;
        }
    }
    if (elem > @as(c_uint, 0)) {
        var path: [*c]struct_vpath = undefined;
        if (elem < (maxelem -% @as(c_uint, 1))) {
            vpath_1 = @as([*c][*c]const u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(vpath_1)), @as(c_ulong, @bitCast(@as(c_ulong, elem +% @as(c_uint, 1)))) *% @sizeOf([*c]const u8)))));
        }
        vpath_1[elem] = null;
        path = @as([*c]struct_vpath, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_vpath)))));
        path.*.searchpath = vpath_1;
        path.*.maxlen = maxvpath;
        path.*.next = vpaths;
        vpaths = path;
        path.*.pattern = strcache_add(pattern);
        path.*.patlen = strlen(pattern);
        path.*.percent = if (percent != null) path.*.pattern + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(percent) -% @intFromPtr(pattern))), @sizeOf(u8)))))) else null;
    } else {
        free(@as(?*anyopaque, @ptrCast(vpath_1)));
    }
}
export fn vpath_search(arg_file_1: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t, arg_vpath_index: [*c]c_uint, arg_path_index: [*c]c_uint) [*c]const u8 {
    const file_1 = arg_file_1;
    const mtime_ptr = arg_mtime_ptr;
    const vpath_index = arg_vpath_index;
    const path_index = arg_path_index;
    var v: [*c]struct_vpath = undefined;
    if ((@as(c_int, @bitCast(@as(c_uint, file_1[0]))) == @as(c_int, '/')) or ((vpaths == null) and (general_vpath == null))) return null;
    if (vpath_index != null) {
        vpath_index.* = 0;
        path_index.* = 0;
    }
    {
        v = vpaths;
        while (v != null) : (v = v.*.next) {
            if (pattern_matches(v.*.pattern, v.*.percent, file_1) != 0) {
                const p: [*c]const u8 = selective_vpath_search(v, file_1, mtime_ptr, path_index);
                if (p != null) return p;
            }
            if (vpath_index != null) {
                vpath_index.* +%= 1;
            }
        }
    }
    if (general_vpath != null) {
        const p: [*c]const u8 = selective_vpath_search(general_vpath, file_1, mtime_ptr, path_index);
        if (p != null) return p;
    }
    return null;
}
export fn gpath_search(arg_file_1: [*c]const u8, arg_len: usize) c_int {
    const file_1 = arg_file_1;
    const len = arg_len;
    if ((gpaths != null) and (len <= gpaths.*.maxlen)) {
        var gp: [*c][*c]const u8 = undefined;
        {
            gp = gpaths.*.searchpath;
            while (gp.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (gp += 1) if ((strncmp(gp.*, file_1, len) == 0) and (@as(c_int, @bitCast(@as(c_uint, gp.*[len]))) == @as(c_int, '\x00'))) return 1;
        }
    }
    return 0;
}

extern fn strcache_add(str: [*c]const u8) [*c]const u8;
extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

extern var reading_file: [*c]const floc;
extern var expanding_var: [*c][*c]const floc;
const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});
extern var just_print_flag: c_int;
extern var run_silent: c_int;
extern var ignore_errors_flag: c_int;
extern var keep_going_flag: c_int;
extern var print_data_base_flag: c_int;
extern var question_flag: c_int;
extern var touch_flag: c_int;
extern var always_make_flag: c_int;
extern var env_overrides: c_int;
extern var no_builtin_rules_flag: c_int;
extern var no_builtin_variables_flag: c_int;
extern var print_version_flag: c_int;
extern var check_symlink_flag: c_int;
extern var warn_undefined_variables_flag: c_int;
extern var posix_pedantic: c_int;
extern var not_parallel: c_int;
extern var second_expansion: c_int;
extern var clock_skew_detected: c_int;
extern var rebuilding_makefiles: c_int;
extern var one_shell: c_int;
extern var output_sync: c_int;
extern var verify_flag: c_int;
extern var command_count: c_ulong;
extern var default_shell: [*c]const u8;
extern var batch_mode_shell: c_int;
extern var cmd_prefix: u8;
extern var no_intermediates: c_uint;
extern var jobserver_auth: [*c]u8;
extern var job_slots: c_uint;
extern var max_load_average: f64;
extern var program: [*c]const u8;

export fn print_vpath_data_base() void {
    var nvpaths: c_uint = undefined;
    var v: [*c]struct_vpath = undefined;
    _ = puts(gettext("\n# VPATH Search Paths\n"));
    nvpaths = 0;
    {
        v = vpaths;
        while (v != null) : (v = v.*.next) {
            var i: c_uint = undefined;
            nvpaths +%= 1;
            _ = printf("vpath %s ", v.*.pattern);
            {
                i = 0;
                while (v.*.searchpath[i] != null) : (i +%= 1) {
                    _ = printf("%s%c", v.*.searchpath[i], if (v.*.searchpath[i +% @as(c_uint, 1)] == null) @as(c_int, '\n') else @as(c_int, ':'));
                }
            }
        }
    }
    if (vpaths == null) {
        _ = puts(gettext("# No 'vpath' search paths."));
    } else {
        _ = printf(gettext("\n# %u 'vpath' search paths.\n"), nvpaths);
    }
    if (general_vpath == null) {
        _ = puts(gettext("\n# No general ('VPATH' variable) search path."));
    } else {
        const path: [*c][*c]const u8 = general_vpath.*.searchpath;
        var i: c_uint = undefined;
        _ = fputs(gettext("\n# General ('VPATH' variable) search path:\n# "), stdout);
        {
            i = 0;
            while (path[i] != null) : (i +%= 1) {
                _ = printf("%s%c", path[i], if (path[i +% @as(c_uint, 1)] == null) @as(c_int, '\n') else @as(c_int, ':'));
            }
        }
    }
}
extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
extern fn lookup_file(name: [*c]const u8) [*c]struct_file;

extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;

extern var snapped_deps: c_int;
const struct_pattern_var = extern struct {
    next: [*c]struct_pattern_var = @import("std").mem.zeroes([*c]struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};
extern var env_recursion: c_ulonglong;
extern var variable_buffer: [*c]u8;
extern var current_variable_set_list: [*c]struct_variable_set_list;
extern var default_goal_var: [*c]struct_variable;
extern var shell_var: struct_variable;

extern fn variable_expand(line: [*c]const u8) [*c]u8;

extern fn pattern_matches(pattern: [*c]const u8, percent: [*c]const u8, str: [*c]const u8) c_int;

extern var export_all_variables: c_int;
var vpaths: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);
var general_vpath: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);
var gpaths: [*c]struct_vpath = @import("std").mem.zeroes([*c]struct_vpath);
fn selective_vpath_search(arg_path: [*c]struct_vpath, arg_file_1: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t, arg_path_index: [*c]c_uint) callconv(.C) [*c]const u8 {
    const path = arg_path;
    const file_1 = arg_file_1;
    var mtime_ptr = arg_mtime_ptr;
    const path_index = arg_path_index;
    var not_target: c_int = undefined;
    var name: [*c]u8 = undefined;
    var n: [*c]const u8 = undefined;
    var filename: [*c]const u8 = undefined;
    const vpath_2: [*c][*c]const u8 = path.*.searchpath;
    const maxvpath: usize = path.*.maxlen;
    var i: c_uint = undefined;
    var flen: usize = undefined;
    var name_dplen: usize = undefined;
    var exists: c_int = 0;
    {
        const f: [*c]struct_file = lookup_file(file_1);
        not_target = @intFromBool((f == null) or !(f.*.is_target != 0));
    }
    flen = strlen(file_1);
    n = strrchr(file_1, @as(c_int, '/'));
    name_dplen = @as(usize, @bitCast(if (n != null) @divExact(@as(c_long, @bitCast(@intFromPtr(n) -% @intFromPtr(file_1))), @sizeOf(u8)) else @as(c_long, 0)));
    filename = if (name_dplen > @as(usize, 0)) n + @as(usize, @bitCast(@as(isize, @intCast(1)))) else file_1;
    if (name_dplen > @as(usize, 0)) {
        flen -%= name_dplen +% @as(usize, 1);
    }
    name = @as([*c]u8, @ptrCast(@alignCast(malloc(((((maxvpath +% @as(usize, 1)) +% name_dplen) +% @as(usize, 1)) +% flen) +% @as(usize, 1)))));
    {
        i = 0;
        while (vpath_2[i] != null) : (i +%= 1) {
            var exists_in_cache: c_int = 0;
            var p: [*c]u8 = name;
            const vlen: usize = strlen(vpath_2[i]);
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(vpath_2[i])), vlen))));
            if (name_dplen > @as(usize, 0)) {
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = '/';
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(file_1)), name_dplen))));
            }
            if ((p != name) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = -1;
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) != @as(c_int, '/'))) {
                p.* = '/';
                _ = memcpy(@as(?*anyopaque, @ptrCast(p + @as(usize, @bitCast(@as(isize, @intCast(1)))))), @as(?*const anyopaque, @ptrCast(filename)), flen +% @as(usize, 1));
            } else {
                _ = memcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(filename)), flen +% @as(usize, 1));
            }
            {
                const f: [*c]struct_file = lookup_file(name);
                if (f != null) {
                    exists = @intFromBool((not_target != 0) or (f.*.is_target != 0));
                    if (((exists != 0) and (mtime_ptr != null)) and ((f.*.last_mtime == @as(uintmax_t, 2)) or (f.*.last_mtime == (~@as(uintmax_t, 0) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -1))) <= @as(uintmax_t, 0))) @as(uintmax_t, 0) else ~@as(uintmax_t, 0) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 1))))))) {
                        mtime_ptr.* = f.*.last_mtime;
                        mtime_ptr = null;
                    }
                }
            }
            if (!(exists != 0)) {
                {
                    p.* = '\x00';
                    exists_in_cache = blk: {
                        const tmp = dir_file_exists_p(name, filename);
                        exists = tmp;
                        break :blk tmp;
                    };
                }
            }
            if (exists != 0) {
                var st: struct_stat = undefined;
                p.* = '/';
                if (exists_in_cache != 0) {
                    var e: c_int = undefined;
                    while (((blk: {
                        const tmp = stat(name, &st);
                        e = tmp;
                        break :blk tmp;
                    }) == -1) and (__errno_location().* == 4)) {}
                    if (e != 0) {
                        exists = 0;
                        continue;
                    }
                    if (mtime_ptr != null) {
                        mtime_ptr.* = file_timestamp_cons(name, st.st_mtim.tv_sec, st.st_mtim.tv_nsec);
                        mtime_ptr = null;
                    }
                }
                if (mtime_ptr != null) {
                    mtime_ptr.* = 0;
                }
                if (path_index != null) {
                    path_index.* = i;
                }
                return strcache_add_len(name, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p + @as(usize, @bitCast(@as(isize, @intCast(1))))) -% @intFromPtr(name))), @sizeOf(u8)))) +% flen);
            }
        }
    }
    return null;
}
