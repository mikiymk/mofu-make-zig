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

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;

const _ISalnum: c_int = 8;

extern fn __ctype_b_loc() [*c][*c]const c_ushort;

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

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

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
extern fn concat(c_uint, ...) [*c]const u8;

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

const o_file: c_int = 2;

const enum_variable_origin = c_int;

const f_append_value: c_int = 7;
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

extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

extern fn strcache_add(str: [*c]const u8) [*c]const u8;

const load_func_t = ?*const fn ([*c]const floc) callconv(.C) c_int;
export fn load_file(arg_flocp: [*c]const floc, arg_file_1: [*c]struct_file, arg_noerror: c_int) c_int {
    var flocp = arg_flocp;
    _ = &flocp;
    var file_1 = arg_file_1;
    _ = &file_1;
    var noerror = arg_noerror;
    _ = &noerror;
    var ldname: [*c]const u8 = file_1.*.name;
    _ = &ldname;
    var nmlen: usize = strlen(ldname);
    _ = &nmlen;
    var new: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc((nmlen +% (@sizeOf([11]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
    _ = &new;
    var symname: [*c]u8 = null;
    _ = &symname;
    var fp: [*c]const u8 = undefined;
    _ = &fp;
    var r: c_int = undefined;
    _ = &r;
    var symp: load_func_t = undefined;
    _ = &symp;
    fp = strchr(ldname, @as(c_int, '('));
    if (fp != null) {
        var ep: [*c]const u8 = undefined;
        _ = &ep;
        ep = strchr(fp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ')'));
        if ((ep != null) and (@as(c_int, @bitCast(@as(c_uint, ep[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\x00'))) {
            var l: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(fp) -% @intFromPtr(ldname))), @sizeOf(u8))));
            _ = &l;
            fp += 1;
            if (fp == ep) {
                fatal(flocp, strlen(ldname), gettext("Empty symbol name for load: %s"), ldname);
            }
            _ = memcpy(@as(?*anyopaque, @ptrCast(new)), @as(?*const anyopaque, @ptrCast(ldname)), l);
            new[l] = '\x00';
            ldname = new;
            nmlen = l;
            symname = (new + l) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            _ = memcpy(@as(?*anyopaque, @ptrCast(symname)), @as(?*const anyopaque, @ptrCast(fp)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(ep) -% @intFromPtr(fp))), @sizeOf(u8)))));
            (blk: {
                const tmp = @divExact(@as(c_long, @bitCast(@intFromPtr(ep) -% @intFromPtr(fp))), @sizeOf(u8));
                if (tmp >= 0) break :blk symname + @as(usize, @intCast(tmp)) else break :blk symname - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = '\x00';
        }
    }
    ldname = blk: {
        const tmp = strcache_add(ldname);
        file_1.*.name = tmp;
        break :blk tmp;
    };
    file_1 = lookup_file(ldname);
    if ((file_1 != null) and (file_1.*.loaded != 0)) return -@as(c_int, 1);
    if (!(symname != null)) {
        var p: [*c]u8 = new;
        _ = &p;
        fp = strrchr(ldname, @as(c_int, '/'));
        if (!(fp != null)) {
            fp = ldname;
        } else {
            fp += 1;
        }
        while (((@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(fp.*)))));
            if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISalnum)))))))) != 0) or (@as(c_int, @bitCast(@as(c_uint, fp.*))) == @as(c_int, '_'))) {
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = (blk: {
                const ref = &fp;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*;
        }
        _ = strcpy(p, "_gmk_setup");
        symname = new;
    }
    while (true) {
        if ((@as(c_int, 2) & db_level) != 0) {
            _ = printf(gettext("Loading symbol %s from %s\n"), symname, ldname);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    symp = load_object(flocp, noerror, ldname, symname);
    if (!(symp != null)) return 0;
    r = symp.?(flocp);
    if (r != 0) {
        _ = do_variable_definition(flocp, ".LOADED", ldname, @as(c_uint, @bitCast(o_file)), @as(c_uint, @bitCast(f_append_value)), @as(c_int, 0));
    }
    return r;
}
const struct_load_list = extern struct {
    next: [*c]struct_load_list = @import("std").mem.zeroes([*c]struct_load_list),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dlp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
export fn unload_file(arg_name: [*c]const u8) c_int {
    var name = arg_name;
    _ = &name;
    var rc: c_int = 0;
    _ = &rc;
    var d: [*c]struct_load_list = undefined;
    _ = &d;
    {
        d = loaded_syms;
        while (d != @as([*c]struct_load_list, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (d = d.*.next) if (((d.*.name == name) or ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, name.*)))) and ((@as(c_int, @bitCast(@as(c_uint, d.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(d.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) and (d.*.dlp != null)) {
            while (true) {
                if ((@as(c_int, 2) & db_level) != 0) {
                    _ = printf(gettext("Unloading shared object %s\n"), name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            rc = dlclose(d.*.dlp);
            if (rc != 0) {
                perror_with_name("dlclose: ", d.*.name);
            } else {
                d.*.dlp = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
            }
            break;
        };
    }
    return rc;
}
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

extern fn dlopen(__file: [*c]const u8, __mode: c_int) ?*anyopaque;
extern fn dlclose(__handle: ?*anyopaque) c_int;
extern fn dlsym(noalias __handle: ?*anyopaque, noalias __name: [*c]const u8) ?*anyopaque;

extern fn dlerror() [*c]u8;

extern var db_level: c_int;

extern var hash_deleted_item: ?*anyopaque;
extern var default_file: [*c]struct_file;
extern fn lookup_file(name: [*c]const u8) [*c]struct_file;

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

extern fn do_variable_definition(flocp: [*c]const floc, name: [*c]const u8, value: [*c]const u8, origin: enum_variable_origin, flavor: enum_variable_flavor, target_var: c_int) [*c]struct_variable;

extern var export_all_variables: c_int;
var loaded_syms: [*c]struct_load_list = null;
fn load_object(arg_flocp: [*c]const floc, arg_noerror: c_int, arg_ldname: [*c]const u8, arg_symname: [*c]const u8) callconv(.C) load_func_t {
    var flocp = arg_flocp;
    _ = &flocp;
    var noerror = arg_noerror;
    _ = &noerror;
    var ldname = arg_ldname;
    _ = &ldname;
    var symname = arg_symname;
    _ = &symname;
    const global_dl = struct {
        var static: ?*anyopaque = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
    };
    _ = &global_dl;
    var symp: load_func_t = undefined;
    _ = &symp;
    if (!(global_dl.static != null)) {
        global_dl.static = dlopen(null, @as(c_int, 2) | @as(c_int, 256));
        if (!(global_dl.static != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            fatal(flocp, strlen(err), gettext("Failed to open global symbol table: %s"), err);
        }
    }
    symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(global_dl.static, symname))));
    if (!(symp != null)) {
        var new: [*c]struct_load_list = undefined;
        _ = &new;
        var dlp: ?*anyopaque = @as(?*anyopaque, @ptrFromInt(@as(c_int, 0)));
        _ = &dlp;
        if (!(strchr(ldname, @as(c_int, '/')) != null)) {
            dlp = dlopen(concat(@as(c_uint, @bitCast(@as(c_int, 2))), "./", ldname), @as(c_int, 1) | @as(c_int, 256));
        }
        if (!(dlp != null)) {
            dlp = dlopen(ldname, @as(c_int, 1) | @as(c_int, 256));
        }
        if (!(dlp != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            if (noerror != 0) {
                while (true) {
                    if ((@as(c_int, 1) & db_level) != 0) {
                        _ = printf("%s\n", err);
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            } else {
                @"error"(flocp, strlen(err), "%s", err);
            }
            return null;
        }
        while (true) {
            if ((@as(c_int, 2) & db_level) != 0) {
                _ = printf(gettext("Loaded shared object %s\n"), ldname);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(dlp, "plugin_is_GPL_compatible"))));
        if (!(symp != null)) {
            fatal(flocp, strlen(ldname), gettext("Loaded object %s is not declared to be GPL compatible"), ldname);
        }
        symp = @as(load_func_t, @ptrCast(@alignCast(dlsym(dlp, symname))));
        if (!(symp != null)) {
            var err: [*c]const u8 = dlerror();
            _ = &err;
            fatal(flocp, (strlen(symname) +% strlen(ldname)) +% strlen(err), gettext("Failed to load symbol %s from %s: %s"), symname, ldname, err);
        }
        new = @as([*c]struct_load_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_load_list)))));
        new.*.name = xstrdup(ldname);
        new.*.dlp = dlp;
        new.*.next = loaded_syms;
        loaded_syms = new;
    }
    return symp;
}
