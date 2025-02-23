const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

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

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;

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

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;

extern fn memrchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

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
const struct_commands = extern struct {
    fileinfo: floc = @import("std").mem.zeroes(floc),
    commands: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_lines: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    lines_flags: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    ncommand_lines: c_ushort = @import("std").mem.zeroes(c_ushort),
    recipe_prefix: u8 = @import("std").mem.zeroes(u8),
    any_recurse: c_uint = @import("std").mem.zeroes(c_uint),
};
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
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
    stem: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    also_make: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
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

const o_automatic: c_int = 6;

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
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn lindex([*c]const u8, [*c]const u8, c_int) [*c]u8;

extern fn print_spaces(c_uint) void;

extern fn ar_name([*c]const u8) c_int;

extern fn file_exists_p([*c]const u8) c_int;
extern fn file_impossible_p([*c]const u8) c_int;
extern fn file_impossible([*c]const u8) void;

extern fn vpath_search(file: [*c]const u8, mtime_ptr: [*c]uintmax_t, vpath_index: [*c]c_uint, path_index: [*c]c_uint) [*c]const u8;

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

export fn try_implicit_rule(arg_file_1: [*c]struct_file, arg_depth: c_uint) c_int {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    while (true) {
        if ((@as(c_int, 8) & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("Looking for an implicit rule for '%s'.\n"), file_1.*.name);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    if (pattern_search(file_1, @as(c_int, 0), depth, @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_int, 0)) != 0) return 1;
    if (ar_name(file_1.*.name) != 0) {
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Looking for archive-member implicit rule for '%s'.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        if (pattern_search(file_1, @as(c_int, 1), depth, @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_int, 0)) != 0) return 1;
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("No archive-member implicit rule found for '%s'.\n"), file_1.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    }
    return 0;
}
const struct_rule = extern struct {
    next: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    targets: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    lens: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    suffixes: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    deps: [*c]struct_dep = @import("std").mem.zeroes([*c]struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
    _defn: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num: c_ushort = @import("std").mem.zeroes(c_ushort),
    terminal: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
};
const struct_tryrule = extern struct {
    rule: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    stemlen: usize = @import("std").mem.zeroes(usize),
    matches: c_uint = @import("std").mem.zeroes(c_uint),
    order: c_uint = @import("std").mem.zeroes(c_uint),
    checked_lastslash: u8 = @import("std").mem.zeroes(u8),
};
export fn stemlen_compare(arg_v1: ?*const anyopaque, arg_v2: ?*const anyopaque) c_int {
    var v1 = arg_v1;
    _ = &v1;
    var v2 = arg_v2;
    _ = &v2;
    var r1: [*c]const struct_tryrule = @as([*c]const struct_tryrule, @ptrCast(@alignCast(v1)));
    _ = &r1;
    var r2: [*c]const struct_tryrule = @as([*c]const struct_tryrule, @ptrCast(@alignCast(v2)));
    _ = &r2;
    var r: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(r1.*.stemlen -% r2.*.stemlen))));
    _ = &r;
    return if (r != @as(c_int, 0)) r else @as(c_int, @bitCast(r1.*.order -% r2.*.order));
}

extern var snapped_deps: c_int;

extern var pattern_rules: [*c]struct_rule;
extern var last_pattern_rule: [*c]struct_rule;
extern var num_pattern_rules: c_uint;
extern var max_pattern_deps: c_uint;
extern var max_pattern_targets: c_uint;
extern var max_pattern_dep_length: usize;
extern var suffix_file: [*c]struct_file;

extern fn get_rule_defn(rule: [*c]struct_rule) [*c]const u8;

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
extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;

extern var db_level: c_int;
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

extern fn variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;

extern fn free_variable_set([*c]struct_variable_set_list) void;

extern fn initialize_file_variables(file: [*c]struct_file, reading: c_int) void;

extern fn merge_variable_set_lists(to_list: [*c][*c]struct_variable_set_list, from_list: [*c]struct_variable_set_list) void;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) [*c]struct_variable;

extern var export_all_variables: c_int;
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

const struct_child = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
    next: [*c]struct_child = @import("std").mem.zeroes([*c]struct_child),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    sh_batch_file: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_lines: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    command_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    command_line: c_uint = @import("std").mem.zeroes(c_uint),
    pid: pid_t = @import("std").mem.zeroes(pid_t),
    remote: c_uint = @import("std").mem.zeroes(c_uint),
    noerror: c_uint = @import("std").mem.zeroes(c_uint),
    good_stdin: c_uint = @import("std").mem.zeroes(c_uint),
    deleted: c_uint = @import("std").mem.zeroes(c_uint),
    recursive: c_uint = @import("std").mem.zeroes(c_uint),
    jobslot: c_uint = @import("std").mem.zeroes(c_uint),
    dontcare: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var children: [*c]struct_child;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;

extern fn set_file_variables(file: [*c]struct_file, stem: [*c]const u8) void;

