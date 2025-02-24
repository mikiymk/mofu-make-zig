const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

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
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
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

extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strdup(__s: [*c]const u8) [*c]u8;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;

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
extern fn concat(c_uint, ...) [*c]const u8;

const message = @import("output.zig").message;
const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

const o_default: c_int = 0;
const o_env: c_int = 1;
const o_file: c_int = 2;
const o_env_override: c_int = 3;
const o_command: c_int = 4;

const o_automatic: c_int = 6;

const enum_variable_origin = c_int;

const f_simple: c_int = 1;
const f_recursive: c_int = 2;
const f_expand: c_int = 3;
const f_append: c_int = 4;
const f_conditional: c_int = 5;
const f_shell: c_int = 6;
const f_append_value: c_int = 7;
const enum_variable_flavor = c_uint;
const v_default: c_int = 0;

const v_ifset: c_int = 3;
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
extern fn reset_makeflags(origin: enum_variable_origin) void;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;
extern fn xstrndup([*c]const u8, usize) [*c]u8;

extern fn next_token([*c]const u8) [*c]u8;

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

const struct_pattern_var = extern struct {
    next: [*c]struct_pattern_var = @import("std").mem.zeroes([*c]struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};
export fn print_variable_data_base() void {
    _ = puts(gettext("\n# Variables\n"));
    print_variable_set(&global_variable_set, "", 0);
    _ = puts(gettext("\n# Pattern-specific Variable Values"));
    {
        var p: [*c]struct_pattern_var = undefined;
        var rules: c_uint = 0;
        {
            p = pattern_vars;
            while (p != null) : (p = p.*.next) {
                rules +%= 1;
                _ = printf("\n%s :\n", p.*.target);
                print_variable(@as(?*const anyopaque, @ptrCast(&p.*.variable)), @as(?*anyopaque, @ptrCast("# ")));
            }
        }
        if (rules == @as(c_uint, 0)) {
            _ = puts(gettext("\n# No pattern-specific variable values."));
        } else {
            _ = printf(gettext("\n# %u pattern-specific variable values"), rules);
        }
    }
}

extern var starting_directory: [*c]u8;
extern var makelevel: c_uint;
const version_string = @import("version.zig").version_string;
extern var remote_description: [*c]u8;
const make_host = @import("version.zig").make_host;
extern var commands_started: c_uint;
extern var handling_fatal_signal: sig_atomic_t;
const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;
extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;
extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;
extern fn hash_delete_at(ht: [*c]struct_hash_table, slot: ?*const anyopaque) ?*anyopaque;
extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;
extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;
extern fn jhash(key: [*c]const u8, n: c_int) c_uint;
extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;

extern var snapped_deps: c_int;
extern var db_level: c_int;
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

extern var env_recursion: c_ulonglong;
extern var variable_buffer: [*c]u8;
extern var current_variable_set_list: [*c]struct_variable_set_list;
extern var default_goal_var: [*c]struct_variable;
extern var shell_var: struct_variable;
extern fn variable_buffer_output(ptr: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: [*c]struct_file) [*c]u8;

extern fn install_variable_buffer(bufp: [*c][*c]u8, lenp: [*c]usize) void;
extern fn restore_variable_buffer(buf: [*c]u8, len: usize) void;

extern fn func_shell_base(o: [*c]u8, argv: [*c][*c]u8, trim_newlines: c_int) [*c]u8;

extern fn recursively_expand_for_file(v: [*c]struct_variable, file: [*c]struct_file) [*c]u8;
export fn create_new_variable_set() [*c]struct_variable_set_list {
    var setlist: [*c]struct_variable_set_list = undefined;
    var set: [*c]struct_variable_set = undefined;
    set = @as([*c]struct_variable_set, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set)))));
    hash_init(&set.*.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 13)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
    setlist = @as([*c]struct_variable_set_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set_list)))));
    setlist.*.set = set;
    setlist.*.next = current_variable_set_list;
    setlist.*.next_is_parent = 0;
    return setlist;
}
export fn free_variable_set(arg_list: [*c]struct_variable_set_list) void {
    const list = arg_list;
    hash_map(&list.*.set.*.table, &free_variable_name_and_value);
    hash_free(&list.*.set.*.table, 1);
    free(@as(?*anyopaque, @ptrCast(list.*.set)));
    free(@as(?*anyopaque, @ptrCast(list)));
}
export fn push_new_variable_scope() [*c]struct_variable_set_list {
    current_variable_set_list = create_new_variable_set();
    if (current_variable_set_list.*.next == (&global_setlist)) {
        const set: [*c]struct_variable_set = current_variable_set_list.*.set;
        current_variable_set_list.*.set = global_setlist.set;
        global_setlist.set = set;
        current_variable_set_list.*.next = global_setlist.next;
        global_setlist.next = current_variable_set_list;
        current_variable_set_list = &global_setlist;
    }
    return current_variable_set_list;
}
export fn pop_variable_scope() void {
    var setlist: [*c]struct_variable_set_list = undefined;
    var set: [*c]struct_variable_set = undefined;
    _ = 0;
    if (current_variable_set_list != (&global_setlist)) {
        setlist = current_variable_set_list;
        set = setlist.*.set;
        current_variable_set_list = setlist.*.next;
    } else {
        setlist = global_setlist.next;
        set = global_setlist.set;
        global_setlist.set = setlist.*.set;
        global_setlist.next = setlist.*.next;
        global_setlist.next_is_parent = setlist.*.next_is_parent;
    }
    free(@as(?*anyopaque, @ptrCast(setlist)));
    hash_map(&set.*.table, &free_variable_name_and_value);
    hash_free(&set.*.table, 1);
    free(@as(?*anyopaque, @ptrCast(set)));
}
export fn define_automatic_variables() void {
    var v: [*c]struct_variable = undefined;
    var buf: [200]u8 = undefined;
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%u", makelevel);
    _ = define_variable_in_set("MAKELEVEL", @sizeOf([10]u8) -% @as(c_ulong, 1), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_env)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%s%s%s", version_string, if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[0]))) == @as(c_int, '\x00'))) "" else "-", if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[0]))) == @as(c_int, '\x00'))) "" else remote_description);
    _ = define_variable_in_set("MAKE_VERSION", @sizeOf([13]u8) -% @as(c_ulong, 1), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("MAKE_HOST", @sizeOf([10]u8) -% @as(c_ulong, 1), make_host, @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    v = define_variable_in_set("SHELL", @sizeOf([6]u8) -% @as(c_ulong, 1), default_shell, @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    if (((@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00')) or (v.*.origin == @as(c_uint, @bitCast(o_env)))) or (v.*.origin == @as(c_uint, @bitCast(o_env_override)))) {
        free(@as(?*anyopaque, @ptrCast(v.*.value)));
        v.*.origin = @as(c_uint, @bitCast(o_file));
        v.*.value = xstrdup(default_shell);
    }
    v = define_variable_in_set("MAKEFILES", @sizeOf([10]u8) -% @as(c_ulong, 1), "", @as(c_uint, @bitCast(o_default)), 0, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    v.*.@"export" = @as(c_uint, @bitCast(v_ifset));
    _ = define_variable_in_set("@D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $@))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("%D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $%))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("*D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $*))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("<D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $<))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("?D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $?))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("^D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $^))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("+D", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(patsubst %/,%,$(dir $+))", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("@F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $@)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("%F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $%)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("*F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $*)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("<F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $<)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("?F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $?)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("^F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $^)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
    _ = define_variable_in_set("+F", @sizeOf([3]u8) -% @as(c_ulong, 1), "$(notdir $+)", @as(c_uint, @bitCast(o_automatic)), 1, current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(0)));
}
export fn initialize_file_variables(arg_file_1: [*c]struct_file, arg_reading: c_int) void {
    const file_1 = arg_file_1;
    const reading = arg_reading;
    var l: [*c]struct_variable_set_list = file_1.*.variables;
    if (l == null) {
        l = @as([*c]struct_variable_set_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set_list)))));
        l.*.set = @as([*c]struct_variable_set, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set)))));
        hash_init(&l.*.set.*.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 23)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
        file_1.*.variables = l;
    }
    if ((file_1.*.double_colon != null) and (file_1.*.double_colon != file_1)) {
        initialize_file_variables(file_1.*.double_colon, reading);
        l.*.next = file_1.*.double_colon.*.variables;
        l.*.next_is_parent = 0;
        return;
    }
    if (file_1.*.parent == null) {
        l.*.next = &global_setlist;
    } else {
        initialize_file_variables(file_1.*.parent, reading);
        l.*.next = file_1.*.parent.*.variables;
    }
    l.*.next_is_parent = 1;
    if (!(reading != 0) and !(file_1.*.pat_searched != 0)) {
        var p: [*c]struct_pattern_var = undefined;
        const targlen: usize = strlen(file_1.*.name);
        p = lookup_pattern_var(null, file_1.*.name, targlen);
        if (p != null) {
            const global: [*c]struct_variable_set_list = current_variable_set_list;
            file_1.*.pat_variables = create_new_variable_set();
            current_variable_set_list = file_1.*.pat_variables;
            while (true) {
                var v: [*c]struct_variable = undefined;
                if (p.*.variable.flavor == @as(c_uint, @bitCast(f_simple))) {
                    v = define_variable_in_set(p.*.variable.name, strlen(p.*.variable.name), p.*.variable.value, p.*.variable.origin, 0, current_variable_set_list.*.set, &p.*.variable.fileinfo);
                    v.*.flavor = @as(c_uint, @bitCast(f_simple));
                } else {
                    v = do_variable_definition(&p.*.variable.fileinfo, p.*.variable.name, p.*.variable.value, p.*.variable.origin, p.*.variable.flavor, 1);
                }
                v.*.per_target = p.*.variable.per_target;
                v.*.@"export" = p.*.variable.@"export";
                v.*.private_var = p.*.variable.private_var;
                if (!((blk: {
                    const tmp = lookup_pattern_var(p, file_1.*.name, targlen);
                    p = tmp;
                    break :blk tmp;
                }) != null)) break;
            }
            current_variable_set_list = global;
        }
        file_1.*.pat_searched = 1;
    }
    if (file_1.*.pat_variables != null) {
        file_1.*.pat_variables.*.next = l.*.next;
        file_1.*.pat_variables.*.next_is_parent = l.*.next_is_parent;
        l.*.next = file_1.*.pat_variables;
        l.*.next_is_parent = 0;
    }
}
export fn print_file_variables(arg_file_1: [*c]const struct_file) void {
    const file_1 = arg_file_1;
    if (file_1.*.variables != null) {
        print_variable_set(file_1.*.variables.*.set, "# ", 1);
    }
}
export fn print_target_variables(arg_file_1: [*c]const struct_file) void {
    const file_1 = arg_file_1;
    if (file_1.*.variables != null) {
        const l: usize = strlen(file_1.*.name);
        var t: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(l +% @as(usize, 3)))));
        _ = memcpy(@as(?*anyopaque, @ptrCast(t)), @as(?*const anyopaque, @ptrCast(file_1.*.name)), l);
        t[l] = ':';
        t[l +% @as(usize, 1)] = ' ';
        t[l +% @as(usize, 2)] = '\x00';
        hash_map_arg(&file_1.*.variables.*.set.*.table, &print_noauto_variable, @as(?*anyopaque, @ptrCast(t)));
    }
}
export fn merge_variable_set_lists(arg_setlist0: [*c][*c]struct_variable_set_list, arg_setlist1: [*c]struct_variable_set_list) void {
    const setlist0 = arg_setlist0;
    var setlist1 = arg_setlist1;
    var to: [*c]struct_variable_set_list = setlist0.*;
    var last0: [*c]struct_variable_set_list = null;
    if (!(setlist1 != null) or (setlist1 == (&global_setlist))) return;
    if (to != null) {
        while (to != (&global_setlist)) {
            if (to == setlist1) return;
            to = to.*.next;
        }
        to = setlist0.*;
        while ((setlist1 != (&global_setlist)) and (to != (&global_setlist))) {
            const from: [*c]struct_variable_set_list = setlist1;
            setlist1 = setlist1.*.next;
            merge_variable_sets(to.*.set, from.*.set);
            last0 = to;
            to = to.*.next;
        }
    }
    if (setlist1 != (&global_setlist)) {
        if (last0 == null) {
            setlist0.* = setlist1;
        } else {
            last0.*.next = setlist1;
        }
    }
}
export fn do_variable_definition(arg_flocp: [*c]const floc, arg_varname: [*c]const u8, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_flavor: enum_variable_flavor, arg_target_var: c_int) [*c]struct_variable {
    const flocp = arg_flocp;
    const varname = arg_varname;
    const value = arg_value;
    const origin = arg_origin;
    var flavor = arg_flavor;
    const target_var = arg_target_var;
    var newval: [*c]const u8 = undefined;
    var alloc_value: [*c]u8 = null;
    var v: [*c]struct_variable = undefined;
    var append: c_int = 0;
    var conditional: c_int = 0;
    while (true) {
        switch (flavor) {
            @as(c_uint, 1) => {
                newval = blk: {
                    const tmp = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(0)));
                    alloc_value = tmp;
                    break :blk tmp;
                };
                break;
            },
            @as(c_uint, 3) => {
                {
                    const t: [*c]u8 = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(0)));
                    var np: [*c]u8 = blk: {
                        const tmp = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(t) *% @as(c_ulong, 2)) +% @as(c_ulong, 1)))));
                        alloc_value = tmp;
                        break :blk tmp;
                    };
                    var op: [*c]u8 = t;
                    while (@as(c_int, @bitCast(@as(c_uint, op[0]))) != @as(c_int, '\x00')) {
                        if (@as(c_int, @bitCast(@as(c_uint, op[0]))) == @as(c_int, '$')) {
                            (blk: {
                                const ref = &np;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = '$';
                        }
                        (blk: {
                            const ref = &np;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).* = (blk: {
                            const ref = &op;
                            const tmp = ref.*;
                            ref.* += 1;
                            break :blk tmp;
                        }).*;
                    }
                    np.* = '\x00';
                    free(@as(?*anyopaque, @ptrCast(t)));
                    newval = alloc_value;
                    break;
                }
            },
            @as(c_uint, 6) => {
                {
                    const q: [*c]u8 = allocated_variable_expand_for_file(value, @as([*c]struct_file, @ptrFromInt(0)));
                    alloc_value = shell_result(q);
                    free(@as(?*anyopaque, @ptrCast(q)));
                    flavor = @as(c_uint, @bitCast(f_recursive));
                    newval = alloc_value;
                    break;
                }
            },
            @as(c_uint, 5) => {
                v = lookup_variable(varname, strlen(varname));
                if (v != null) {
                    free(@as(?*anyopaque, @ptrCast(alloc_value)));
                    return if (v.*.special != 0) set_special_var(v, origin) else v;
                }
                conditional = 1;
                flavor = @as(c_uint, @bitCast(f_recursive));
                newval = value;
                break;
            },
            @as(c_uint, 2) => {
                newval = value;
                break;
            },
            @as(c_uint, 4), @as(c_uint, 7) => {
                {
                    if (target_var != 0) {
                        append = 1;
                        v = lookup_variable_in_set(varname, strlen(varname), current_variable_set_list.*.set);
                        if ((v != null) and !(v.*.append != 0)) {
                            append = 0;
                        }
                    } else {
                        v = lookup_variable(varname, strlen(varname));
                    }
                    if (v == null) {
                        newval = value;
                        flavor = @as(c_uint, @bitCast(f_recursive));
                    } else {
                        var oldlen: usize = undefined;
                        var vallen: usize = undefined;
                        var alloclen: usize = undefined;
                        var val: [*c]const u8 = undefined;
                        var cp: [*c]u8 = undefined;
                        var tp: [*c]u8 = null;
                        val = value;
                        if (v.*.recursive != 0) {
                            flavor = @as(c_uint, @bitCast(f_recursive));
                        } else if (flavor != @as(c_uint, @bitCast(f_append_value))) {
                            val = blk: {
                                const tmp = allocated_variable_expand_for_file(val, @as([*c]struct_file, @ptrFromInt(0)));
                                tp = tmp;
                                break :blk tmp;
                            };
                        }
                        vallen = strlen(val);
                        if (!(vallen != 0)) {
                            alloc_value = tp;
                            {
                                free(@as(?*anyopaque, @ptrCast(alloc_value)));
                                return if (v.*.special != 0) set_special_var(v, origin) else v;
                            }
                        }
                        oldlen = strlen(v.*.value);
                        alloclen = ((oldlen +% @as(usize, 1)) +% vallen) +% @as(usize, 1);
                        cp = blk: {
                            const tmp = @as([*c]u8, @ptrCast(@alignCast(xmalloc(alloclen))));
                            alloc_value = tmp;
                            break :blk tmp;
                        };
                        if (oldlen != 0) {
                            var s: [*c]u8 = undefined;
                            if (((varname == @as([*c]const u8, @ptrCast(@alignCast("MAKEFLAGS")))) or ((@as(c_int, @bitCast(@as(c_uint, varname.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, varname.*))) == @as(c_int, '\x00')) or !(strcmp(varname + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) and ((blk: {
                                const tmp = strstr(v.*.value, " -- ");
                                s = tmp;
                                break :blk tmp;
                            }) != null)) {
                                cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(v.*.value)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(s) -% @intFromPtr(v.*.value))), @sizeOf(u8))))))));
                            } else {
                                cp = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(v.*.value)), oldlen))));
                            }
                            (blk: {
                                const ref = &cp;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = ' ';
                        }
                        _ = memcpy(@as(?*anyopaque, @ptrCast(cp)), @as(?*const anyopaque, @ptrCast(val)), vallen +% @as(usize, 1));
                        free(@as(?*anyopaque, @ptrCast(tp)));
                        newval = alloc_value;
                    }
                }
                break;
            },
            else => {
                abort();
            },
        }
        break;
    }
    _ = 0;
    v = define_variable_in_set(varname, strlen(varname), newval, origin, @intFromBool((flavor == @as(c_uint, @bitCast(f_recursive))) or (flavor == @as(c_uint, @bitCast(f_expand)))), if (target_var != 0) current_variable_set_list.*.set else null, flocp);
    v.*.append = @as(c_uint, @bitCast(append));
    v.*.conditional = @as(c_uint, @bitCast(conditional));
    free(@as(?*anyopaque, @ptrCast(alloc_value)));
    return if (v.*.special != 0) set_special_var(v, origin) else v;
}
export fn parse_variable_definition(arg_str: [*c]const u8, arg_var: [*c]struct_variable) [*c]u8 {
    const str = arg_str;
    const @"var" = arg_var;
    var p: [*c]const u8 = str;
    var end: [*c]const u8 = null;
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (2 | 4)) != 0) {
        p += 1;
    }
    @"var".*.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
    @"var".*.length = 0;
    while (true) {
        var c: c_int = @as(c_int, @bitCast(@as(c_uint, (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*)));
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(@as(i8, @truncate(c))))]))) & (8 | 1)) != 0) return null;
        if ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(@as(i8, @truncate(c))))]))) & 2) != 0) {
            if (end != null) return null;
            end = p - @as(usize, @bitCast(@as(isize, @intCast(1))));
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (2 | 4)) != 0) {
                p += 1;
            }
            continue;
        }
        if (c == @as(c_int, '=')) {
            if (!(end != null)) {
                end = p - @as(usize, @bitCast(@as(isize, @intCast(1))));
            }
            @"var".*.flavor = @as(c_uint, @bitCast(f_recursive));
            break;
        }
        if (c == @as(c_int, ':')) {
            if (!(end != null)) {
                end = p - @as(usize, @bitCast(@as(isize, @intCast(1))));
            }
            c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
            if (c == @as(c_int, '=')) {
                @"var".*.flavor = @as(c_uint, @bitCast(f_simple));
                break;
            }
            if (c == @as(c_int, ':')) {
                c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).*)));
                if (c == @as(c_int, '=')) {
                    @"var".*.flavor = @as(c_uint, @bitCast(f_simple));
                    break;
                }
                if ((c == @as(c_int, ':')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).*))) == @as(c_int, '='))) {
                    @"var".*.flavor = @as(c_uint, @bitCast(f_expand));
                    break;
                }
            }
            return null;
        }
        if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '=')) {
            var flag_1682: c_int = 0;
            while (true) {
                switch (c) {
                    @as(c_int, 43) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_append));
                        break;
                    },
                    @as(c_int, 63) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_conditional));
                        break;
                    },
                    @as(c_int, 33) => {
                        @"var".*.flavor = @as(c_uint, @bitCast(f_shell));
                        break;
                    },
                    else => {
                        flag_1682 = 1;
                    },
                }
                break;
            }
            if (flag_1682 == 0) {
                if (!(end != null)) {
                    end = p - @as(usize, @bitCast(@as(isize, @intCast(1))));
                }
                p += 1;
                break;
            }
        }
        if (end != null) return null;
        if (c == @as(c_int, '$')) {
            var closeparen: u8 = undefined;
            var count: c_uint = undefined;
            c = @as(c_int, @bitCast(@as(c_uint, (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
            while (true) {
                switch (c) {
                    @as(c_int, 40) => {
                        closeparen = ')';
                        break;
                    },
                    @as(c_int, 123) => {
                        closeparen = '}';
                        break;
                    },
                    0 => return null,
                    else => {
                        continue;
                    },
                }
                break;
            }
            {
                count = 1;
                while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                    if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, @bitCast(@as(c_uint, closeparen)))) and ((blk: {
                        const ref = &count;
                        ref.* -%= 1;
                        break :blk ref.*;
                    }) == @as(c_uint, 0))) {
                        p += 1;
                        break;
                    }
                    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == c) {
                        count +%= 1;
                    }
                }
            }
        }
    }
    @"var".*.length = @as(c_uint, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(@"var".*.name))), @sizeOf(u8))))));
    @"var".*.value = next_token(p);
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
}
export fn assign_variable_definition(arg_v: [*c]struct_variable, arg_line: [*c]const u8) [*c]struct_variable {
    const v = arg_v;
    const line = arg_line;
    var name: [*c]u8 = undefined;
    if (!(parse_variable_definition(line, v) != null)) return null;
    name = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_ulong, v.*.length +% @as(c_uint, 1))))))));
    _ = memcpy(@as(?*anyopaque, @ptrCast(name)), @as(?*const anyopaque, @ptrCast(v.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, v.*.length))));
    name[v.*.length] = '\x00';
    v.*.name = allocated_variable_expand_for_file(name, @as([*c]struct_file, @ptrFromInt(0)));
    if (@as(c_int, @bitCast(@as(c_uint, v.*.name[0]))) == @as(c_int, '\x00')) {
        fatal(&v.*.fileinfo, @as(usize, 0), gettext("empty variable name"));
    }
    return v;
}
export fn try_variable_definition(arg_flocp: [*c]const floc, arg_line: [*c]const u8, arg_origin: enum_variable_origin, arg_target_var: c_int) [*c]struct_variable {
    const flocp = arg_flocp;
    const line = arg_line;
    const origin = arg_origin;
    const target_var = arg_target_var;
    var v: struct_variable = undefined;
    var vp: [*c]struct_variable = undefined;
    if (flocp != null) {
        v.fileinfo = flocp.*;
    } else {
        v.fileinfo.filenm = null;
    }
    if (!(assign_variable_definition(&v, line) != null)) return null;
    vp = do_variable_definition(flocp, v.name, v.value, origin, v.flavor, target_var);
    free(@as(?*anyopaque, @ptrCast(v.name)));
    return vp;
}
export fn init_hash_global_variable_set() void {
    hash_init(&global_variable_set.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 523)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
}

