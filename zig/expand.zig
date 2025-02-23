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

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const struct_dep = opaque {};
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
    deps: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
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

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

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
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;

extern fn lindex([*c]const u8, [*c]const u8, c_int) [*c]u8;

extern fn find_percent([*c]u8) [*c]u8;

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
const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
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

extern var db_level: c_int;

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern var snapped_deps: c_int;
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

extern var children: [*c]struct_child;

extern var job_slots_used: c_uint;
extern var jobserver_tokens: c_uint;
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
export fn variable_buffer_output(arg_ptr: [*c]u8, arg_string: [*c]const u8, arg_length: usize) [*c]u8 {
    var ptr = arg_ptr;
    _ = &ptr;
    var string = arg_string;
    _ = &string;
    var length = arg_length;
    _ = &length;
    var newlen: usize = length +% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ptr) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
    _ = &newlen;
    if ((newlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 5))))) > variable_buffer_length) {
        var offset: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ptr) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
        _ = &offset;
        variable_buffer_length = if ((newlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 100))))) > (@as(usize, @bitCast(@as(c_long, @as(c_int, 2)))) *% variable_buffer_length)) newlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 100)))) else @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))) *% variable_buffer_length;
        variable_buffer = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(variable_buffer)), variable_buffer_length))));
        ptr = variable_buffer + offset;
    }
    return @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(ptr)), @as(?*const anyopaque, @ptrCast(string)), length))));
}
export fn variable_expand(arg_line: [*c]const u8) [*c]u8 {
    var line = arg_line;
    _ = &line;
    return variable_expand_string(null, line, @as(c_ulong, 18446744073709551615));
}
export fn variable_expand_for_file(arg_line: [*c]const u8, arg_file_1: [*c]struct_file) [*c]u8 {
    var line = arg_line;
    _ = &line;
    var file_1 = arg_file_1;
    _ = &file_1;
    var result: [*c]u8 = undefined;
    _ = &result;
    var savev: [*c]struct_variable_set_list = undefined;
    _ = &savev;
    var savef: [*c]const floc = undefined;
    _ = &savef;
    if (file_1 == null) return variable_expand(line);
    savev = current_variable_set_list;
    current_variable_set_list = file_1.*.variables;
    savef = reading_file;
    if ((file_1.*.cmds != null) and (file_1.*.cmds.*.fileinfo.filenm != null)) {
        reading_file = &file_1.*.cmds.*.fileinfo;
    } else {
        reading_file = null;
    }
    result = variable_expand(line);
    current_variable_set_list = savev;
    reading_file = savef;
    return result;
}
export fn allocated_variable_expand_for_file(arg_line: [*c]const u8, arg_file_1: [*c]struct_file) [*c]u8 {
    var line = arg_line;
    _ = &line;
    var file_1 = arg_file_1;
    _ = &file_1;
    var value: [*c]u8 = undefined;
    _ = &value;
    var obuf: [*c]u8 = variable_buffer;
    _ = &obuf;
    var olen: usize = variable_buffer_length;
    _ = &olen;
    variable_buffer = null;
    value = variable_expand_for_file(line, file_1);
    variable_buffer = obuf;
    variable_buffer_length = olen;
    return value;
}
export fn expand_argument(arg_str: [*c]const u8, arg_end: [*c]const u8) [*c]u8 {
    var str = arg_str;
    _ = &str;
    var end = arg_end;
    _ = &end;
    var tmp: [*c]u8 = undefined;
    _ = &tmp;
    var alloc: [*c]u8 = null;
    _ = &alloc;
    var r: [*c]u8 = undefined;
    _ = &r;
    if (str == end) return xstrdup("");
    if (!(end != null) or (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, '\x00'))) return allocated_variable_expand_for_file(str, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    if ((@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(str))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 1000))))) {
        tmp = blk: {
            const tmp_1 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(str))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
            alloc = tmp_1;
            break :blk tmp_1;
        };
    } else {
        tmp = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(str))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))))));
    }
    _ = memcpy(@as(?*anyopaque, @ptrCast(tmp)), @as(?*const anyopaque, @ptrCast(str)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(str))), @sizeOf(u8)))));
    (blk: {
        const tmp_1 = @divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(str))), @sizeOf(u8));
        if (tmp_1 >= 0) break :blk tmp_1 + @as(usize, @intCast(tmp_1)) else break :blk tmp_1 - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_1)) +% -1));
    }).* = '\x00';
    r = allocated_variable_expand_for_file(tmp, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    free(@as(?*anyopaque, @ptrCast(alloc)));
    return r;
}
export fn variable_expand_string(arg_line: [*c]u8, arg_string: [*c]const u8, arg_length: usize) [*c]u8 {
    var line = arg_line;
    _ = &line;
    var string = arg_string;
    _ = &string;
    var length = arg_length;
    _ = &length;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var p1: [*c]const u8 = undefined;
    _ = &p1;
    var save: [*c]u8 = undefined;
    _ = &save;
    var o: [*c]u8 = undefined;
    _ = &o;
    var line_offset: usize = undefined;
    _ = &line_offset;
    if (!(line != null)) {
        line = initialize_variable_output();
    }
    o = line;
    line_offset = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(line) -% @intFromPtr(variable_buffer))), @sizeOf(u8))));
    if (length == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        _ = variable_buffer_output(o, "", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        return variable_buffer;
    }
    save = if (length == @as(c_ulong, 18446744073709551615)) xstrdup(string) else xstrndup(string, length);
    p = save;
    while (true) {
        p1 = strchr(p, @as(c_int, '$'));
        o = variable_buffer_output(o, p, if (p1 != null) @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p1) -% @intFromPtr(p))), @sizeOf(u8)))) else strlen(p) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))));
        if (p1 == null) break;
        p = p1 + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        while (true) {
            switch (@as(c_int, @bitCast(@as(c_uint, p.*)))) {
                @as(c_int, 36), @as(c_int, 0) => {
                    o = variable_buffer_output(o, p1, @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                    break;
                },
                @as(c_int, 40), @as(c_int, 123) => {
                    {
                        var openparen: u8 = p.*;
                        _ = &openparen;
                        var closeparen: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, openparen))) == @as(c_int, '(')) @as(c_int, ')') else @as(c_int, '}')))));
                        _ = &closeparen;
                        var begp: [*c]const u8 = undefined;
                        _ = &begp;
                        var beg: [*c]const u8 = p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                        _ = &beg;
                        var op: [*c]u8 = undefined;
                        _ = &op;
                        var abeg: [*c]u8 = null;
                        _ = &abeg;
                        var end: [*c]const u8 = undefined;
                        _ = &end;
                        var colon: [*c]const u8 = undefined;
                        _ = &colon;
                        op = o;
                        begp = p;
                        if (handle_function(&op, &begp) != 0) {
                            o = op;
                            p = begp;
                            break;
                        }
                        end = strchr(beg, @as(c_int, @bitCast(@as(c_uint, closeparen))));
                        if (end == null) {
                            fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("unterminated variable reference"));
                        }
                        p1 = lindex(beg, end, @as(c_int, '$'));
                        if (p1 != null) {
                            var count: c_int = 0;
                            _ = &count;
                            {
                                p = beg;
                                while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, openparen)))) {
                                        count += 1;
                                    } else if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                                        const ref = &count;
                                        ref.* -= 1;
                                        break :blk ref.*;
                                    }) < @as(c_int, 0))) break;
                                }
                            }
                            if (count < @as(c_int, 0)) {
                                abeg = expand_argument(beg, p);
                                beg = abeg;
                                end = strchr(beg, @as(c_int, '\x00'));
                            }
                        } else {
                            p = end;
                        }
                        colon = lindex(beg, end, @as(c_int, ':'));
                        if (colon != null) {
                            var subst_beg: [*c]const u8 = colon + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                            _ = &subst_beg;
                            var subst_end: [*c]const u8 = lindex(subst_beg, end, @as(c_int, '='));
                            _ = &subst_end;
                            if (subst_end == null) {
                                colon = null;
                            } else {
                                var replace_beg: [*c]const u8 = subst_end + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                                _ = &replace_beg;
                                var replace_end: [*c]const u8 = end;
                                _ = &replace_end;
                                v = lookup_variable(beg, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(colon) -% @intFromPtr(beg))), @sizeOf(u8)))));
                                if (v == null) {
                                    warn_undefined(beg, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(colon) -% @intFromPtr(beg))), @sizeOf(u8)))));
                                }
                                if ((v != null) and (@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) != @as(c_int, '\x00'))) {
                                    var pattern: [*c]u8 = undefined;
                                    _ = &pattern;
                                    var replace: [*c]u8 = undefined;
                                    _ = &replace;
                                    var ppercent: [*c]u8 = undefined;
                                    _ = &ppercent;
                                    var rpercent: [*c]u8 = undefined;
                                    _ = &rpercent;
                                    var value: [*c]u8 = if (v.*.recursive != 0) recursively_expand_for_file(v, null) else v.*.value;
                                    _ = &value;
                                    pattern = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(subst_end) -% @intFromPtr(subst_beg))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))))))));
                                    (blk: {
                                        const ref = &pattern;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).* = '%';
                                    _ = memcpy(@as(?*anyopaque, @ptrCast(pattern)), @as(?*const anyopaque, @ptrCast(subst_beg)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(subst_end) -% @intFromPtr(subst_beg))), @sizeOf(u8)))));
                                    (blk: {
                                        const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(subst_end) -% @intFromPtr(subst_beg))), @sizeOf(u8));
                                        if (tmp >= 0) break :blk pattern + @as(usize, @intCast(tmp)) else break :blk pattern - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).* = '\x00';
                                    replace = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(replace_end) -% @intFromPtr(replace_beg))), @sizeOf(u8)) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))))))));
                                    (blk: {
                                        const ref = &replace;
                                        const tmp = ref.*;
                                        ref.* += 1;
                                        break :blk tmp;
                                    }).* = '%';
                                    _ = memcpy(@as(?*anyopaque, @ptrCast(replace)), @as(?*const anyopaque, @ptrCast(replace_beg)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(replace_end) -% @intFromPtr(replace_beg))), @sizeOf(u8)))));
                                    (blk: {
                                        const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(replace_end) -% @intFromPtr(replace_beg))), @sizeOf(u8));
                                        if (tmp >= 0) break :blk replace + @as(usize, @intCast(tmp)) else break :blk replace - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).* = '\x00';
                                    ppercent = find_percent(pattern);
                                    if (ppercent != null) {
                                        ppercent += 1;
                                        rpercent = find_percent(replace);
                                        if (rpercent != null) {
                                            rpercent += 1;
                                        }
                                    } else {
                                        ppercent = pattern;
                                        rpercent = replace;
                                        pattern -= 1;
                                        replace -= 1;
                                    }
                                    o = patsubst_expand_pat(o, value, pattern, replace, ppercent, rpercent);
                                    if (v.*.recursive != 0) {
                                        free(@as(?*anyopaque, @ptrCast(value)));
                                    }
                                }
                            }
                        }
                        if (colon == null) {
                            o = reference_variable(o, beg, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(beg))), @sizeOf(u8)))));
                        }
                        free(@as(?*anyopaque, @ptrCast(abeg)));
                    }
                    break;
                },
                else => {
                    if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                        @as(u8, @bitCast((blk: {
                            const tmp = -@as(c_int, 1);
                            if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))
                    ]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) break;
                    o = reference_variable(o, p, @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                    break;
                },
            }
            break;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) break;
        p += 1;
    }
    free(@as(?*anyopaque, @ptrCast(save)));
    _ = variable_buffer_output(o, "", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    return variable_buffer + line_offset;
}
export fn initialize_variable_output() [*c]u8 {
    if (variable_buffer == null) {
        variable_buffer_length = 200;
        variable_buffer = @as([*c]u8, @ptrCast(@alignCast(xmalloc(variable_buffer_length))));
        variable_buffer[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    }
    return variable_buffer;
}
export fn install_variable_buffer(arg_bufp: [*c][*c]u8, arg_lenp: [*c]usize) void {
    var bufp = arg_bufp;
    _ = &bufp;
    var lenp = arg_lenp;
    _ = &lenp;
    bufp.* = variable_buffer;
    lenp.* = variable_buffer_length;
    variable_buffer = null;
    _ = initialize_variable_output();
}
export fn restore_variable_buffer(arg_buf: [*c]u8, arg_len: usize) void {
    var buf = arg_buf;
    _ = &buf;
    var len = arg_len;
    _ = &len;
    free(@as(?*anyopaque, @ptrCast(variable_buffer)));
    variable_buffer = buf;
    variable_buffer_length = len;
}
extern fn handle_function(op: [*c][*c]u8, stringp: [*c][*c]const u8) c_int;

extern fn patsubst_expand_pat(o: [*c]u8, text: [*c]const u8, pattern: [*c]const u8, replace: [*c]const u8, pattern_percent: [*c]const u8, replace_percent: [*c]const u8) [*c]u8;

export fn recursively_expand_for_file(arg_v: [*c]struct_variable, arg_file_1: [*c]struct_file) [*c]u8 {
    var v = arg_v;
    _ = &v;
    var file_1 = arg_file_1;
    _ = &file_1;
    var value: [*c]u8 = undefined;
    _ = &value;
    var this_var: [*c]const floc = undefined;
    _ = &this_var;
    var saved_varp: [*c][*c]const floc = undefined;
    _ = &saved_varp;
    var save: [*c]struct_variable_set_list = null;
    _ = &save;
    var set_reading: c_int = 0;
    _ = &set_reading;
    if ((v.*.expanding != 0) and (env_recursion != 0)) {
        var nl: usize = strlen(v.*.name);
        _ = &nl;
        var ep: [*c][*c]u8 = undefined;
        _ = &ep;
        while (true) {
            if ((@as(c_int, 2) & db_level) != 0) {
                _ = printf(gettext("%s:%lu: not recursively expanding %s to export to shell function\n"), v.*.fileinfo.filenm, v.*.fileinfo.lineno, v.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        {
            ep = environ;
            while (ep.* != null) : (ep += 1) if ((@as(c_int, @bitCast(@as(c_uint, ep.*[nl]))) == @as(c_int, '=')) and (strncmp(ep.*, v.*.name, nl) == @as(c_int, 0))) return xstrdup((ep.* + nl) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        }
        return xstrdup("");
    }
    saved_varp = expanding_var;
    if (v.*.fileinfo.filenm != null) {
        this_var = &v.*.fileinfo;
        expanding_var = &this_var;
    }
    if (!(reading_file != null)) {
        set_reading = 1;
        reading_file = &v.*.fileinfo;
    }
    if (v.*.expanding != 0) {
        if (!(v.*.exp_count != 0)) {
            fatal(expanding_var.*, strlen(v.*.name), gettext("Recursive variable '%s' references itself (eventually)"), v.*.name);
        }
        v.*.exp_count -%= 1;
    }
    if (file_1 != null) {
        save = current_variable_set_list;
        current_variable_set_list = file_1.*.variables;
    }
    v.*.expanding = 1;
    if (v.*.append != 0) {
        value = allocated_variable_append(v);
    } else {
        value = allocated_variable_expand_for_file(v.*.value, @as([*c]struct_file, @ptrFromInt(@as(c_int, 0))));
    }
    v.*.expanding = 0;
    if (set_reading != 0) {
        reading_file = null;
    }
    if (file_1 != null) {
        current_variable_set_list = save;
    }
    expanding_var = saved_varp;
    return value;
}

extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) [*c]struct_variable;

extern fn warn_undefined(name: [*c]const u8, length: usize) void;

extern var export_all_variables: c_int;
const struct_rule = extern struct {
    next: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    targets: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    lens: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    suffixes: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    deps: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    cmds: [*c]struct_commands = @import("std").mem.zeroes([*c]struct_commands),
    _defn: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num: c_ushort = @import("std").mem.zeroes(c_ushort),
    terminal: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
};

extern var pattern_rules: [*c]struct_rule;
extern var last_pattern_rule: [*c]struct_rule;
extern var num_pattern_rules: c_uint;
extern var max_pattern_deps: c_uint;
extern var max_pattern_targets: c_uint;
extern var max_pattern_dep_length: usize;
extern var suffix_file: [*c]struct_file;

var variable_buffer_length: usize = @import("std").mem.zeroes(usize);
fn allocated_variable_append(arg_v: [*c]const struct_variable) callconv(.C) [*c]u8 {
    var v = arg_v;
    _ = &v;
    var val: [*c]u8 = undefined;
    _ = &val;
    var obuf: [*c]u8 = variable_buffer;
    _ = &obuf;
    var olen: usize = variable_buffer_length;
    _ = &olen;
    variable_buffer = null;
    val = variable_append(v.*.name, strlen(v.*.name), current_variable_set_list, @as(c_int, 1));
    _ = variable_buffer_output(val, "", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    val = variable_buffer;
    variable_buffer = obuf;
    variable_buffer_length = olen;
    return val;
}
fn reference_variable(arg_o: [*c]u8, arg_name: [*c]const u8, arg_length: usize) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var v: [*c]struct_variable = undefined;
    _ = &v;
    var value: [*c]u8 = undefined;
    _ = &value;
    v = lookup_variable(name, length);
    if (v == null) {
        warn_undefined(name, length);
    }
    if ((v == null) or ((@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00')) and !(v.*.append != 0))) return o;
    value = if (v.*.recursive != 0) recursively_expand_for_file(v, null) else v.*.value;
    o = variable_buffer_output(o, value, strlen(value));
    if (v.*.recursive != 0) {
        free(@as(?*anyopaque, @ptrCast(value)));
    }
    return o;
}
fn variable_append(arg_name: [*c]const u8, arg_length: usize, arg_set: [*c]const struct_variable_set_list, arg_local: c_int) callconv(.C) [*c]u8 {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var set = arg_set;
    _ = &set;
    var local = arg_local;
    _ = &local;
    var v: [*c]const struct_variable = undefined;
    _ = &v;
    var buf: [*c]u8 = null;
    _ = &buf;
    var nextlocal: c_int = undefined;
    _ = &nextlocal;
    if (!(set != null)) return initialize_variable_output();
    nextlocal = @intFromBool((local != 0) and (set.*.next_is_parent == @as(c_int, 0)));
    v = lookup_variable_in_set(name, length, set.*.set);
    if (!(v != null) or (!(local != 0) and (v.*.private_var != 0))) return variable_append(name, length, set.*.next, nextlocal);
    if (v.*.append != 0) {
        buf = variable_append(name, length, set.*.next, nextlocal);
    } else {
        buf = initialize_variable_output();
    }
    if (buf > variable_buffer) {
        buf = variable_buffer_output(buf, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    }
    if (!(v.*.recursive != 0)) return variable_buffer_output(buf, v.*.value, strlen(v.*.value));
    buf = variable_expand_string(buf, v.*.value, strlen(v.*.value));
    return buf + strlen(buf);
}
