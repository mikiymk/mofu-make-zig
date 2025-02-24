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

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn putchar(__c: c_int) c_int;

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

extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

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

const message = @import("output.zig").message;
const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

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
extern fn xstrdup([*c]const u8) [*c]u8;

extern fn find_percent_cached([*c][*c]const u8) [*c]const u8;

extern fn dir_file_exists_p([*c]const u8, [*c]const u8) c_int;

extern fn strcache_add_len(str: [*c]const u8, len: usize) [*c]const u8;

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

extern fn expand_extra_prereqs(extra: [*c]const struct_variable) [*c]struct_dep;

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
extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: [*c]const struct_dep) [*c]struct_dep;

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

extern fn print_commands(cmds: [*c]const struct_commands) void;

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

extern fn lookup_variable(name: [*c]const u8, length: usize) [*c]struct_variable;

extern var export_all_variables: c_int;
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
const struct_pspec = extern struct {
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dep: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    commands: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
extern var pattern_rules: [*c]struct_rule;
extern var last_pattern_rule: [*c]struct_rule;
extern var num_pattern_rules: c_uint;
extern var max_pattern_deps: c_uint;
extern var max_pattern_targets: c_uint;
extern var max_pattern_dep_length: usize;
extern var suffix_file: [*c]struct_file;
export fn snap_implicit_rules() void {
    var name: [*c]u8 = null;
    _ = &name;
    var namelen: usize = 0;
    _ = &namelen;
    var rule_1: [*c]struct_rule = undefined;
    _ = &rule_1;
    var dep_2: [*c]struct_dep = undefined;
    _ = &dep_2;
    var prereqs: [*c]struct_dep = expand_extra_prereqs(lookup_variable(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, 1)));
    _ = &prereqs;
    var pre_deps: c_uint = 0;
    _ = &pre_deps;
    max_pattern_dep_length = 0;
    {
        dep_2 = prereqs;
        while (dep_2 != null) : (dep_2 = dep_2.*.next) {
            var d: [*c]const u8 = if (dep_2.*.name != null) dep_2.*.name else dep_2.*.file.*.name;
            _ = &d;
            var l: usize = strlen(d);
            _ = &l;
            if (dep_2.*.need_2nd_expansion != 0) while ((blk: {
                const tmp = strchr(d, @as(c_int, '%'));
                d = tmp;
                break :blk tmp;
            }) != null) {
                l +%= @as(usize, 4);
                d += 1;
            };
            if (l > max_pattern_dep_length) {
                max_pattern_dep_length = l;
            }
            pre_deps +%= 1;
        }
    }
    num_pattern_rules = blk: {
        const tmp = blk_1: {
            const tmp_2 = @as(c_uint, 0);
            max_pattern_deps = tmp_2;
            break :blk_1 tmp_2;
        };
        max_pattern_targets = tmp;
        break :blk tmp;
    };
    {
        rule_1 = pattern_rules;
        while (rule_1 != null) : (rule_1 = rule_1.*.next) {
            var ndeps: c_uint = pre_deps;
            _ = &ndeps;
            var lastdep: [*c]struct_dep = null;
            _ = &lastdep;
            num_pattern_rules +%= 1;
            if (@as(c_uint, @bitCast(@as(c_uint, rule_1.*.num))) > max_pattern_targets) {
                max_pattern_targets = @as(c_uint, @bitCast(@as(c_uint, rule_1.*.num)));
            }
            {
                dep_2 = rule_1.*.deps;
                while (dep_2 != null) : (dep_2 = dep_2.*.next) {
                    var dname: [*c]const u8 = if (dep_2.*.name != null) dep_2.*.name else dep_2.*.file.*.name;
                    _ = &dname;
                    var len: usize = strlen(dname);
                    _ = &len;
                    var p: [*c]const u8 = strrchr(dname, @as(c_int, '/'));
                    _ = &p;
                    var p2: [*c]const u8 = if (p != null) strchr(p, @as(c_int, '%')) else null;
                    _ = &p2;
                    ndeps +%= 1;
                    if (len > max_pattern_dep_length) {
                        max_pattern_dep_length = len;
                    }
                    if (!(dep_2.*.next != null)) {
                        lastdep = dep_2;
                    }
                    if (p2 != null) {
                        if (p == dname) {
                            p += 1;
                        }
                        if (@as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(dname))), @sizeOf(u8)))) > namelen) {
                            namelen = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(dname))), @sizeOf(u8))));
                            name = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(name)), namelen +% @as(usize, 1)))));
                        }
                        _ = memcpy(@as(?*anyopaque, @ptrCast(name)), @as(?*const anyopaque, @ptrCast(dname)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(dname))), @sizeOf(u8)))));
                        (blk: {
                            const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(dname))), @sizeOf(u8));
                            if (tmp >= 0) break :blk name + @as(usize, @intCast(tmp)) else break :blk name - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = '\x00';
                        dep_2.*.changed = @as(c_uint, @intFromBool(!(dir_file_exists_p(name, "") != 0)));
                    } else {
                        dep_2.*.changed = 0;
                    }
                }
            }
            if (prereqs != null) {
                if (lastdep != null) {
                    lastdep.*.next = copy_dep_chain(prereqs);
                } else {
                    rule_1.*.deps = copy_dep_chain(prereqs);
                }
            }
            if (ndeps > max_pattern_deps) {
                max_pattern_deps = ndeps;
            }
        }
    }
    free(@as(?*anyopaque, @ptrCast(name)));
    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(prereqs))));
}
export fn convert_to_pattern() void {
    var d: [*c]struct_dep = undefined;
    _ = &d;
    var d2: [*c]struct_dep = undefined;
    _ = &d2;
    var rulename: [*c]u8 = undefined;
    _ = &rulename;
    maxsuffix = 0;
    {
        d = suffix_file.*.deps;
        while (d != null) : (d = d.*.next) {
            var l: usize = strlen(if (d.*.name != null) d.*.name else d.*.file.*.name);
            _ = &l;
            if (l > maxsuffix) {
                maxsuffix = l;
            }
        }
    }
    rulename = @as([*c]u8, @ptrCast(@alignCast(malloc((maxsuffix *% @as(usize, 2)) +% @as(usize, 1)))));
    {
        d = suffix_file.*.deps;
        while (d != null) : (d = d.*.next) {
            var slen: usize = undefined;
            _ = &slen;
            convert_suffix_rule(if (d.*.name != null) d.*.name else d.*.file.*.name, null, null);
            if (d.*.file.*.cmds != null) {
                convert_suffix_rule("", if (d.*.name != null) d.*.name else d.*.file.*.name, d.*.file.*.cmds);
            }
            slen = strlen(if (d.*.name != null) d.*.name else d.*.file.*.name);
            _ = memcpy(@as(?*anyopaque, @ptrCast(rulename)), @as(?*const anyopaque, @ptrCast(if (d.*.name != null) d.*.name else d.*.file.*.name)), slen);
            {
                d2 = suffix_file.*.deps;
                while (d2 != null) : (d2 = d2.*.next) {
                    var f: [*c]struct_file = undefined;
                    _ = &f;
                    var s2len: usize = undefined;
                    _ = &s2len;
                    s2len = strlen(if (d2.*.name != null) d2.*.name else d2.*.file.*.name);
                    if ((slen == s2len) and (((if (d.*.name != null) d.*.name else d.*.file.*.name) == (if (d2.*.name != null) d2.*.name else d2.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) == @as(c_int, @bitCast(@as(c_uint, (if (d2.*.name != null) d2.*.name else d2.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) == @as(c_int, '\x00')) or !(strcmp((if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(1)))), (if (d2.*.name != null) d2.*.name else d2.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) continue;
                    _ = memcpy(@as(?*anyopaque, @ptrCast(rulename + slen)), @as(?*const anyopaque, @ptrCast(if (d2.*.name != null) d2.*.name else d2.*.file.*.name)), s2len +% @as(usize, 1));
                    f = lookup_file(rulename);
                    if ((f == null) or (f.*.cmds == null)) continue;
                    if (f.*.deps != null) {
                        if (posix_pedantic != 0) continue;
                        @"error"(&f.*.cmds.*.fileinfo, @as(usize, 0), gettext("warning: ignoring prerequisites on suffix rule definition"));
                    }
                    if (((s2len == @as(usize, 2)) and (@as(c_int, @bitCast(@as(c_uint, rulename[slen]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, rulename[slen +% @as(usize, 1)]))) == @as(c_int, 'a'))) {
                        convert_suffix_rule(null, if (d.*.name != null) d.*.name else d.*.file.*.name, f.*.cmds);
                    }
                    convert_suffix_rule(if (d2.*.name != null) d2.*.name else d2.*.file.*.name, if (d.*.name != null) d.*.name else d.*.file.*.name, f.*.cmds);
                }
            }
        }
    }
}
export fn install_pattern_rule(arg_p: [*c]struct_pspec, arg_terminal: c_int) void {
    var p = arg_p;
    _ = &p;
    var terminal = arg_terminal;
    _ = &terminal;
    var r: [*c]struct_rule = undefined;
    _ = &r;
    var ptr: [*c]const u8 = undefined;
    _ = &ptr;
    r = @as([*c]struct_rule, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_rule)))));
    r.*.num = 1;
    r.*.targets = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@sizeOf([*c]const u8)))));
    r.*.suffixes = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@sizeOf([*c]const u8)))));
    r.*.lens = @as([*c]c_uint, @ptrCast(@alignCast(xmalloc(@sizeOf(c_uint)))));
    r.*._defn = null;
    r.*.lens[0] = @as(c_uint, @bitCast(@as(c_uint, @truncate(strlen(p.*.target)))));
    r.*.targets[0] = p.*.target;
    r.*.suffixes[0] = find_percent_cached(&r.*.targets[0]);
    _ = 0;
    r.*.suffixes[0] += 1;
    ptr = p.*.dep;
    r.*.deps = @as([*c]struct_dep, @ptrCast(@alignCast(parse_file_seq(@as([*c][*c]u8, @ptrCast(@alignCast(&ptr))), @sizeOf(struct_dep), 1, null, 0))));
    if (new_pattern_rule(r, 0) != 0) {
        r.*.terminal = @as(u8, @bitCast(@as(i8, @truncate(if (terminal != 0) 1 else 0))));
        r.*.cmds = @as([*c]struct_commands, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_commands)))));
        r.*.cmds.*.fileinfo.filenm = null;
        r.*.cmds.*.fileinfo.lineno = 0;
        r.*.cmds.*.fileinfo.offset = 0;
        r.*.cmds.*.commands = xstrdup(p.*.commands);
        r.*.cmds.*.command_lines = null;
        r.*.cmds.*.recipe_prefix = '\t';
    }
}
export fn create_pattern_rule(arg_targets: [*c][*c]const u8, arg_target_percents: [*c][*c]const u8, arg_n: c_ushort, arg_terminal: c_int, arg_deps: [*c]struct_dep, arg_commands_1: [*c]struct_commands, arg_override: c_int) void {
    var targets = arg_targets;
    _ = &targets;
    var target_percents = arg_target_percents;
    _ = &target_percents;
    var n = arg_n;
    _ = &n;
    var terminal = arg_terminal;
    _ = &terminal;
    var deps = arg_deps;
    _ = &deps;
    var commands_1 = arg_commands_1;
    _ = &commands_1;
    var override = arg_override;
    _ = &override;
    var i: c_uint = undefined;
    _ = &i;
    var r: [*c]struct_rule = @as([*c]struct_rule, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_rule)))));
    _ = &r;
    r.*.num = n;
    r.*.cmds = commands_1;
    r.*.deps = deps;
    r.*.targets = targets;
    r.*.suffixes = target_percents;
    r.*.lens = @as([*c]c_uint, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, n))) *% @sizeOf(c_uint)))));
    r.*._defn = null;
    {
        i = 0;
        while (i < @as(c_uint, @bitCast(@as(c_uint, n)))) : (i +%= 1) {
            r.*.lens[i] = @as(c_uint, @bitCast(@as(c_uint, @truncate(strlen(targets[i])))));
            _ = 0;
            r.*.suffixes[i] += 1;
        }
    }
    if (new_pattern_rule(r, override) != 0) {
        r.*.terminal = @as(u8, @bitCast(@as(i8, @truncate(if (terminal != 0) 1 else 0))));
    }
}
export fn get_rule_defn(arg_r: [*c]struct_rule) [*c]const u8 {
    var r = arg_r;
    _ = &r;
    if (r.*._defn == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        var len: usize = 8;
        _ = &len;
        var k: c_uint = undefined;
        _ = &k;
        var p: [*c]u8 = undefined;
        _ = &p;
        var sep: [*c]const u8 = "";
        _ = &sep;
        var dep_1: [*c]const struct_dep = undefined;
        _ = &dep_1;
        var ood: [*c]const struct_dep = null;
        _ = &ood;
        {
            k = 0;
            while (k < @as(c_uint, @bitCast(@as(c_uint, r.*.num)))) : (k +%= 1) {
                len +%= @as(usize, @bitCast(@as(c_ulong, r.*.lens[k] +% @as(c_uint, 1))));
            }
        }
        {
            dep_1 = r.*.deps;
            while (dep_1 != null) : (dep_1 = dep_1.*.next) {
                len +%= @as(usize, @bitCast((strlen(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name) +% (if (dep_1.*.wait_here != 0) @sizeOf([7]u8) -% @as(c_ulong, 1) else @as(c_ulong, 0))) +% @as(c_ulong, 1)));
            }
        }
        p = blk: {
            const tmp = @as([*c]u8, @ptrCast(@alignCast(xmalloc(len))));
            r.*._defn = tmp;
            break :blk tmp;
        };
        {
            k = 0;
            while (k < @as(c_uint, @bitCast(@as(c_uint, r.*.num)))) : (_ = blk: {
                k +%= 1;
                break :blk blk_1: {
                    const tmp = " ";
                    sep = tmp;
                    break :blk_1 tmp;
                };
            }) {
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(sep)), strlen(sep)), @as(?*const anyopaque, @ptrCast(r.*.targets[k])), @as(c_ulong, @bitCast(@as(c_ulong, r.*.lens[k])))))));
            }
        }
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = ':';
        if (r.*.terminal != 0) {
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ':';
        }
        {
            dep_1 = r.*.deps;
            while (dep_1 != null) : (dep_1 = dep_1.*.next) if (dep_1.*.ignore_mtime == @as(c_uint, 0)) {
                if (dep_1.*.wait_here != 0) {
                    p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(" .WAIT")), @sizeOf([7]u8) -% @as(c_ulong, 1)))));
                }
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(" ")), @as(c_ulong, 1)), @as(?*const anyopaque, @ptrCast(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name)), strlen(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name)))));
            } else if (ood == null) {
                ood = dep_1;
            };
        }
        {
            sep = " | ";
            while (ood != null) : (_ = blk: {
                ood = ood.*.next;
                break :blk blk_1: {
                    const tmp = " ";
                    sep = tmp;
                    break :blk_1 tmp;
                };
            }) if (ood.*.ignore_mtime != 0) {
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(sep)), strlen(sep)))));
                if (ood.*.wait_here != 0) {
                    p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(".WAIT ")), @sizeOf([7]u8) -% @as(c_ulong, 1)))));
                }
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(if (ood.*.name != null) ood.*.name else ood.*.file.*.name)), strlen(if (ood.*.name != null) ood.*.name else ood.*.file.*.name)))));
            };
        }
        p.* = '\x00';
    }
    return r.*._defn;
}
export fn print_rule_data_base() void {
    var rules: c_uint = undefined;
    _ = &rules;
    var terminal: c_uint = undefined;
    _ = &terminal;
    var r: [*c]struct_rule = undefined;
    _ = &r;
    _ = puts(gettext("\n# Implicit Rules"));
    rules = blk: {
        const tmp = @as(c_uint, 0);
        terminal = tmp;
        break :blk tmp;
    };
    {
        r = pattern_rules;
        while (r != null) : (r = r.*.next) {
            rules +%= 1;
            _ = putchar(@as(c_int, '\n'));
            print_rule(r);
            if (r.*.terminal != 0) {
                terminal +%= 1;
            }
        }
    }
    if (rules == @as(c_uint, 0)) {
        _ = puts(gettext("\n# No implicit rules."));
    } else {
        _ = printf(gettext("\n# %u implicit rules, %u (%.1f%%) terminal."), rules, terminal, (@as(f64, @floatFromInt(terminal)) / @as(f64, @floatFromInt(rules))) * 100.0);
    }
    if (num_pattern_rules != rules) {
        if (num_pattern_rules != @as(c_uint, 0)) {
            fatal(@as([*c]floc, @ptrFromInt(0)), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3)) *% @as(c_ulong, 2), gettext("BUG: num_pattern_rules is wrong!  %u != %u"), num_pattern_rules, rules);
        }
    }
}
fn freerule(arg_rule_1: [*c]struct_rule, arg_lastrule: [*c]struct_rule) callconv(.C) void {
    var rule_1 = arg_rule_1;
    _ = &rule_1;
    var lastrule = arg_lastrule;
    _ = &lastrule;
    var next: [*c]struct_rule = rule_1.*.next;
    _ = &next;
    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(rule_1.*.deps))));
    free(@as(?*anyopaque, @ptrCast(rule_1.*.targets)));
    free(@as(?*anyopaque, @ptrCast(rule_1.*.suffixes)));
    free(@as(?*anyopaque, @ptrCast(rule_1.*.lens)));
    free(@as(?*anyopaque, @ptrCast(rule_1.*._defn)));
    free(@as(?*anyopaque, @ptrCast(rule_1)));
    if (pattern_rules == rule_1) if (lastrule != null) {
        abort();
    } else {
        pattern_rules = next;
    } else if (lastrule != null) {
        lastrule.*.next = next;
    }
    if (last_pattern_rule == rule_1) {
        last_pattern_rule = lastrule;
    }
}
var maxsuffix: usize = @import("std").mem.zeroes(usize);
fn convert_suffix_rule(arg_target: [*c]const u8, arg_source: [*c]const u8, arg_cmds: [*c]struct_commands) callconv(.C) void {
    var target = arg_target;
    _ = &target;
    var source = arg_source;
    _ = &source;
    var cmds = arg_cmds;
    _ = &cmds;
    var names: [*c][*c]const u8 = undefined;
    _ = &names;
    var percents: [*c][*c]const u8 = undefined;
    _ = &percents;
    var deps: [*c]struct_dep = undefined;
    _ = &deps;
    names = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@sizeOf([*c]const u8)))));
    percents = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@sizeOf([*c]const u8)))));
    if (target == null) {
        names.* = strcache_add_len("(%.o)", @as(usize, 5));
        percents.* = names.* + @as(usize, @bitCast(@as(isize, @intCast(1))));
    } else {
        var len: usize = strlen(target);
        _ = &len;
        var p: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, 1) +% len) +% @as(usize, 1)))));
        _ = &p;
        p[0] = '%';
        _ = memcpy(@as(?*anyopaque, @ptrCast(p + @as(usize, @bitCast(@as(isize, @intCast(1)))))), @as(?*const anyopaque, @ptrCast(target)), len +% @as(usize, 1));
        names.* = strcache_add_len(p, len +% @as(usize, 1));
        percents.* = names.*;
    }
    if (source == null) {
        deps = null;
    } else {
        var len: usize = strlen(source);
        _ = &len;
        var p: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((@as(usize, 1) +% len) +% @as(usize, 1)))));
        _ = &p;
        p[0] = '%';
        _ = memcpy(@as(?*anyopaque, @ptrCast(p + @as(usize, @bitCast(@as(isize, @intCast(1)))))), @as(?*const anyopaque, @ptrCast(source)), len +% @as(usize, 1));
        deps = @as([*c]struct_dep, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_dep)))));
        deps.*.name = strcache_add_len(p, len +% @as(usize, 1));
    }
    create_pattern_rule(names, percents, @as(c_ushort, @bitCast(@as(c_short, @truncate(1)))), 0, deps, cmds, 0);
}
fn new_pattern_rule(arg_rule_1: [*c]struct_rule, arg_override: c_int) callconv(.C) c_int {
    var rule_1 = arg_rule_1;
    _ = &rule_1;
    var override = arg_override;
    _ = &override;
    var r: [*c]struct_rule = undefined;
    _ = &r;
    var lastrule: [*c]struct_rule = undefined;
    _ = &lastrule;
    var i: c_uint = undefined;
    _ = &i;
    var j: c_uint = undefined;
    _ = &j;
    rule_1.*.in_use = 0;
    rule_1.*.terminal = 0;
    rule_1.*.next = null;
    lastrule = null;
    {
        var flag_395: c_int = 0;
        _ = &flag_395;
        {
            r = pattern_rules;
            while (r != null) : (_ = blk: {
                lastrule = r;
                break :blk blk_1: {
                    const tmp = r.*.next;
                    r = tmp;
                    break :blk_1 tmp;
                };
            }) {
                {
                    i = 0;
                    while (i < @as(c_uint, @bitCast(@as(c_uint, rule_1.*.num)))) : (i +%= 1) {
                        {
                            j = 0;
                            while (j < @as(c_uint, @bitCast(@as(c_uint, r.*.num)))) : (j +%= 1) if (!((rule_1.*.targets[i] == r.*.targets[j]) or ((@as(c_int, @bitCast(@as(c_uint, rule_1.*.targets[i].*))) == @as(c_int, @bitCast(@as(c_uint, r.*.targets[j].*)))) and ((@as(c_int, @bitCast(@as(c_uint, rule_1.*.targets[i].*))) == @as(c_int, '\x00')) or !(strcmp(rule_1.*.targets[i] + @as(usize, @bitCast(@as(isize, @intCast(1)))), r.*.targets[j] + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) break;
                        }
                        if (j == @as(c_uint, @bitCast(@as(c_uint, r.*.num)))) {
                            var d: [*c]struct_dep = undefined;
                            _ = &d;
                            var d2: [*c]struct_dep = undefined;
                            _ = &d2;
                            {
                                _ = blk: {
                                    d = rule_1.*.deps;
                                    break :blk blk_1: {
                                        const tmp = r.*.deps;
                                        d2 = tmp;
                                        break :blk_1 tmp;
                                    };
                                };
                                while ((d != null) and (d2 != null)) : (_ = blk: {
                                    d = d.*.next;
                                    break :blk blk_1: {
                                        const tmp = d2.*.next;
                                        d2 = tmp;
                                        break :blk_1 tmp;
                                    };
                                }) if (!(((if (d.*.name != null) d.*.name else d.*.file.*.name) == (if (d2.*.name != null) d2.*.name else d2.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) == @as(c_int, @bitCast(@as(c_uint, (if (d2.*.name != null) d2.*.name else d2.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*))) == @as(c_int, '\x00')) or !(strcmp((if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(1)))), (if (d2.*.name != null) d2.*.name else d2.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) break;
                            }
                            if ((d == null) and (d2 == null)) {
                                if (override != 0) {
                                    freerule(r, lastrule);
                                    if (pattern_rules == null) {
                                        pattern_rules = rule_1;
                                    } else {
                                        last_pattern_rule.*.next = rule_1;
                                    }
                                    last_pattern_rule = rule_1;
                                    flag_395 = 1;
                                    break;
                                } else {
                                    freerule(rule_1, @as([*c]struct_rule, @ptrFromInt(0)));
                                    return 0;
                                }
                            }
                        }
                    }
                }
                if (flag_395 == 1) break;
            }
        }
    }
    if (r == null) {
        if (pattern_rules == null) {
            pattern_rules = rule_1;
        } else {
            last_pattern_rule.*.next = rule_1;
        }
        last_pattern_rule = rule_1;
    }
    return 1;
}
fn print_rule(arg_r: [*c]struct_rule) callconv(.C) void {
    var r = arg_r;
    _ = &r;
    _ = fputs(get_rule_defn(r), stdout);
    _ = putchar(@as(c_int, '\n'));
    if (r.*.cmds != null) {
        print_commands(r.*.cmds);
    }
}
