const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __intmax_t = c_long;
const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;

const __time_t = c_long;

const __sig_atomic_t = c_int;

const time_t = __time_t;

fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
const sigset_t = __sigset_t;

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};

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

extern var stdin: [*c]FILE;
extern var stdout: [*c]FILE;
extern var stderr: [*c]FILE;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;

extern var daylight: c_int;
extern var timezone: c_long;

extern var getdate_err: c_int;

extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;

extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const struct_dep = extern struct {
    next: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    shuf: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_mtime: c_uint = @import("std").mem.zeroes(c_uint),
    staticpattern: c_uint = @import("std").mem.zeroes(c_uint),
    need_2nd_expansion: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_automatic_vars: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    wait_here: c_uint = @import("std").mem.zeroes(c_uint),
};
const struct_commands = opaque {};
const struct_variable_set_list = opaque {};

const enum_update_status_36 = c_uint;

const enum_cmd_state_37 = c_uint;
const struct_file = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    hname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    vpath: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: ?*struct_commands = @import("std").mem.zeroes(?*struct_commands),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    also_make: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    prev: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    last: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    renamed: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    variables: ?*struct_variable_set_list = @import("std").mem.zeroes(?*struct_variable_set_list),
    pat_variables: ?*struct_variable_set_list = @import("std").mem.zeroes(?*struct_variable_set_list),
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
extern fn concat(c_uint, ...) [*c]const u8;

const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xcalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

extern fn alpha_compare(?*const anyopaque, ?*const anyopaque) c_int;

export fn ar_name(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var p: [*c]const u8 = strchr(name, @as(c_int, '('));
    _ = &p;
    var end: [*c]const u8 = undefined;
    _ = &end;
    if ((p == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (p == name)) return 0;
    end = (p + strlen(p)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    if ((@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, ')')) or (end == (p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))))) return 0;
    if ((@as(c_int, @bitCast(@as(c_uint, p[1]))) == @as(c_int, '(')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = -@as(c_int, 1);
        if (tmp >= 0) break :blk end + @as(usize, @intCast(tmp)) else break :blk end - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, ')'))) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name), gettext("attempt to use unsupported feature: '%s'"), name);
    }
    return 1;
}
export fn ar_parse_name(arg_name: [*c]const u8, arg_arname_p: [*c][*c]u8, arg_memname_p: [*c][*c]u8) void {
    var name = arg_name;
    _ = &name;
    var arname_p = arg_arname_p;
    _ = &arname_p;
    var memname_p = arg_memname_p;
    _ = &memname_p;
    var p: [*c]u8 = undefined;
    _ = &p;
    arname_p.* = xstrdup(name);
    p = strchr(arname_p.*, @as(c_int, '('));
    if (!(p != null)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname_p.*), "Internal: ar_parse_name: bad name '%s'", arname_p.*);
    }
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '\x00';
    p[strlen(p) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
    memname_p.* = p;
}
export fn ar_touch(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var arname: [*c]u8 = undefined;
    _ = &arname;
    var memname: [*c]u8 = undefined;
    _ = &memname;
    var val: c_int = undefined;
    _ = &val;
    ar_parse_name(name, &arname, &memname);
    {
        var arfile: [*c]struct_file = undefined;
        _ = &arfile;
        arfile = enter_file(strcache_add(arname));
        _ = f_mtime(arfile, @as(c_int, 0));
    }
    val = 1;
    while (true) {
        switch (ar_member_touch(arname, memname)) {
            @as(c_int, -1) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname), gettext("touch: Archive '%s' does not exist"), arname);
                break;
            },
            @as(c_int, -2) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(arname), gettext("touch: '%s' is not a valid archive"), arname);
                break;
            },
            @as(c_int, -3) => {
                perror_with_name("touch: ", arname);
                break;
            },
            @as(c_int, 1) => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(memname) +% strlen(arname), gettext("touch: Member '%s' does not exist in '%s'"), memname, arname);
                break;
            },
            @as(c_int, 0) => {
                val = 0;
                break;
            },
            else => {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(name), gettext("touch: Bad return code from ar_member_touch on '%s'"), name);
            },
        }
        break;
    }
    free(@as(?*anyopaque, @ptrCast(arname)));
    return val;
}
export fn ar_member_date(arg_name: [*c]const u8) time_t {
    var name = arg_name;
    _ = &name;
    var arname: [*c]u8 = undefined;
    _ = &arname;
    var memname: [*c]u8 = undefined;
    _ = &memname;
    var val: intmax_t = undefined;
    _ = &val;
    ar_parse_name(name, &arname, &memname);
    {
        var arfile: [*c]struct_file = undefined;
        _ = &arfile;
        arfile = lookup_file(arname);
        if ((arfile == null) and (file_exists_p(arname) != 0)) {
            arfile = enter_file(strcache_add(arname));
        }
        if (arfile != null) {
            _ = f_mtime(arfile, @as(c_int, 0));
        }
    }
    val = ar_scan(arname, &ar_member_date_1, @as(?*const anyopaque, @ptrCast(memname)));
    free(@as(?*anyopaque, @ptrCast(arname)));
    return if ((@as(intmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) < val) and (val <= (if (!!(@as(time_t, @bitCast(@as(c_long, @as(c_int, 0)))) < @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))))) @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))) else (((@as(time_t, @bitCast(@as(c_long, @as(c_int, 1)))) << @intCast((@sizeOf(time_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))))) - @as(time_t, @bitCast(@as(c_long, @as(c_int, 1))))) * @as(time_t, @bitCast(@as(c_long, @as(c_int, 2))))) + @as(time_t, @bitCast(@as(c_long, @as(c_int, 1))))))) val else @as(intmax_t, @bitCast(@as(c_long, -@as(c_int, 1))));
}
const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;
extern fn ar_scan(archive: [*c]const u8, function: ar_member_func_t, arg: ?*const anyopaque) intmax_t;
extern fn ar_name_equal(name: [*c]const u8, mem: [*c]const u8, truncated: c_int) c_int;
extern fn ar_member_touch(arname: [*c]const u8, memname: [*c]const u8) c_int;

