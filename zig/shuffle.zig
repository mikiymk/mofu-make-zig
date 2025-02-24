const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;

const __sig_atomic_t = c_int;

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

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

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

extern fn free(__ptr: ?*anyopaque) void;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

const uintmax_t = __uintmax_t;

const gettext = root.cstd.gettext;

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

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;

extern fn make_seed(c_uint) void;
extern fn make_rand() c_uint;

extern fn xmalloc(usize) ?*anyopaque;

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
export fn shuffle_set_mode(arg_cmdarg: [*c]const u8) void {
    var cmdarg = arg_cmdarg;
    _ = &cmdarg;
    if (strcasecmp(cmdarg, "reverse") == 0) {
        config.mode = @as(c_uint, @bitCast(sm_reverse));
        config.shuffler = &reverse_shuffle_array;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "reverse");
    } else if (strcasecmp(cmdarg, "identity") == 0) {
        config.mode = @as(c_uint, @bitCast(sm_identity));
        config.shuffler = &identity_shuffle_array;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "identity");
    } else if (strcasecmp(cmdarg, "none") == 0) {
        config.mode = @as(c_uint, @bitCast(sm_none));
        config.shuffler = null;
        config.strval[0] = '\x00';
    } else {
        if (strcasecmp(cmdarg, "random") == 0) {
            config.seed = make_rand();
        } else {
            var err: [*c]const u8 = undefined;
            _ = &err;
            config.seed = make_toui(cmdarg, &err);
            if (err != null) {
                fatal(@as([*c]floc, @ptrFromInt(0)), strlen(err) +% strlen(cmdarg), gettext("invalid shuffle mode: %s: '%s'"), err, cmdarg);
            }
        }
        config.mode = @as(c_uint, @bitCast(sm_random));
        config.shuffler = &random_shuffle_array;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&config.strval))), "%u", config.seed);
    }
}
export fn shuffle_get_mode() [*c]const u8 {
    return if (@as(c_int, @bitCast(@as(c_uint, config.strval[0]))) == @as(c_int, '\x00')) null else @as([*c]u8, @ptrCast(@alignCast(&config.strval)));
}
export fn shuffle_deps_recursive(arg_deps: [*c]struct_dep) void {
    var deps = arg_deps;
    _ = &deps;
    var dep_1: [*c]struct_dep = undefined;
    _ = &dep_1;
    if (config.mode == @as(c_uint, @bitCast(sm_none))) return;
    if (not_parallel != 0) return;
    if (config.mode == @as(c_uint, @bitCast(sm_random))) {
        make_seed(config.seed);
    }
    shuffle_deps(deps);
    {
        dep_1 = deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            shuffle_file_deps_recursive(dep_1.*.file);
        }
    }
}

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern var snapped_deps: c_int;
const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

fn random_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
    var i: usize = undefined;
    _ = &i;
    {
        i = 0;
        while (i < len) : (i +%= 1) {
            var t: ?*anyopaque = undefined;
            _ = &t;
            var j: c_uint = @as(c_uint, @bitCast(@as(c_uint, @truncate(@as(usize, @bitCast(@as(c_ulong, make_rand()))) % len))));
            _ = &j;
            if (i == @as(usize, @bitCast(@as(c_ulong, j)))) continue;
            t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
}
fn reverse_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
    var i: usize = undefined;
    _ = &i;
    {
        i = 0;
        while (i < (len / @as(usize, 2))) : (i +%= 1) {
            var t: ?*anyopaque = undefined;
            _ = &t;
            var j: usize = (len -% @as(usize, 1)) -% i;
            _ = &j;
            t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
}
fn identity_shuffle_array(arg_a: [*c]?*anyopaque, arg_len: usize) callconv(.C) void {
    var a = arg_a;
    _ = &a;
    var len = arg_len;
    _ = &len;
}
const sm_none: c_int = 0;
const sm_random: c_int = 1;
const sm_reverse: c_int = 2;
const sm_identity: c_int = 3;
const enum_shuffle_mode = c_uint;
const struct_unnamed_38 = extern struct {
    mode: enum_shuffle_mode = @import("std").mem.zeroes(enum_shuffle_mode),
    seed: c_uint = @import("std").mem.zeroes(c_uint),
    shuffler: ?*const fn ([*c]?*anyopaque, usize) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]?*anyopaque, usize) callconv(.C) void),
    strval: [23]u8 = @import("std").mem.zeroes([23]u8),
};
var config: struct_unnamed_38 = struct_unnamed_38{
    .mode = @as(c_uint, @bitCast(sm_none)),
    .seed = @as(c_uint, 0),
    .shuffler = null,
    .strval = "",
};
fn shuffle_deps(arg_deps: [*c]struct_dep) callconv(.C) void {
    var deps = arg_deps;
    _ = &deps;
    var ndeps: usize = 0;
    _ = &ndeps;
    var dep_1: [*c]struct_dep = undefined;
    _ = &dep_1;
    var da: [*c]?*anyopaque = undefined;
    _ = &da;
    var dp: [*c]?*anyopaque = undefined;
    _ = &dp;
    {
        dep_1 = deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            if (dep_1.*.wait_here != 0) return;
            ndeps +%= 1;
        }
    }
    if (ndeps == @as(usize, 0)) return;
    da = @as([*c]?*anyopaque, @ptrCast(@alignCast(xmalloc(@sizeOf([*c]struct_dep) *% ndeps))));
    {
        _ = blk: {
            dep_1 = deps;
            break :blk blk_1: {
                const tmp = da;
                dp = tmp;
                break :blk_1 tmp;
            };
        };
        while (dep_1 != null) : (_ = blk: {
            dep_1 = dep_1.*.next;
            break :blk blk_1: {
                const ref = &dp;
                const tmp = ref.*;
                ref.* += 1;
                break :blk_1 tmp;
            };
        }) {
            dp.* = @as(?*anyopaque, @ptrCast(dep_1));
        }
    }
    config.shuffler.?(da, ndeps);
    {
        _ = blk: {
            dep_1 = deps;
            break :blk blk_1: {
                const tmp = da;
                dp = tmp;
                break :blk_1 tmp;
            };
        };
        while (dep_1 != null) : (_ = blk: {
            dep_1 = dep_1.*.next;
            break :blk blk_1: {
                const ref = &dp;
                const tmp = ref.*;
                ref.* += 1;
                break :blk_1 tmp;
            };
        }) {
            dep_1.*.shuf = @as([*c]struct_dep, @ptrCast(@alignCast(dp.*)));
        }
    }
    free(@as(?*anyopaque, @ptrCast(da)));
}
fn shuffle_file_deps_recursive(arg_f: [*c]struct_file) callconv(.C) void {
    var f = arg_f;
    _ = &f;
    var dep_1: [*c]struct_dep = undefined;
    _ = &dep_1;
    if (!(f != null)) return;
    if (f.*.was_shuffled != 0) return;
    f.*.was_shuffled = 1;
    shuffle_deps(f.*.deps);
    {
        dep_1 = f.*.deps;
        while (dep_1 != null) : (dep_1 = dep_1.*.next) {
            shuffle_file_deps_recursive(dep_1.*.file);
        }
    }
}