export fn lookup_variable(arg_name: [*c]const u8, arg_length: usize) [*c]struct_variable {
    const name = arg_name;
    const length = arg_length;
    var setlist: [*c]const struct_variable_set_list = undefined;
    var var_key: struct_variable = undefined;
    var is_parent: c_int = 0;
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    {
        setlist = current_variable_set_list;
        while (setlist != null) : (setlist = setlist.*.next) {
            const set: [*c]const struct_variable_set = setlist.*.set;
            var v: [*c]struct_variable = undefined;
            v = @as([*c]struct_variable, @ptrCast(@alignCast(hash_find_item(@as([*c]struct_hash_table, @ptrCast(@volatileCast(@constCast(&set.*.table)))), @as(?*const anyopaque, @ptrCast(&var_key))))));
            if ((v != null) and (!(is_parent != 0) or !(v.*.private_var != 0))) return if (v.*.special != 0) lookup_special_var(v) else v;
            is_parent |= setlist.*.next_is_parent;
        }
    }
    return null;
}
export fn lookup_variable_for_file(arg_name: [*c]const u8, arg_length: usize, arg_file_1: [*c]struct_file) [*c]struct_variable {
    const name = arg_name;
    const length = arg_length;
    const file_1 = arg_file_1;
    var @"var": [*c]struct_variable = undefined;
    _ = &@"var";
    var savev: [*c]struct_variable_set_list = undefined;
    if (file_1 == @as([*c]struct_file, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) return lookup_variable(name, length);
    savev = current_variable_set_list;
    current_variable_set_list = file_1.*.variables;
    @"var" = lookup_variable(name, length);
    current_variable_set_list = savev;
    return @"var";
}
export fn lookup_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_set: [*c]const struct_variable_set) [*c]struct_variable {
    const name = arg_name;
    const length = arg_length;
    const set = arg_set;
    var var_key: struct_variable = undefined;
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    return @as([*c]struct_variable, @ptrCast(@alignCast(hash_find_item(@as([*c]struct_hash_table, @ptrCast(@volatileCast(@constCast(&set.*.table)))), @as(?*const anyopaque, @ptrCast(&var_key))))));
}
export fn define_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_recursive: c_int, arg_set: [*c]struct_variable_set, arg_flocp: [*c]const floc) [*c]struct_variable {
    var name = arg_name;
    const length = arg_length;
    const value = arg_value;
    var origin = arg_origin;
    const recursive = arg_recursive;
    var set = arg_set;
    const flocp = arg_flocp;
    var v: [*c]struct_variable = undefined;
    var var_slot: [*c][*c]struct_variable = undefined;
    var var_key: struct_variable = undefined;
    if (set == @as([*c]struct_variable_set, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        set = &global_variable_set;
    }
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    var_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&set.*.table, @as(?*const anyopaque, @ptrCast(&var_key))))));
    v = var_slot.*;
    if ((env_overrides != 0) and (origin == @as(c_uint, @bitCast(o_env)))) {
        origin = @as(c_uint, @bitCast(o_env_override));
    }
    if (!((v == null) or (@as(?*anyopaque, @ptrCast(v)) == hash_deleted_item))) {
        if ((env_overrides != 0) and (v.*.origin == @as(c_uint, @bitCast(o_env)))) {
            v.*.origin = @as(c_uint, @bitCast(o_env_override));
        }
        if (@as(c_int, @bitCast(origin)) >= @as(c_int, @bitCast(v.*.origin))) {
            free(@as(?*anyopaque, @ptrCast(v.*.value)));
            v.*.value = xstrdup(value);
            if (flocp != null) {
                v.*.fileinfo = flocp.*;
            } else {
                v.*.fileinfo.filenm = null;
            }
            v.*.origin = origin;
            v.*.recursive = @as(c_uint, @bitCast(recursive));
        }
        return v;
    }
    v = @as([*c]struct_variable, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_variable)))));
    v.*.name = xstrndup(name, length);
    v.*.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    _ = hash_insert_at(&set.*.table, @as(?*const anyopaque, @ptrCast(v)), @as(?*const anyopaque, @ptrCast(var_slot)));
    if (set == (&global_variable_set)) {
        variable_changenum +%= 1;
    }
    v.*.value = xstrdup(value);
    if (flocp != null) {
        v.*.fileinfo = flocp.*;
    }
    v.*.origin = origin;
    v.*.recursive = @as(c_uint, @bitCast(recursive));
    v.*.@"export" = @as(c_uint, @bitCast(v_default));
    v.*.exportable = 1;
    name = v.*.name;
    if (((@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '_')) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'A')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'Z')))) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'a')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'z')))) {
        v.*.exportable = 0;
    } else {
        {
            name += 1;
            while (@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '\x00')) : (name += 1) if ((((@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '_')) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'a')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'z')))) and ((@as(c_int, @bitCast(@as(c_uint, name.*))) < @as(c_int, 'A')) or (@as(c_int, @bitCast(@as(c_uint, name.*))) > @as(c_int, 'Z')))) and !((@as(c_uint, @bitCast(@as(c_uint, name.*))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, 9))) break;
        }
        if (@as(c_int, @bitCast(@as(c_uint, name.*))) != @as(c_int, '\x00')) {
            v.*.exportable = 0;
        }
    }
    return v;
}
const struct_defined_vars = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
};
export fn warn_undefined(arg_name: [*c]const u8, arg_len: usize) void {
    const name = arg_name;
    const len = arg_len;
    if (warn_undefined_variables_flag != 0) {
        var dp: [*c]const struct_defined_vars = undefined;
        {
            dp = @as([*c]const struct_defined_vars, @ptrCast(@alignCast(&defined_vars)));
            while (dp.*.name != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) : (dp += 1) if ((dp.*.len == len) and (memcmp(@as(?*const anyopaque, @ptrCast(dp.*.name)), @as(?*const anyopaque, @ptrCast(name)), len) == 0)) return;
        }
        @"error"(reading_file, len, gettext("warning: undefined variable '%.*s'"), @as(c_int, @bitCast(@as(c_uint, @truncate(len)))), name);
    }
}
export fn undefine_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_origin: enum_variable_origin, arg_set: [*c]struct_variable_set) void {
    const name = arg_name;
    const length = arg_length;
    var origin = arg_origin;
    var set = arg_set;
    var v: [*c]struct_variable = undefined;
    var var_slot: [*c][*c]struct_variable = undefined;
    var var_key: struct_variable = undefined;
    if (set == @as([*c]struct_variable_set, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(0)))))) {
        set = &global_variable_set;
    }
    var_key.name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(name))));
    var_key.length = @as(c_uint, @bitCast(@as(c_uint, @truncate(length))));
    var_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&set.*.table, @as(?*const anyopaque, @ptrCast(&var_key))))));
    if ((env_overrides != 0) and (origin == @as(c_uint, @bitCast(o_env)))) {
        origin = @as(c_uint, @bitCast(o_env_override));
    }
    v = var_slot.*;
    if (!((v == null) or (@as(?*anyopaque, @ptrCast(v)) == hash_deleted_item))) {
        if ((env_overrides != 0) and (v.*.origin == @as(c_uint, @bitCast(o_env)))) {
            v.*.origin = @as(c_uint, @bitCast(o_env_override));
        }
        if (@as(c_int, @bitCast(origin)) >= @as(c_int, @bitCast(v.*.origin))) {
            _ = hash_delete_at(&set.*.table, @as(?*const anyopaque, @ptrCast(var_slot)));
            free_variable_name_and_value(@as(?*const anyopaque, @ptrCast(v)));
            free(@as(?*anyopaque, @ptrCast(v)));
            if (set == (&global_variable_set)) {
                variable_changenum +%= 1;
            }
        }
    }
}
export fn target_environment(arg_file_1: [*c]struct_file, arg_recursive: c_int) [*c][*c]u8 {
    const file_1 = arg_file_1;
    const recursive = arg_recursive;
    var set_list: [*c]struct_variable_set_list = undefined;
    var s: [*c]struct_variable_set_list = undefined;
    var table: struct_hash_table = undefined;
    var v_slot: [*c][*c]struct_variable = undefined;
    var v_end: [*c][*c]struct_variable = undefined;
    var result_0: [*c][*c]u8 = undefined;
    var result: [*c][*c]u8 = undefined;
    var invalid: [*c]const u8 = null;
    var added_SHELL: c_int = @intFromBool(shell_var.value == null);
    var found_makelevel: c_int = 0;
    var found_mflags: c_int = 0;
    var found_makeflags: c_int = 0;
    if (!(file_1 != null)) {
        env_recursion +%= 1;
    }
    if (!(recursive != 0) and (jobserver_auth != null)) {
        invalid = jobserver_get_invalid_auth();
    }
    if (file_1 != null) {
        set_list = file_1.*.variables;
    } else {
        set_list = current_variable_set_list;
    }
    hash_init(&table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 523)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
    {
        s = set_list;
        while (s != null) : (s = s.*.next) {
            const set: [*c]struct_variable_set = s.*.set;
            const islocal: c_int = @intFromBool(s == set_list);
            const isglobal: c_int = @intFromBool(set == (&global_variable_set));
            v_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(set.*.table.ht_vec)));
            v_end = v_slot + set.*.table.ht_size;
            while (v_slot < v_end) : (v_slot += 1) if (!((v_slot.* == null) or (@as(?*anyopaque, @ptrCast(v_slot.*)) == hash_deleted_item))) {
                var evslot: [*c][*c]struct_variable = undefined;
                const v: [*c]struct_variable = v_slot.*;
                if (!(islocal != 0) and (v.*.private_var != 0)) continue;
                evslot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&table, @as(?*const anyopaque, @ptrCast(v))))));
                if ((evslot.* == null) or (@as(?*anyopaque, @ptrCast(evslot.*)) == hash_deleted_item)) {
                    if (!(isglobal != 0) or (should_export(v) != 0)) {
                        _ = hash_insert_at(&table, @as(?*const anyopaque, @ptrCast(v)), @as(?*const anyopaque, @ptrCast(evslot)));
                    }
                } else if (evslot.*.*.@"export" == @as(c_uint, @bitCast(v_default))) {
                    evslot.*.*.@"export" = v.*.@"export";
                }
            };
        }
    }
    result = blk: {
        const tmp = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc((table.ht_fill +% @as(c_ulong, 3)) *% @sizeOf([*c]u8)))));
        result_0 = tmp;
        break :blk tmp;
    };
    v_slot = @as([*c][*c]struct_variable, @ptrCast(@alignCast(table.ht_vec)));
    v_end = v_slot + table.ht_size;
    while (v_slot < v_end) : (v_slot += 1) if (!((v_slot.* == null) or (@as(?*anyopaque, @ptrCast(v_slot.*)) == hash_deleted_item))) {
        const v: [*c]struct_variable = v_slot.*;
        var value: [*c]u8 = v.*.value;
        var cp: [*c]u8 = null;
        if (!(should_export(v) != 0)) continue;
        if ((v.*.recursive != 0) and (((v.*.origin != @as(c_uint, @bitCast(o_env))) and (v.*.origin != @as(c_uint, @bitCast(o_env_override)))) or ((v.*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))))) {
            value = blk: {
                const tmp = recursively_expand_for_file(v, file_1);
                cp = tmp;
                break :blk tmp;
            };
        }
        if (!(added_SHELL != 0) and ((v.*.name == ("SHELL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "SHELL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "SHELL" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
            added_SHELL = 1;
            {
                (blk: {
                    const ref = &result;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                free(@as(?*anyopaque, @ptrCast(cp)));
                continue;
            }
        }
        if (!(found_makelevel != 0) and ((v.*.name == ("MAKELEVEL")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKELEVEL".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MAKELEVEL" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
            var val: [23]u8 = undefined;
            _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&val))), "%u", makelevel +% @as(c_uint, 1));
            free(@as(?*anyopaque, @ptrCast(cp)));
            value = blk: {
                const tmp = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&val))));
                cp = tmp;
                break :blk tmp;
            };
            found_makelevel = 1;
            {
                (blk: {
                    const ref = &result;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                free(@as(?*anyopaque, @ptrCast(cp)));
                continue;
            }
        }
        if (invalid != null) {
            if (!(found_makeflags != 0) and ((v.*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
                var mf: [*c]u8 = undefined;
                var vars: [*c]u8 = undefined;
                found_makeflags = 1;
                if (!(strstr(value, " --jobserver-auth=") != null)) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                vars = strstr(value, " -- ");
                if (!(vars != null)) {
                    mf = xstrdup(concat(@as(c_uint, 2), value, invalid));
                } else {
                    const lf: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(vars) -% @intFromPtr(value))), @sizeOf(u8))));
                    const li: usize = strlen(invalid);
                    mf = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(value) +% li) +% @as(c_ulong, 1)))));
                    _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(mempcpy(mempcpy(@as(?*anyopaque, @ptrCast(mf)), @as(?*const anyopaque, @ptrCast(value)), lf), @as(?*const anyopaque, @ptrCast(invalid)), li)))), vars);
                }
                free(@as(?*anyopaque, @ptrCast(cp)));
                value = blk: {
                    const tmp = mf;
                    cp = tmp;
                    break :blk tmp;
                };
                if (found_mflags != 0) {
                    invalid = null;
                }
                {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
            }
            if (!(found_mflags != 0) and ((v.*.name == ("MFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, v.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(v.*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
                var mf: [*c]const u8 = undefined;
                found_mflags = 1;
                if (!(strstr(value, " --jobserver-auth=") != null)) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                if (v.*.origin != @as(c_uint, @bitCast(o_env))) {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
                mf = concat(@as(c_uint, 2), value, invalid);
                free(@as(?*anyopaque, @ptrCast(cp)));
                value = blk: {
                    const tmp = xstrdup(mf);
                    cp = tmp;
                    break :blk tmp;
                };
                if (found_makeflags != 0) {
                    invalid = null;
                }
                {
                    (blk: {
                        const ref = &result;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
                    free(@as(?*anyopaque, @ptrCast(cp)));
                    continue;
                }
            }
        }
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(concat(@as(c_uint, 3), v.*.name, "=", value));
        free(@as(?*anyopaque, @ptrCast(cp)));
    };
    if (!(added_SHELL != 0)) {
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(concat(@as(c_uint, 3), shell_var.name, "=", shell_var.value));
    }
    if (!(found_makelevel != 0)) {
        var val: [33]u8 = undefined;
        _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&val))), "%s=%u", "MAKELEVEL", makelevel +% @as(c_uint, 1));
        (blk: {
            const ref = &result;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = xstrdup(@as([*c]u8, @ptrCast(@alignCast(&val))));
    }
    result.* = null;
    hash_free(&table, 0);
    if (!(file_1 != null)) {
        env_recursion -%= 1;
    }
    return result_0;
}
export fn create_pattern_var(arg_target: [*c]const u8, arg_suffix: [*c]const u8) [*c]struct_pattern_var {
    const target = arg_target;
    const suffix = arg_suffix;
    const len: usize = strlen(target);
    const p: [*c]struct_pattern_var = @as([*c]struct_pattern_var, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_pattern_var)))));
    if (pattern_vars != null) {
        if ((len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) and (last_pattern_vars[len] != null)) {
            p.*.next = last_pattern_vars[len].*.next;
            last_pattern_vars[len].*.next = p;
        } else {
            var v: [*c][*c]struct_pattern_var = undefined;
            {
                v = &pattern_vars;
                while (true) : (v = &v.*.*.next) {
                    if ((v.* == null) or (v.*.*.len > len)) {
                        p.*.next = v.*;
                        v.* = p;
                        break;
                    }
                }
            }
        }
    } else {
        pattern_vars = p;
        p.*.next = null;
    }
    p.*.target = target;
    p.*.len = len;
    p.*.suffix = suffix + @as(usize, @bitCast(@as(isize, @intCast(1))));
    if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) {
        last_pattern_vars[len] = p;
    }
    return p;
}
extern var export_all_variables: c_int;