extern fn file_exists_p([*c]const u8) c_int;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

extern var reading_file: [*c]const floc;
extern var expanding_var: [*c][*c]const floc;

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
extern fn enter_file(name: [*c]const u8) [*c]struct_file;

extern fn f_mtime(file: [*c]struct_file, search: c_int) uintmax_t;
extern var snapped_deps: c_int;
const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
const struct_goaldep = extern struct {
    next: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    shuf: [*c]struct_goaldep = @import("std").mem.zeroes([*c]struct_goaldep),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
    changed: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_mtime: c_uint = @import("std").mem.zeroes(c_uint),
    staticpattern: c_uint = @import("std").mem.zeroes(c_uint),
    need_2nd_expansion: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_automatic_vars: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    wait_here: c_uint = @import("std").mem.zeroes(c_uint),
    @"error": c_int = @import("std").mem.zeroes(c_int),
    floc: floc = @import("std").mem.zeroes(floc),
};

const struct_ar_glob_state = extern struct {
    arname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    pattern: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    size: usize = @import("std").mem.zeroes(usize),
    chain: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    n: c_uint = @import("std").mem.zeroes(c_uint),
};
export fn ar_glob(arg_arname: [*c]const u8, arg_member_pattern: [*c]const u8, arg_size: usize) [*c]struct_nameseq {
    var arname = arg_arname;
    _ = &arname;
    var member_pattern = arg_member_pattern;
    _ = &member_pattern;
    var size = arg_size;
    _ = &size;
    var state: struct_ar_glob_state = undefined;
    _ = &state;
    var n: [*c]struct_nameseq = undefined;
    _ = &n;
    var names: [*c][*c]const u8 = undefined;
    _ = &names;
    var i: c_uint = undefined;
    _ = &i;
    if (!(ar_glob_pattern_p(member_pattern, @as(c_int, 1)) != 0)) return null;
    state.arname = arname;
    state.pattern = member_pattern;
    state.size = size;
    state.chain = null;
    state.n = 0;
    _ = ar_scan(arname, &ar_glob_match, @as(?*const anyopaque, @ptrCast(&state)));
    if (state.chain == null) return null;
    names = @as([*c][*c]const u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_ulong, state.n))) *% @sizeOf([*c]const u8)))));
    i = 0;
    {
        n = state.chain;
        while (n != null) : (n = n.*.next) {
            names[
                blk: {
                    const ref = &i;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = n.*.name;
        }
    }
    qsort(@as(?*anyopaque, @ptrCast(names)), @as(usize, @bitCast(@as(c_ulong, i))), @sizeOf([*c]const u8), &alpha_compare);
    i = 0;
    {
        n = state.chain;
        while (n != null) : (n = n.*.next) {
            n.*.name = names[
                blk: {
                    const ref = &i;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ];
        }
    }
    return state.chain;
}

extern fn fnmatch(__pattern: [*c]const u8, __name: [*c]const u8, __flags: c_int) c_int;
fn ar_member_date_1(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_name: ?*const anyopaque) callconv(.C) intmax_t {
    var desc = arg_desc;
    _ = &desc;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var hdrpos = arg_hdrpos;
    _ = &hdrpos;
    var datapos = arg_datapos;
    _ = &datapos;
    var size = arg_size;
    _ = &size;
    var date = arg_date;
    _ = &date;
    var uid = arg_uid;
    _ = &uid;
    var gid = arg_gid;
    _ = &gid;
    var mode = arg_mode;
    _ = &mode;
    var name = arg_name;
    _ = &name;
    return if (ar_name_equal(@as([*c]const u8, @ptrCast(@alignCast(name))), mem, truncated) != 0) date else @as(intmax_t, @bitCast(@as(c_long, @as(c_int, 0))));
}
fn ar_glob_match(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_arg: ?*const anyopaque) callconv(.C) intmax_t {
    var desc = arg_desc;
    _ = &desc;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var hdrpos = arg_hdrpos;
    _ = &hdrpos;
    var datapos = arg_datapos;
    _ = &datapos;
    var size = arg_size;
    _ = &size;
    var date = arg_date;
    _ = &date;
    var uid = arg_uid;
    _ = &uid;
    var gid = arg_gid;
    _ = &gid;
    var mode = arg_mode;
    _ = &mode;
    var arg = arg_arg;
    _ = &arg;
    var state: [*c]struct_ar_glob_state = @as([*c]struct_ar_glob_state, @ptrCast(@volatileCast(@constCast(arg))));
    _ = &state;
    if (fnmatch(state.*.pattern, mem, (@as(c_int, 1) << @intCast(0)) | (@as(c_int, 1) << @intCast(2))) == @as(c_int, 0)) {
        var new: [*c]struct_nameseq = @as([*c]struct_nameseq, @ptrCast(@alignCast(xcalloc(state.*.size))));
        _ = &new;
        new.*.name = strcache_add(concat(@as(c_uint, @bitCast(@as(c_int, 4))), state.*.arname, "(", mem, ")"));
        new.*.next = state.*.chain;
        state.*.chain = new;
        state.*.n +%= 1;
    }
    return 0;
}
fn ar_glob_pattern_p(arg_pattern: [*c]const u8, arg_quote: c_int) callconv(.C) c_int {
    var pattern = arg_pattern;
    _ = &pattern;
    var quote = arg_quote;
    _ = &quote;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var opened: c_int = 0;
    _ = &opened;
    {
        p = pattern;
        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
            while (true) {
                switch (@as(c_int, @bitCast(@as(c_uint, p.*)))) {
                    @as(c_int, 63), @as(c_int, 42) => return 1,
                    @as(c_int, 92) => {
                        if (quote != 0) {
                            p += 1;
                        }
                        break;
                    },
                    @as(c_int, 91) => {
                        opened = 1;
                        break;
                    },
                    @as(c_int, 93) => {
                        if (opened != 0) return 1;
                        break;
                    },
                    else => {},
                }
                break;
            }
        }
    }
    return 0;
}