extern fn shuffle_deps_recursive(g: [*c]struct_dep) void;
const struct_patdeps = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    pattern: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    file: [*c]struct_file = @import("std").mem.zeroes([*c]struct_file),
    ignore_mtime: c_uint = @import("std").mem.zeroes(c_uint),
    ignore_automatic_vars: c_uint = @import("std").mem.zeroes(c_uint),
    is_explicit: c_uint = @import("std").mem.zeroes(c_uint),
    wait_here: c_uint = @import("std").mem.zeroes(c_uint),
};
fn pattern_search(arg_file_1: [*c]struct_file, arg_archive: c_int, arg_depth: c_uint, arg_recursions: c_uint, arg_allow_compat_rules: c_int) callconv(.C) c_int {
    var file_1 = arg_file_1;
    _ = &file_1;
    var archive = arg_archive;
    _ = &archive;
    var depth = arg_depth;
    _ = &depth;
    var recursions = arg_recursions;
    _ = &recursions;
    var allow_compat_rules = arg_allow_compat_rules;
    _ = &allow_compat_rules;
    var filename: [*c]const u8 = if (archive != 0) @as([*c]const u8, @ptrCast(@alignCast(strchr(file_1.*.name, @as(c_int, '('))))) else file_1.*.name;
    _ = &filename;
    var namelen: usize = strlen(filename);
    _ = &namelen;
    var lastslash: [*c]const u8 = undefined;
    _ = &lastslash;
    var int_file: [*c]struct_file = null;
    _ = &int_file;
    var max_deps: c_uint = max_pattern_deps;
    _ = &max_deps;
    var deplist: [*c]struct_patdeps = @as([*c]struct_patdeps, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, max_deps))) *% @sizeOf(struct_patdeps)))));
    _ = &deplist;
    var pat: [*c]struct_patdeps = deplist;
    _ = &pat;
    var deplen: usize = (namelen +% max_pattern_dep_length) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 4))));
    _ = &deplen;
    var depname: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(deplen))));
    _ = &depname;
    var stem: [*c]const u8 = null;
    _ = &stem;
    var stemlen: usize = 0;
    _ = &stemlen;
    var fullstemlen: usize = 0;
    _ = &fullstemlen;
    var tryrules: [*c]struct_tryrule = @as([*c]struct_tryrule, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, num_pattern_rules *% max_pattern_targets))) *% @sizeOf(struct_tryrule)))));
    _ = &tryrules;
    var nrules: c_uint = undefined;
    _ = &nrules;
    var foundrule: c_uint = undefined;
    _ = &foundrule;
    var intermed_ok: c_int = undefined;
    _ = &intermed_ok;
    var file_vars_initialized: c_int = 0;
    _ = &file_vars_initialized;
    var specific_rule_matched: c_int = 0;
    _ = &specific_rule_matched;
    var ri: c_uint = undefined;
    _ = &ri;
    var found_compat_rule: c_int = 0;
    _ = &found_compat_rule;
    var rule_2: [*c]struct_rule = undefined;
    _ = &rule_2;
    var pathdir: [*c]u8 = null;
    _ = &pathdir;
    var pathlen: usize = undefined;
    _ = &pathlen;
    var stem_str: [4097]u8 = undefined;
    _ = &stem_str;
    depth +%= 1;
    if ((archive != 0) or (ar_name(filename) != 0)) {
        lastslash = null;
    } else {
        lastslash = @as([*c]const u8, @ptrCast(@alignCast(memrchr(@as(?*const anyopaque, @ptrCast(filename)), @as(c_int, '/'), namelen -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
    }
    pathlen = @as(usize, @bitCast(if (lastslash != null) @divExact(@as(c_long, @bitCast(@intFromPtr(lastslash) -% @intFromPtr(filename))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))) else @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))));
    nrules = 0;
    {
        rule_2 = pattern_rules;
        while (rule_2 != null) : (rule_2 = rule_2.*.next) {
            var ti: c_uint = undefined;
            _ = &ti;
            if ((rule_2.*.deps != null) and (rule_2.*.cmds == null)) continue;
            if (rule_2.*.in_use != 0) {
                while (true) {
                    if ((@as(c_int, 8) & db_level) != 0) {
                        print_spaces(depth);
                        _ = printf(gettext("Avoiding implicit rule recursion for rule '%s'.\n"), get_rule_defn(rule_2));
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
                continue;
            }
            {
                ti = 0;
                while (ti < @as(c_uint, @bitCast(@as(c_uint, rule_2.*.num)))) : (ti +%= 1) {
                    var target: [*c]const u8 = rule_2.*.targets[ti];
                    _ = &target;
                    var suffix: [*c]const u8 = rule_2.*.suffixes[ti];
                    _ = &suffix;
                    var check_lastslash: u8 = undefined;
                    _ = &check_lastslash;
                    if (((recursions > @as(c_uint, @bitCast(@as(c_int, 0)))) and (@as(c_int, @bitCast(@as(c_uint, target[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) and !(rule_2.*.terminal != 0)) continue;
                    if (@as(usize, @bitCast(@as(c_ulong, rule_2.*.lens[ti]))) > namelen) continue;
                    stem = filename + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(suffix) -% @intFromPtr(target))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))));
                    stemlen = (namelen -% @as(usize, @bitCast(@as(c_ulong, rule_2.*.lens[ti])))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
                    check_lastslash = 0;
                    if (lastslash != null) {
                        check_lastslash = @as(u8, @intFromBool(strchr(target, @as(c_int, '/')) == null));
                    }
                    if (check_lastslash != 0) {
                        if (pathlen > stemlen) continue;
                        stemlen -%= pathlen;
                        stem += @as([*c]const u8, @ptrFromInt(pathlen));
                    }
                    if (check_lastslash != 0) {
                        if ((stem > (lastslash + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))))) and !(strncmp(target, lastslash + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(stem) -% @intFromPtr(lastslash))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))) == @as(c_int, 0))) continue;
                    } else if ((stem > filename) and !(strncmp(target, filename, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(stem) -% @intFromPtr(filename))), @sizeOf(u8))))) == @as(c_int, 0))) continue;
                    if ((@as(c_int, @bitCast(@as(c_uint, suffix.*))) != @as(c_int, @bitCast(@as(c_uint, stem[stemlen])))) or ((@as(c_int, @bitCast(@as(c_uint, suffix.*))) != @as(c_int, '\x00')) and !(((&suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) == (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])) or ((@as(c_int, @bitCast(@as(c_uint, (&suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, @bitCast(@as(c_uint, (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (&suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, '\x00')) or !(strcmp((&suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))))) continue;
                    if (@as(c_int, @bitCast(@as(c_uint, target[@as(c_uint, @intCast(@as(c_int, 1)))]))) != @as(c_int, '\x00')) {
                        specific_rule_matched = 1;
                    }
                    if ((rule_2.*.deps == null) and (rule_2.*.cmds == null)) continue;
                    tryrules[nrules].rule = rule_2;
                    tryrules[nrules].matches = ti;
                    tryrules[nrules].stemlen = stemlen +% (if (@as(c_int, @bitCast(@as(c_uint, check_lastslash))) != 0) pathlen else @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
                    tryrules[nrules].order = nrules;
                    tryrules[nrules].checked_lastslash = check_lastslash;
                    nrules +%= 1;
                }
            }
        }
    }
    if (nrules == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        free(@as(?*anyopaque, @ptrCast(tryrules)));
        free(@as(?*anyopaque, @ptrCast(deplist)));
        depth -%= 1;
        if (rule_2 != null) {
            while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Found implicit rule '%s' for '%s'.\n"), get_rule_defn(rule_2), filename);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            return 1;
        }
        if (found_compat_rule != 0) {
            while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Searching for a compatibility rule for '%s'.\n"), filename);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            _ = @as(c_int, 0);
            return pattern_search(file_1, archive, depth, recursions, @as(c_int, 1));
        }
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("No implicit rule found for '%s'.\n"), filename);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return 0;
    }
    if (nrules > @as(c_uint, @bitCast(@as(c_int, 1)))) {
        qsort(@as(?*anyopaque, @ptrCast(tryrules)), @as(usize, @bitCast(@as(c_ulong, nrules))), @sizeOf(struct_tryrule), &stemlen_compare);
    }
    if (specific_rule_matched != 0) {
        ri = 0;
        while (ri < nrules) : (ri +%= 1) if (!(tryrules[ri].rule.*.terminal != 0)) {
            var j: c_uint = undefined;
            _ = &j;
            {
                j = 0;
                while (j < @as(c_uint, @bitCast(@as(c_uint, tryrules[ri].rule.*.num)))) : (j +%= 1) if (@as(c_int, @bitCast(@as(c_uint, tryrules[ri].rule.*.targets[j][@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00')) {
                    tryrules[ri].rule = null;
                    break;
                };
            }
        };
    }
    {
        intermed_ok = 0;
        while (intermed_ok < @as(c_int, 2)) : (intermed_ok += 1) {
            pat = deplist;
            if (intermed_ok != 0) while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Trying harder.\n"));
                    _ = fflush(stdout);
                }
                if (!false) break;
            };
            {
                ri = 0;
                while (ri < nrules) : (ri +%= 1) {
                    var dep_1: [*c]struct_dep = undefined;
                    _ = &dep_1;
                    var check_lastslash: u8 = undefined;
                    _ = &check_lastslash;
                    var failed: c_uint = 0;
                    _ = &failed;
                    var file_variables_set: c_int = 0;
                    _ = &file_variables_set;
                    var deps_found: c_uint = 0;
                    _ = &deps_found;
                    var nptr: [*c]const u8 = null;
                    _ = &nptr;
                    var order_only: c_int = 0;
                    _ = &order_only;
                    var matches: c_uint = undefined;
                    _ = &matches;
                    rule_2 = tryrules[ri].rule;
                    if (rule_2 == null) continue;
                    if ((intermed_ok != 0) and (@as(c_int, @bitCast(@as(c_uint, rule_2.*.terminal))) != 0)) continue;
                    matches = tryrules[ri].matches;
                    stem = (filename + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(rule_2.*.suffixes[matches]) -% @intFromPtr(rule_2.*.targets[matches]))), @sizeOf(u8))))))) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                    stemlen = (namelen -% @as(usize, @bitCast(@as(c_ulong, rule_2.*.lens[matches])))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
                    check_lastslash = tryrules[ri].checked_lastslash;
                    if (check_lastslash != 0) {
                        stem += @as([*c]const u8, @ptrFromInt(pathlen));
                        stemlen -%= pathlen;
                        if (!(pathdir != null)) {
                            pathdir = @as([*c]u8, @ptrCast(@alignCast(malloc(pathlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
                            _ = memcpy(@as(?*anyopaque, @ptrCast(pathdir)), @as(?*const anyopaque, @ptrCast(filename)), pathlen);
                            pathdir[pathlen] = '\x00';
                        }
                    }
                    while (true) {
                        if ((@as(c_int, 8) & db_level) != 0) {
                            print_spaces(depth);
                            _ = printf(gettext("Trying pattern rule '%s' with stem '%.*s'.\n"), get_rule_defn(rule_2), @as(c_int, @bitCast(@as(c_uint, @truncate(stemlen)))), stem);
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    if ((stemlen +% (if (@as(c_int, @bitCast(@as(c_uint, check_lastslash))) != 0) pathlen else @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) > @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) {
                        while (true) {
                            if ((@as(c_int, 8) & db_level) != 0) {
                                print_spaces(depth);
                                _ = printf(gettext("Stem too long: '%s%.*s'.\n"), if (@as(c_int, @bitCast(@as(c_uint, check_lastslash))) != 0) pathdir else "", @as(c_int, @bitCast(@as(c_uint, @truncate(stemlen)))), stem);
                                _ = fflush(stdout);
                            }
                            if (!false) break;
                        }
                        continue;
                    }
                    if (!(check_lastslash != 0)) {
                        _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&stem_str))))), @as(?*const anyopaque, @ptrCast(stem)), stemlen);
                        stem_str[stemlen] = '\x00';
                    } else {
                        _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&stem_str))))), @as(?*const anyopaque, @ptrCast(filename)), pathlen);
                        _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&stem_str))) + pathlen)), @as(?*const anyopaque, @ptrCast(stem)), stemlen);
                        stem_str[pathlen +% stemlen] = '\x00';
                    }
                    if (rule_2.*.deps == null) break;
                    rule_2.*.in_use = 1;
                    pat = deplist;
                    dep_1 = rule_2.*.deps;
                    nptr = if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name;
                    while (true) {
                        var dl: [*c]struct_dep = undefined;
                        _ = &dl;
                        var d: [*c]struct_dep = undefined;
                        _ = &d;
                        if (!(nptr != null)) {
                            dep_1 = dep_1.*.next;
                            if (dep_1 == null) break;
                            nptr = if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name;
                        }
                        if (!(dep_1.*.need_2nd_expansion != 0)) {
                            var p: [*c]u8 = undefined;
                            _ = &p;
                            var is_explicit: c_int = 1;
                            _ = &is_explicit;
                            var cp: [*c]const u8 = strchr(nptr, @as(c_int, '%'));
                            _ = &cp;
                            if (cp == null) {
                                _ = strcpy(depname, nptr);
                            } else {
                                var o: [*c]u8 = depname;
                                _ = &o;
                                if (check_lastslash != 0) {
                                    o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast(filename)), pathlen))));
                                }
                                o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast(nptr)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cp) -% @intFromPtr(nptr))), @sizeOf(u8))))))));
                                o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast(stem)), stemlen))));
                                _ = strcpy(o, cp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
                                is_explicit = 0;
                            }
                            p = depname;
                            dl = @as([*c]struct_dep, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_dep), @as(c_int, 1), null, @as(c_int, 32) | @as(c_int, 64)))));
                            {
                                d = dl;
                                while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) {
                                    deps_found +%= 1;
                                    d.*.ignore_mtime = dep_1.*.ignore_mtime;
                                    d.*.ignore_automatic_vars = dep_1.*.ignore_automatic_vars;
                                    d.*.wait_here |= dep_1.*.wait_here;
                                    d.*.is_explicit = @as(c_uint, @bitCast(is_explicit));
                                }
                            }
                            nptr = null;
                        } else {
                            var add_dir: c_int = 0;
                            _ = &add_dir;
                            var len: usize = undefined;
                            _ = &len;
                            var end: [*c]const u8 = undefined;
                            _ = &end;
                            var dptr: [*c][*c]struct_dep = undefined;
                            _ = &dptr;
                            var is_explicit: c_int = undefined;
                            _ = &is_explicit;
                            var cp: [*c]const u8 = undefined;
                            _ = &cp;
                            var p: [*c]u8 = undefined;
                            _ = &p;
                            nptr = get_next_word(nptr, &len);
                            if (nptr == null) continue;
                            end = nptr + len;
                            if ((!(order_only != 0) and (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))) and (@as(c_int, @bitCast(@as(c_uint, nptr[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '|'))) {
                                order_only = 1;
                                nptr = end;
                                continue;
                            }
                            cp = lindex(nptr, end, @as(c_int, '%'));
                            if (cp == null) {
                                _ = memcpy(@as(?*anyopaque, @ptrCast(depname)), @as(?*const anyopaque, @ptrCast(nptr)), len);
                                depname[len] = '\x00';
                                is_explicit = 1;
                            } else {
                                var o: [*c]u8 = depname;
                                _ = &o;
                                is_explicit = 0;
                                while (true) {
                                    var i: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cp) -% @intFromPtr(nptr))), @sizeOf(u8))));
                                    _ = &i;
                                    _ = @as(c_int, 0);
                                    o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast(nptr)), i))));
                                    if (check_lastslash != 0) {
                                        add_dir = 1;
                                        _ = @as(c_int, 0);
                                        o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast("$(*F)")), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5))))))));
                                    } else {
                                        _ = @as(c_int, 0);
                                        o = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast("$*")), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))))));
                                    }
                                    _ = @as(c_int, 0);
                                    cp += 1;
                                    _ = @as(c_int, 0);
                                    nptr = cp;
                                    if (nptr == end) break;
                                    while ((cp < end) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(cp.*))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0))) {
                                        cp += 1;
                                    }
                                    cp = lindex(cp, end, @as(c_int, '%'));
                                    if (cp == null) break;
                                }
                                len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(nptr))), @sizeOf(u8))));
                                _ = memcpy(@as(?*anyopaque, @ptrCast(o)), @as(?*const anyopaque, @ptrCast(nptr)), len);
                                o[len] = '\x00';
                            }
                            nptr = end;
                            if (!(file_vars_initialized != 0)) {
                                initialize_file_variables(file_1, @as(c_int, 0));
                                set_file_variables(file_1, @as([*c]u8, @ptrCast(@alignCast(&stem_str))));
                                file_vars_initialized = 1;
                            } else if (!(file_variables_set != 0)) {
                                _ = define_variable_in_set("*", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&stem_str))), @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), file_1.*.variables.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
                                file_variables_set = 1;
                            }
                            p = variable_expand_for_file(depname, file_1);
                            dptr = &dl;
                            while (true) {
                                var dp: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(parse_file_seq(&p, @sizeOf(struct_dep), if (order_only != 0) @as(c_int, 1) else @as(c_int, 256), if (add_dir != 0) pathdir else null, @as(c_int, 64)))));
                                _ = &dp;
                                dptr.* = dp;
                                {
                                    d = dp;
                                    while (d != @as([*c]struct_dep, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) {
                                        deps_found +%= 1;
                                        if (order_only != 0) {
                                            d.*.ignore_mtime = 1;
                                        }
                                        d.*.is_explicit = @as(c_uint, @bitCast(is_explicit));
                                        dptr = &d.*.next;
                                    }
                                }
                                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '|')) {
                                    order_only = 1;
                                    p += 1;
                                }
                                if (!(@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00'))) break;
                            }
                        }
                        if (deps_found > max_deps) {
                            var l: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(pat) -% @intFromPtr(deplist))), @sizeOf(struct_patdeps))));
                            _ = &l;
                            max_pattern_deps = if (max_pattern_deps > deps_found) max_pattern_deps else deps_found;
                            max_deps = max_pattern_deps;
                            deplist = @as([*c]struct_patdeps, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(deplist)), @as(c_ulong, @bitCast(@as(c_ulong, max_deps))) *% @sizeOf(struct_patdeps)))));
                            pat = deplist + l;
                        }
                        {
                            d = dl;
                            while (d != null) : (d = d.*.next) {
                                var df: [*c]struct_file = undefined;
                                _ = &df;
                                var is_rule: c_int = @intFromBool(d.*.name == (if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name));
                                _ = &is_rule;
                                var explicit: c_int = 0;
                                _ = &explicit;
                                var dp: [*c]struct_dep = null;
                                _ = &dp;
                                if (file_impossible_p(d.*.name) != 0) {
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(if (is_rule != 0) gettext("Rejecting rule '%s' due to impossible rule prerequisite '%s'.\n") else gettext("Rejecting rule '%s' due to impossible implicit prerequisite '%s'.\n"), get_rule_defn(rule_2), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    tryrules[ri].rule = null;
                                    failed = 1;
                                    break;
                                }
                                _ = memset(@as(?*anyopaque, @ptrCast(pat)), @as(c_int, '\x00'), @sizeOf(struct_patdeps));
                                pat.*.ignore_mtime = d.*.ignore_mtime;
                                pat.*.ignore_automatic_vars = d.*.ignore_automatic_vars;
                                pat.*.wait_here = d.*.wait_here;
                                pat.*.is_explicit = d.*.is_explicit;
                                while (true) {
                                    if ((@as(c_int, 8) & db_level) != 0) {
                                        print_spaces(depth);
                                        _ = printf(if (is_rule != 0) gettext("Trying rule prerequisite '%s'.\n") else gettext("Trying implicit prerequisite '%s'.\n"), d.*.name);
                                        _ = fflush(stdout);
                                    }
                                    if (!false) break;
                                }
                                df = lookup_file(d.*.name);
                                if ((df != null) and (df.*.is_explicit != 0)) {
                                    pat.*.is_explicit = 1;
                                }
                                if (((df != null) and !(df.*.is_explicit != 0)) and !(d.*.is_explicit != 0)) {
                                    df.*.intermediate = 1;
                                }
                                if ((df != null) and (df.*.is_target != 0)) {
                                    explicit = 1;
                                } else {
                                    dp = file_1.*.deps;
                                    while (dp != null) : (dp = dp.*.next) if ((d.*.name == (if (dp.*.name != null) dp.*.name else dp.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, (if (dp.*.name != null) dp.*.name else dp.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(d.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (dp.*.name != null) dp.*.name else dp.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) break;
                                }
                                if ((explicit != 0) or (dp != null)) {
                                    (blk: {
                                        const ref = &pat;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).*.name = d.*.name;
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(gettext("'%s' ought to exist.\n"), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    continue;
                                }
                                if (file_exists_p(d.*.name) != 0) {
                                    (blk: {
                                        const ref = &pat;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).*.name = d.*.name;
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(gettext("Found '%s'.\n"), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    continue;
                                }
                                if ((df != null) and (allow_compat_rules != 0)) {
                                    (blk: {
                                        const ref = &pat;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).*.name = d.*.name;
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(gettext("Using compatibility rule '%s' due to '%s'.\n"), get_rule_defn(rule_2), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    continue;
                                }
                                if (df != null) {
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(gettext("Prerequisite '%s' of rule '%s' does not qualify as ought to exist.\n"), d.*.name, get_rule_defn(rule_2));
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    found_compat_rule = 1;
                                }
                                {
                                    var vname: [*c]const u8 = vpath_search(d.*.name, null, null, null);
                                    _ = &vname;
                                    if (vname != null) {
                                        while (true) {
                                            if ((@as(c_int, 8) & db_level) != 0) {
                                                print_spaces(depth);
                                                _ = printf(gettext("Found prerequisite '%s' as VPATH '%s'.\n"), d.*.name, vname);
                                                _ = fflush(stdout);
                                            }
                                            if (!false) break;
                                        }
                                        (blk: {
                                            const ref = &pat;
                                            const tmp = ref.*;
                                            ref.* += 1;
                                            break :blk tmp;
                                        }).*.name = d.*.name;
                                        continue;
                                    }
                                }
                                if (intermed_ok != 0) {
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(if ((d.*.is_explicit != 0) or ((df != null) and (df.*.is_explicit != 0))) gettext("Looking for a rule with explicit file '%s'.\n") else gettext("Looking for a rule with intermediate file '%s'.\n"), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                    if (int_file == null) {
                                        int_file = @as([*c]struct_file, @ptrCast(@alignCast(malloc(@sizeOf(struct_file)))));
                                    }
                                    _ = memset(@as(?*anyopaque, @ptrCast(int_file)), @as(c_int, '\x00'), @sizeOf(struct_file));
                                    int_file.*.name = d.*.name;
                                    if (pattern_search(int_file, @as(c_int, 0), depth, recursions +% @as(c_uint, @bitCast(@as(c_int, 1))), allow_compat_rules) != 0) {
                                        pat.*.pattern = int_file.*.name;
                                        int_file.*.name = d.*.name;
                                        pat.*.file = int_file;
                                        int_file = null;
                                        (blk: {
                                            const ref = &pat;
                                            const tmp = ref.*;
                                            ref.* += 1;
                                            break :blk tmp;
                                        }).*.name = d.*.name;
                                        continue;
                                    }
                                    if (int_file.*.variables != null) {
                                        free_variable_set(int_file.*.variables);
                                    }
                                    if (int_file.*.pat_variables != null) {
                                        free_variable_set(int_file.*.pat_variables);
                                    }
                                    if (df == null) {
                                        file_impossible(d.*.name);
                                    }
                                }
                                if (intermed_ok != 0) {
                                    while (true) {
                                        if ((@as(c_int, 8) & db_level) != 0) {
                                            print_spaces(depth);
                                            _ = printf(gettext("Rejecting rule '%s' due to impossible prerequisite '%s'.\n"), get_rule_defn(rule_2), d.*.name);
                                            _ = fflush(stdout);
                                        }
                                        if (!false) break;
                                    }
                                } else while (true) {
                                    if ((@as(c_int, 8) & db_level) != 0) {
                                        print_spaces(depth);
                                        _ = printf(gettext("Not found '%s'.\n"), d.*.name);
                                        _ = fflush(stdout);
                                    }
                                    if (!false) break;
                                }
                                failed = 1;
                                break;
                            }
                        }
                        free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(dl))));
                        if (failed != 0) break;
                    }
                    rule_2.*.in_use = 0;
                    if (!(failed != 0)) break;
                }
            }
            if (ri < nrules) break;
            rule_2 = null;
        }
    }
    if (rule_2 == null) {
        free(@as(?*anyopaque, @ptrCast(tryrules)));
        free(@as(?*anyopaque, @ptrCast(deplist)));
        depth -%= 1;
        if (rule_2 != null) {
            while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Found implicit rule '%s' for '%s'.\n"), get_rule_defn(rule_2), filename);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            return 1;
        }
        if (found_compat_rule != 0) {
            while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Searching for a compatibility rule for '%s'.\n"), filename);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            _ = @as(c_int, 0);
            return pattern_search(file_1, archive, depth, recursions, @as(c_int, 1));
        }
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("No implicit rule found for '%s'.\n"), filename);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return 0;
    }
    foundrule = ri;
    if (recursions > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        file_1.*.name = rule_2.*.targets[tryrules[foundrule].matches];
    }
    while ((blk: {
        const ref = &pat;
        const tmp = ref.*;
        ref.* -= 1;
        break :blk tmp;
    }) > deplist) {
        var dep_1: [*c]struct_dep = undefined;
        _ = &dep_1;
        var s: [*c]const u8 = undefined;
        _ = &s;
        if (pat.*.file != null) {
            var imf: [*c]struct_file = pat.*.file;
            _ = &imf;
            var f: [*c]struct_file = lookup_file(imf.*.name);
            _ = &f;
            if (!(f != null)) {
                f = enter_file(imf.*.name);
            }
            f.*.deps = imf.*.deps;
            f.*.cmds = imf.*.cmds;
            f.*.stem = imf.*.stem;
            merge_variable_set_lists(&f.*.variables, imf.*.variables);
            f.*.pat_variables = imf.*.pat_variables;
            f.*.pat_searched = imf.*.pat_searched;
            f.*.also_make = imf.*.also_make;
            f.*.is_target = 1;
            f.*.is_explicit |= @as(c_uint, @intFromBool((imf.*.is_explicit != 0) or (pat.*.is_explicit != 0)));
            f.*.notintermediate |= @as(c_uint, @intFromBool((imf.*.notintermediate != 0) or (no_intermediates != 0)));
            f.*.intermediate |= @as(c_uint, @intFromBool(!(f.*.is_explicit != 0) and !(f.*.notintermediate != 0)));
            f.*.tried_implicit = 1;
            imf = lookup_file(pat.*.pattern);
            if ((imf != null) and (imf.*.precious != 0)) {
                f.*.precious = 1;
            }
            {
                dep_1 = f.*.deps;
                while (dep_1 != null) : (dep_1 = dep_1.*.next) {
                    dep_1.*.file = enter_file(dep_1.*.name);
                    dep_1.*.name = null;
                    dep_1.*.file.*.tried_implicit |= dep_1.*.changed;
                }
            }
        }
        dep_1 = @as([*c]struct_dep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_dep)))));
        dep_1.*.ignore_mtime = pat.*.ignore_mtime;
        dep_1.*.is_explicit = pat.*.is_explicit;
        dep_1.*.ignore_automatic_vars = pat.*.ignore_automatic_vars;
        dep_1.*.wait_here = pat.*.wait_here;
        s = strcache_add(pat.*.name);
        if (recursions != 0) {
            dep_1.*.name = s;
        } else {
            dep_1.*.file = lookup_file(s);
            if (dep_1.*.file == null) {
                dep_1.*.file = enter_file(s);
            }
        }
        if ((pat.*.file == null) and (@as(c_int, @bitCast(@as(c_uint, tryrules[foundrule].rule.*.terminal))) != 0)) {
            if (dep_1.*.file == null) {
                dep_1.*.changed = 1;
            } else {
                dep_1.*.file.*.tried_implicit = 1;
            }
        }
        dep_1.*.next = file_1.*.deps;
        file_1.*.deps = dep_1;
        file_1.*.was_shuffled = 0;
    }
    if (!(file_1.*.was_shuffled != 0)) {
        shuffle_deps_recursive(file_1.*.deps);
    }
    if (!(tryrules[foundrule].checked_lastslash != 0)) {
        file_1.*.stem = strcache_add_len(stem, stemlen);
        fullstemlen = stemlen;
    } else {
        fullstemlen = pathlen +% stemlen;
        _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&stem_str))))), @as(?*const anyopaque, @ptrCast(filename)), pathlen);
        _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&stem_str))) + pathlen)), @as(?*const anyopaque, @ptrCast(stem)), stemlen);
        stem_str[fullstemlen] = '\x00';
        file_1.*.stem = strcache_add(@as([*c]u8, @ptrCast(@alignCast(&stem_str))));
    }
    file_1.*.cmds = rule_2.*.cmds;
    file_1.*.is_target = 1;
    {
        var f: [*c]struct_file = lookup_file(rule_2.*.targets[tryrules[foundrule].matches]);
        _ = &f;
        if (f != null) {
            if (f.*.precious != 0) {
                file_1.*.precious = 1;
            }
            if ((f.*.notintermediate != 0) or (no_intermediates != 0)) {
                file_1.*.notintermediate = 1;
            }
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, rule_2.*.num))) > @as(c_int, 1)) {
        ri = 0;
        while (ri < @as(c_uint, @bitCast(@as(c_uint, rule_2.*.num)))) : (ri +%= 1) if (ri != tryrules[foundrule].matches) {
            var nm: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, @bitCast(@as(c_ulong, rule_2.*.lens[ri]))) +% fullstemlen) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
            _ = &nm;
            var p: [*c]u8 = nm;
            _ = &p;
            var f: [*c]struct_file = undefined;
            _ = &f;
            var new: [*c]struct_dep = @as([*c]struct_dep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_dep)))));
            _ = &new;
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(rule_2.*.targets[ri])), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(rule_2.*.suffixes[ri]) -% @intFromPtr(rule_2.*.targets[ri]))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(file_1.*.stem)), fullstemlen))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(rule_2.*.suffixes[ri])), @as(c_ulong, @bitCast((@as(c_long, @bitCast(@as(c_ulong, rule_2.*.lens[ri]))) - @divExact(@as(c_long, @bitCast(@intFromPtr(rule_2.*.suffixes[ri]) -% @intFromPtr(rule_2.*.targets[ri]))), @sizeOf(u8))) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))))));
            new.*.name = strcache_add(nm);
            new.*.file = enter_file(new.*.name);
            new.*.next = file_1.*.also_make;
            f = lookup_file(rule_2.*.targets[ri]);
            if (f != null) {
                if (f.*.precious != 0) {
                    new.*.file.*.precious = 1;
                }
                if ((f.*.notintermediate != 0) or (no_intermediates != 0)) {
                    new.*.file.*.notintermediate = 1;
                }
            }
            new.*.file.*.is_target = 1;
            file_1.*.also_make = new;
        };
    }
    free(@as(?*anyopaque, @ptrCast(tryrules)));
    free(@as(?*anyopaque, @ptrCast(deplist)));
    depth -%= 1;
    if (rule_2 != null) {
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Found implicit rule '%s' for '%s'.\n"), get_rule_defn(rule_2), filename);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        return 1;
    }
    if (found_compat_rule != 0) {
        while (true) {
            if ((@as(c_int, 8) & db_level) != 0) {
                print_spaces(depth);
                _ = printf(gettext("Searching for a compatibility rule for '%s'.\n"), filename);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        _ = @as(c_int, 0);
        return pattern_search(file_1, archive, depth, recursions, @as(c_int, 1));
    }
    while (true) {
        if ((@as(c_int, 8) & db_level) != 0) {
            print_spaces(depth);
            _ = printf(gettext("No implicit rule found for '%s'.\n"), filename);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    return 0;
}
fn get_next_word(arg_buffer: [*c]const u8, arg_length: [*c]usize) callconv(.C) [*c]const u8 {
    var buffer = arg_buffer;
    _ = &buffer;
    var length = arg_length;
    _ = &length;
    var p: [*c]const u8 = buffer;
    _ = &p;
    var beg: [*c]const u8 = undefined;
    _ = &beg;
    var c: u8 = undefined;
    _ = &c;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        p += 1;
    }
    beg = p;
    c = (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).*;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\x00')) return null;
    while (true) {
        var closeparen: u8 = undefined;
        _ = &closeparen;
        var count: c_int = undefined;
        _ = &count;
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, c)))) {
                @as(c_int, 0), @as(c_int, 32), @as(c_int, 9) => {
                    {
                        p -= 1;
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return beg;
                    }
                },
                @as(c_int, 36) => {
                    c = (blk: {
                        const ref = &p;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).*;
                    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '$')) break;
                    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '(')) {
                        closeparen = ')';
                    } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '{')) {
                        closeparen = '}';
                    } else break;
                    {
                        count = 0;
                        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                            if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, c)))) {
                                count += 1;
                            } else if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                                const ref = &count;
                                ref.* -= 1;
                                break :blk ref.*;
                            }) < @as(c_int, 0))) {
                                p += 1;
                                break;
                            }
                        }
                    }
                    break;
                },
                @as(c_int, 124) => {
                    {
                        if (length != null) {
                            length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
                        }
                        return beg;
                    }
                },
                else => break,
            }
            break;
        }
        c = (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    p -= 1;
    if (length != null) {
        length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(beg))), @sizeOf(u8))));
    }
    return beg;
}