extern fn jobserver_get_invalid_auth() [*c]const u8;

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

extern var pattern_rules: [*c]struct_rule;
extern var last_pattern_rule: [*c]struct_rule;
extern var num_pattern_rules: c_uint;
extern var max_pattern_deps: c_uint;
extern var max_pattern_targets: c_uint;
extern var max_pattern_dep_length: usize;
extern var suffix_file: [*c]struct_file;

var variable_changenum: c_ulong = 0;
var pattern_vars: [*c]struct_pattern_var = null;
var last_pattern_vars: [256][*c]struct_pattern_var = @import("std").mem.zeroes([256][*c]struct_pattern_var);
fn lookup_pattern_var(arg_start: [*c]struct_pattern_var, arg_target: [*c]const u8, arg_targlen: usize) callconv(.C) [*c]struct_pattern_var {
    const start = arg_start;
    const target = arg_target;
    const targlen = arg_targlen;
    var p: [*c]struct_pattern_var = undefined;
    {
        p = if (start != null) start.*.next else pattern_vars;
        while (p != null) : (p = p.*.next) {
            var stem: [*c]const u8 = undefined;
            var stemlen: usize = undefined;
            if (p.*.len > targlen) continue;
            stem = target + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p.*.suffix) -% @intFromPtr(p.*.target))), @sizeOf(u8)) - @as(c_long, 1)))));
            stemlen = (targlen -% p.*.len) +% @as(usize, 1);
            if ((stem > target) and !(strncmp(p.*.target, target, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(stem) -% @intFromPtr(target))), @sizeOf(u8))))) == 0)) continue;
            if ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, @bitCast(@as(c_uint, stem[stemlen])))) and ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, '\x00')) or (((&p.*.suffix[1]) == (&stem[stemlen +% @as(usize, 1)])) or ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[1]).*))) == @as(c_int, @bitCast(@as(c_uint, (&stem[stemlen +% @as(usize, 1)]).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[1]).*))) == @as(c_int, '\x00')) or !(strcmp((&p.*.suffix[1]) + @as(usize, @bitCast(@as(isize, @intCast(1)))), (&stem[stemlen +% @as(usize, 1)]) + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))))) break;
        }
    }
    return p;
}
fn variable_hash_1(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    const keyv = arg_keyv;
    const key: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(keyv)));
    while (true) {
        var _result_: c_ulong = 0;
        while (true) {
            const _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(key.*.name)));
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash(_key_, @as(c_int, @bitCast(key.*.length))))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn variable_hash_2(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    const keyv = arg_keyv;
    const key: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(keyv)));
    while (true) {
        const _result_: c_ulong = 0;
        while (true) {
            _ = key.*.name;
            _ = key.*.length;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn variable_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    const xv = arg_xv;
    const yv = arg_yv;
    const x: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(xv)));
    const y: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(yv)));
    const result: c_int = @as(c_int, @bitCast(x.*.length -% y.*.length));
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) 0 else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.length))));
    }
    return 0;
}
var global_variable_set: struct_variable_set = @import("std").mem.zeroes(struct_variable_set);
var global_setlist: struct_variable_set_list = struct_variable_set_list{
    .next = null,
    .set = &global_variable_set,
    .next_is_parent = 0,
};
fn free_variable_name_and_value(arg_item: ?*const anyopaque) callconv(.C) void {
    const item = arg_item;
    const v: [*c]struct_variable = @as([*c]struct_variable, @ptrCast(@volatileCast(@constCast(item))));
    free(@as(?*anyopaque, @ptrCast(v.*.name)));
    free(@as(?*anyopaque, @ptrCast(v.*.value)));
}
fn lookup_special_var(arg_var: [*c]struct_variable) callconv(.C) [*c]struct_variable {
    var @"var" = arg_var;
    _ = &@"var";
    const last_changenum = struct {
        var static: c_ulong = 0;
    };
    if ((variable_changenum != last_changenum.static) and ((@"var".*.name == (".VARIABLES")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".VARIABLES".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), ".VARIABLES" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0))))) {
        var max: usize = ((strlen(@"var".*.value) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(c_ulong, 1)) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))));
        var len: usize = undefined;
        var p: [*c]u8 = undefined;
        var vp: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(global_variable_set.table.ht_vec)));
        const end: [*c][*c]struct_variable = &vp[global_variable_set.table.ht_size];
        @"var".*.value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(@"var".*.value)), max))));
        p = @"var".*.value;
        len = 0;
        while (vp < end) : (vp += 1) if (!((vp.* == null) or (@as(?*anyopaque, @ptrCast(vp.*)) == hash_deleted_item))) {
            const v: [*c]struct_variable = vp.*;
            const l: c_int = @as(c_int, @bitCast(v.*.length));
            len +%= @as(usize, @bitCast(@as(c_long, l + 1)));
            if (len > max) {
                const off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@"var".*.value))), @sizeOf(u8))));
                max +%= @as(usize, @bitCast(@as(c_long, (@divTrunc(l + 1, @as(c_int, 500)) + 1) * @as(c_int, 500))));
                @"var".*.value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(@"var".*.value)), max))));
                p = &@"var".*.value[off];
            }
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(v.*.name)), @as(c_ulong, @bitCast(@as(c_long, l)))))));
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        };
        (p - @as(usize, @bitCast(@as(isize, @intCast(1))))).* = '\x00';
        last_changenum.static = variable_changenum;
    }
    return @"var";
}
fn merge_variable_sets(arg_to_set: [*c]struct_variable_set, arg_from_set: [*c]struct_variable_set) callconv(.C) void {
    const to_set = arg_to_set;
    const from_set = arg_from_set;
    var from_var_slot: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(from_set.*.table.ht_vec)));
    const from_var_end: [*c][*c]struct_variable = from_var_slot + from_set.*.table.ht_size;
    const inc: c_int = if (to_set == (&global_variable_set)) 1 else 0;
    while (from_var_slot < from_var_end) : (from_var_slot += 1) if (!((from_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(from_var_slot.*)) == hash_deleted_item))) {
        const from_var: [*c]struct_variable = from_var_slot.*;
        const to_var_slot: [*c][*c]struct_variable = @as([*c][*c]struct_variable, @ptrCast(@alignCast(hash_find_slot(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var_slot.*))))));
        if ((to_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(to_var_slot.*)) == hash_deleted_item)) {
            _ = hash_insert_at(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var)), @as(?*const anyopaque, @ptrCast(to_var_slot)));
            variable_changenum +%= @as(c_ulong, @bitCast(@as(c_long, inc)));
        } else {
            free(@as(?*anyopaque, @ptrCast(from_var.*.value)));
            free(@as(?*anyopaque, @ptrCast(from_var)));
        }
    };
}
fn should_export(arg_v: [*c]const struct_variable) callconv(.C) c_int {
    const v = arg_v;
    while (true) {
        switch (v.*.@"export") {
            @as(c_uint, 1) => break,
            @as(c_uint, 2) => return 0,
            @as(c_uint, 3) => {
                if (v.*.origin == @as(c_uint, @bitCast(o_default))) return 0;
                break;
            },
            @as(c_uint, 0) => {
                if ((v.*.origin == @as(c_uint, @bitCast(o_default))) or (v.*.origin == @as(c_uint, @bitCast(o_automatic)))) return 0;
                if (!(v.*.exportable != 0)) return 0;
                if (((!(export_all_variables != 0) and (v.*.origin != @as(c_uint, @bitCast(o_command)))) and (v.*.origin != @as(c_uint, @bitCast(o_env)))) and (v.*.origin != @as(c_uint, @bitCast(o_env_override)))) return 0;
                break;
            },
            else => {},
        }
        break;
    }
    return 1;
}
fn set_special_var(arg_var: [*c]struct_variable, arg_origin: enum_variable_origin) callconv(.C) [*c]struct_variable {
    const @"var" = arg_var;
    const origin = arg_origin;
    if ((@"var".*.name == ("MAKEFLAGS")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
        reset_makeflags(origin);
    } else if ((@"var".*.name == (".RECIPEPREFIX")) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".RECIPEPREFIX".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(1)))), ".RECIPEPREFIX" + @as(usize, @bitCast(@as(isize, @intCast(1))))) != 0)))) {
        cmd_prefix = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, @"var".*.value[0]))) == @as(c_int, '\x00')) @as(c_int, '\t') else @as(c_int, @bitCast(@as(c_uint, @"var".*.value[0])))))));
    }
    return @"var";
}
fn shell_result(arg_p: [*c]const u8) callconv(.C) [*c]u8 {
    const p = arg_p;
    var buf: [*c]u8 = undefined;
    var len: usize = undefined;
    var args: [2][*c]u8 = undefined;
    var result: [*c]u8 = undefined;
    install_variable_buffer(&buf, &len);
    args[0] = @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
    args[1] = null;
    _ = variable_buffer_output(func_shell_base(variable_buffer, @as([*c][*c]u8, @ptrCast(@alignCast(&args))), 0), "\x00", @as(usize, 1));
    result = strdup(variable_buffer);
    restore_variable_buffer(buf, len);
    return result;
}
const defined_vars: [11]struct_defined_vars = [11]struct_defined_vars{
    struct_defined_vars{
        .name = "MAKECMDGOALS",
        .len = @sizeOf([13]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "MAKE_RESTARTS",
        .len = @sizeOf([14]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "MAKE_TERMOUT",
        .len = @sizeOf([13]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "MAKE_TERMERR",
        .len = @sizeOf([13]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "MAKEOVERRIDES",
        .len = @sizeOf([14]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = ".DEFAULT",
        .len = @sizeOf([9]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "-*-command-variables-*-",
        .len = @sizeOf([24]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "-*-eval-flags-*-",
        .len = @sizeOf([17]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "VPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = "GPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, 1),
    },
    struct_defined_vars{
        .name = null,
        .len = @as(usize, 0),
    },
};
fn print_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    const item = arg_item;
    const arg = arg_arg;
    const v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    const prefix: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(arg)));
    var origin: [*c]const u8 = undefined;
    while (true) {
        switch (v.*.origin) {
            @as(c_uint, 6) => {
                origin = gettext("automatic");
                break;
            },
            @as(c_uint, 0) => {
                origin = gettext("default");
                break;
            },
            @as(c_uint, 1) => {
                origin = gettext("environment");
                break;
            },
            @as(c_uint, 2) => {
                origin = gettext("makefile");
                break;
            },
            @as(c_uint, 3) => {
                origin = gettext("environment under -e");
                break;
            },
            @as(c_uint, 4) => {
                origin = gettext("command line");
                break;
            },
            @as(c_uint, 5) => {
                origin = gettext("'override' directive");
                break;
            },
            @as(c_uint, 7) => {
                abort();
            },
            else => {},
        }
        break;
    }
    _ = fputs("# ", stdout);
    _ = fputs(origin, stdout);
    if (v.*.private_var != 0) {
        _ = fputs(" private", stdout);
    }
    if (v.*.fileinfo.filenm != null) {
        _ = printf(gettext(" (from '%s', line %lu)"), v.*.fileinfo.filenm, v.*.fileinfo.lineno +% v.*.fileinfo.offset);
    }
    _ = putchar(@as(c_int, '\n'));
    _ = fputs(prefix, stdout);
    if ((v.*.recursive != 0) and (strchr(v.*.value, @as(c_int, '\n')) != null)) {
        _ = printf("define %s\n%s\nendef\n", v.*.name, v.*.value);
    } else {
        var p: [*c]u8 = undefined;
        _ = printf("%s %s= ", v.*.name, if (v.*.recursive != 0) if (v.*.append != 0) "+" else "" else ":");
        p = next_token(v.*.value);
        if ((p != v.*.value) and (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00'))) {
            _ = printf("$(subst ,,%s)", v.*.value);
        } else if (v.*.recursive != 0) {
            _ = fputs(v.*.value, stdout);
        } else {
            p = v.*.value;
            while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) {
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '$')) {
                    _ = putchar(@as(c_int, '$'));
                }
                _ = putchar(@as(c_int, @bitCast(@as(c_uint, p.*))));
            }
        }
        _ = putchar(@as(c_int, '\n'));
    }
}
fn print_auto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    const item = arg_item;
    const arg = arg_arg;
    const v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    if (v.*.origin == @as(c_uint, @bitCast(o_automatic))) {
        print_variable(item, arg);
    }
}
fn print_noauto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    const item = arg_item;
    const arg = arg_arg;
    const v: [*c]const struct_variable = @as([*c]const struct_variable, @ptrCast(@alignCast(item)));
    if (v.*.origin != @as(c_uint, @bitCast(o_automatic))) {
        print_variable(item, arg);
    }
}
fn print_variable_set(arg_set: [*c]struct_variable_set, arg_prefix: [*c]const u8, arg_pauto: c_int) callconv(.C) void {
    const set = arg_set;
    const prefix = arg_prefix;
    const pauto = arg_pauto;
    hash_map_arg(&set.*.table, if (pauto != 0) &print_auto_variable else &print_variable, @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(prefix)))));
    _ = fputs(gettext("# variable set hash-table stats:\n"), stdout);
    _ = fputs("# ", stdout);
    hash_print_stats(&set.*.table, stdout);
    _ = putc(@as(c_int, '\n'), stdout);
}
