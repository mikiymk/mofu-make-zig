const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

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

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;

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
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn xmalloc(usize) ?*anyopaque;

export fn strcache_init() void {
    hash_init(&strings, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8000)))), &str_hash_1, &str_hash_2, &str_hash_cmp);
}
const sc_buflen_t = c_ushort;
const struct_strcache = extern struct {
    next: [*c]struct_strcache = @import("std").mem.zeroes([*c]struct_strcache),
    end: sc_buflen_t = @import("std").mem.zeroes(sc_buflen_t),
    bytesfree: sc_buflen_t = @import("std").mem.zeroes(sc_buflen_t),
    count: sc_buflen_t = @import("std").mem.zeroes(sc_buflen_t),
    buffer: [1]u8 = @import("std").mem.zeroes([1]u8),
};
export fn strcache_print_stats(arg_prefix: [*c]const u8) void {
    var prefix = arg_prefix;
    _ = &prefix;
    var sp: [*c]const struct_strcache = undefined;
    _ = &sp;
    var numbuffs: c_ulong = 0;
    _ = &numbuffs;
    var fullbuffs: c_ulong = 0;
    _ = &fullbuffs;
    var totfree: c_ulong = 0;
    _ = &totfree;
    var maxfree: c_ulong = 0;
    _ = &maxfree;
    var minfree: c_ulong = (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8192)))) -% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% @sizeOf(usize))) -% @offsetOf(struct_strcache, "buffer");
    _ = &minfree;
    if (!(strcache != null)) {
        _ = printf(gettext("\n%s No strcache buffers\n"), prefix);
        return;
    }
    {
        sp = strcache.*.next;
        while (sp != @as([*c]const struct_strcache, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (sp = sp.*.next) {
            var bf: sc_buflen_t = sp.*.bytesfree;
            _ = &bf;
            totfree +%= @as(c_ulong, @bitCast(@as(c_ulong, bf)));
            maxfree = if (@as(c_ulong, @bitCast(@as(c_ulong, bf))) > maxfree) @as(c_ulong, @bitCast(@as(c_ulong, bf))) else maxfree;
            minfree = if (@as(c_ulong, @bitCast(@as(c_ulong, bf))) < minfree) @as(c_ulong, @bitCast(@as(c_ulong, bf))) else minfree;
            numbuffs +%= 1;
        }
    }
    {
        sp = fullcache;
        while (sp != @as([*c]const struct_strcache, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (sp = sp.*.next) {
            var bf: sc_buflen_t = sp.*.bytesfree;
            _ = &bf;
            totfree +%= @as(c_ulong, @bitCast(@as(c_ulong, bf)));
            maxfree = if (@as(c_ulong, @bitCast(@as(c_ulong, bf))) > maxfree) @as(c_ulong, @bitCast(@as(c_ulong, bf))) else maxfree;
            minfree = if (@as(c_ulong, @bitCast(@as(c_ulong, bf))) < minfree) @as(c_ulong, @bitCast(@as(c_ulong, bf))) else minfree;
            numbuffs +%= 1;
            fullbuffs +%= 1;
        }
    }
    _ = @as(c_int, 0);
    _ = printf(gettext("\n%s strcache buffers: %lu (%lu) / strings = %lu / storage = %lu B / avg = %lu B\n"), prefix, numbuffs +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), fullbuffs, total_strings, total_size, total_size / total_strings);
    _ = printf(gettext("%s current buf: size = %hu B / used = %hu B / count = %hu / avg = %u B\n"), prefix, @as(c_int, @bitCast(@as(c_uint, @as(sc_buflen_t, @bitCast(@as(c_ushort, @truncate((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8192)))) -% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% @sizeOf(usize))) -% @offsetOf(struct_strcache, "buffer")))))))), @as(c_int, @bitCast(@as(c_uint, strcache.*.end))), @as(c_int, @bitCast(@as(c_uint, strcache.*.count))), @as(c_uint, @bitCast(@divTrunc(@as(c_int, @bitCast(@as(c_uint, strcache.*.end))), @as(c_int, @bitCast(@as(c_uint, strcache.*.count)))))));
    if (numbuffs != 0) {
        var sz: c_ulong = total_size -% @as(c_ulong, @bitCast(@as(c_ulong, strcache.*.end)));
        _ = &sz;
        var cnt: c_ulong = total_strings -% @as(c_ulong, @bitCast(@as(c_ulong, strcache.*.count)));
        _ = &cnt;
        var avgfree: sc_buflen_t = @as(sc_buflen_t, @bitCast(@as(c_ushort, @truncate(totfree / numbuffs))));
        _ = &avgfree;
        _ = printf(gettext("%s other used: total = %lu B / count = %lu / avg = %lu B\n"), prefix, sz, cnt, sz / cnt);
        _ = printf(gettext("%s other free: total = %lu B / max = %lu B / min = %lu B / avg = %hu B\n"), prefix, totfree, maxfree, minfree, @as(c_int, @bitCast(@as(c_uint, avgfree))));
    }
    _ = printf(gettext("\n%s strcache performance: lookups = %lu / hit rate = %lu%%\n"), prefix, total_adds, @as(c_ulong, @intFromFloat((100.0 * @as(f64, @floatFromInt(total_adds -% total_strings))) / @as(f64, @floatFromInt(total_adds)))));
    _ = fputs(gettext("# hash-table stats:\n# "), stdout);
    hash_print_stats(&strings, stdout);
}
const struct_hugestring = extern struct {
    next: [*c]struct_hugestring = @import("std").mem.zeroes([*c]struct_hugestring),
    buffer: [1]u8 = @import("std").mem.zeroes([1]u8),
};
export fn strcache_iscached(arg_str: [*c]const u8) c_int {
    var str = arg_str;
    _ = &str;
    var sp: [*c]struct_strcache = undefined;
    _ = &sp;
    {
        sp = strcache;
        while (sp != null) : (sp = sp.*.next) if ((str >= @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&sp.*.buffer))))))) and (str < @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&sp.*.buffer))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, sp.*.end)))))))))))) return 1;
    }
    {
        sp = fullcache;
        while (sp != null) : (sp = sp.*.next) if ((str >= @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&sp.*.buffer))))))) and (str < @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&sp.*.buffer))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, sp.*.end)))))))))))) return 1;
    }
    {
        var hp: [*c]struct_hugestring = undefined;
        _ = &hp;
        {
            hp = hugestrings;
            while (hp != null) : (hp = hp.*.next) if (str == @as([*c]const u8, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(&hp.*.buffer))))))) return 1;
        }
    }
    return 0;
}
export fn strcache_add(arg_str: [*c]const u8) [*c]const u8 {
    var str = arg_str;
    _ = &str;
    return add_hash(str, strlen(str));
}
export fn strcache_add_len(arg_str: [*c]const u8, arg_len: usize) [*c]const u8 {
    var str = arg_str;
    _ = &str;
    var len = arg_len;
    _ = &len;
    if (@as(c_int, @bitCast(@as(c_uint, str[len]))) != @as(c_int, '\x00')) {
        var key: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = &key;
        _ = memcpy(@as(?*anyopaque, @ptrCast(key)), @as(?*const anyopaque, @ptrCast(str)), len);
        key[len] = '\x00';
        str = key;
    }
    return add_hash(str, len);
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

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;

extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;

extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;

extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;
var strcache: [*c]struct_strcache = null;
var fullcache: [*c]struct_strcache = null;
var total_buffers: c_ulong = 0;
var total_strings: c_ulong = 0;
var total_size: c_ulong = 0;
fn new_cache(arg_head: [*c][*c]struct_strcache, arg_buflen: sc_buflen_t) callconv(.C) [*c]struct_strcache {
    var head = arg_head;
    _ = &head;
    var buflen = arg_buflen;
    _ = &buflen;
    var new: [*c]struct_strcache = @as([*c]struct_strcache, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_ulong, buflen))) +% @offsetOf(struct_strcache, "buffer")))));
    _ = &new;
    new.*.end = 0;
    new.*.count = 0;
    new.*.bytesfree = buflen;
    new.*.next = head.*;
    head.* = new;
    total_buffers +%= 1;
    return new;
}
fn copy_string(arg_sp: [*c]struct_strcache, arg_str: [*c]const u8, arg_len: sc_buflen_t) callconv(.C) [*c]const u8 {
    var sp = arg_sp;
    _ = &sp;
    var str = arg_str;
    _ = &str;
    var len = arg_len;
    _ = &len;
    var res: [*c]u8 = &sp.*.buffer[sp.*.end];
    _ = &res;
    _ = memmove(@as(?*anyopaque, @ptrCast(res)), @as(?*const anyopaque, @ptrCast(str)), @as(c_ulong, @bitCast(@as(c_ulong, len))));
    res[
        blk: {
            const ref = &len;
            const tmp = ref.*;
            ref.* +%= 1;
            break :blk tmp;
        }
    ] = '\x00';
    sp.*.end +%= @as(sc_buflen_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, len)))))));
    sp.*.bytesfree -%= @as(sc_buflen_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, len)))))));
    sp.*.count +%= 1;
    return res;
}
fn add_string(arg_str: [*c]const u8, arg_len: sc_buflen_t) callconv(.C) [*c]const u8 {
    var str = arg_str;
    _ = &str;
    var len = arg_len;
    _ = &len;
    var res: [*c]const u8 = undefined;
    _ = &res;
    var sp: [*c]struct_strcache = undefined;
    _ = &sp;
    var spp: [*c][*c]struct_strcache = &strcache;
    _ = &spp;
    var sz: sc_buflen_t = @as(sc_buflen_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, len))) + @as(c_int, 1)))));
    _ = &sz;
    total_strings +%= 1;
    total_size +%= @as(c_ulong, @bitCast(@as(c_ulong, sz)));
    if (@as(c_ulong, @bitCast(@as(c_ulong, sz))) > ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8192)))) -% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% @sizeOf(usize))) -% @offsetOf(struct_strcache, "buffer"))) {
        sp = new_cache(&fullcache, sz);
        return copy_string(sp, str, len);
    }
    while (spp.* != @as([*c]struct_strcache, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (spp = &spp.*.*.next) if (@as(c_int, @bitCast(@as(c_uint, spp.*.*.bytesfree))) > @as(c_int, @bitCast(@as(c_uint, sz)))) break;
    sp = spp.*;
    if (sp == @as([*c]struct_strcache, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        sp = new_cache(&strcache, @as(sc_buflen_t, @bitCast(@as(c_ushort, @truncate((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8192)))) -% (@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))) *% @sizeOf(usize))) -% @offsetOf(struct_strcache, "buffer"))))));
        spp = &strcache;
    }
    res = copy_string(sp, str, len);
    if ((total_strings > @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 20))))) and (@as(c_ulong, @bitCast(@as(c_ulong, sp.*.bytesfree))) < ((total_size / total_strings) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) {
        spp.* = sp.*.next;
        sp.*.next = fullcache;
        fullcache = sp;
    }
    return res;
}
var hugestrings: [*c]struct_hugestring = null;
fn add_hugestring(arg_str: [*c]const u8, arg_len: usize) callconv(.C) [*c]const u8 {
    var str = arg_str;
    _ = &str;
    var len = arg_len;
    _ = &len;
    var new: [*c]struct_hugestring = @as([*c]struct_hugestring, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_hugestring) +% len))));
    _ = &new;
    _ = memcpy(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&new.*.buffer))))), @as(?*const anyopaque, @ptrCast(str)), len);
    new.*.buffer[len] = '\x00';
    new.*.next = hugestrings;
    hugestrings = new;
    return @as([*c]u8, @ptrCast(@alignCast(&new.*.buffer)));
}
fn str_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const u8, @ptrCast(@alignCast(key))))));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn str_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const u8, @ptrCast(@alignCast(key)));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}
fn str_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    while (true) {
        return if (@as([*c]const u8, @ptrCast(@alignCast(x))) == @as([*c]const u8, @ptrCast(@alignCast(y)))) @as(c_int, 0) else strcmp(@as([*c]const u8, @ptrCast(@alignCast(x))), @as([*c]const u8, @ptrCast(@alignCast(y))));
    }
    return 0;
}
var strings: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);
var total_adds: c_ulong = 0;
fn add_hash(arg_str: [*c]const u8, arg_len: usize) callconv(.C) [*c]const u8 {
    var str = arg_str;
    _ = &str;
    var len = arg_len;
    _ = &len;
    var slot: [*c]const [*c]u8 = undefined;
    _ = &slot;
    var key: [*c]const u8 = undefined;
    _ = &key;
    if (len > @as(usize, @bitCast(@as(c_long, ((@as(c_int, 32767) * @as(c_int, 2)) + @as(c_int, 1)) - @as(c_int, 1))))) return add_hugestring(str, len);
    slot = @as([*c]const [*c]u8, @ptrCast(@alignCast(hash_find_slot(&strings, @as(?*const anyopaque, @ptrCast(str))))));
    key = slot.*;
    total_adds +%= 1;
    if (!((key == null) or (@as(?*anyopaque, @ptrCast(@volatileCast(@constCast(key)))) == hash_deleted_item))) return key;
    key = add_string(str, @as(sc_buflen_t, @bitCast(@as(c_ushort, @truncate(len)))));
    _ = hash_insert_at(&strings, @as(?*const anyopaque, @ptrCast(key)), @as(?*const anyopaque, @ptrCast(slot)));
    return key;
}
