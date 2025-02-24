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

extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;

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

extern fn exit(__status: c_int) noreturn;

const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;

extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;

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
const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;
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
const qsort_cmp_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
export fn hash_init(arg_ht: [*c]struct_hash_table, arg_size: c_ulong, arg_hash_1: hash_func_t, arg_hash_2: hash_func_t, arg_hash_cmp: hash_cmp_func_t) void {
    var ht = arg_ht;
    _ = &ht;
    var size = arg_size;
    _ = &size;
    var hash_1 = arg_hash_1;
    _ = &hash_1;
    var hash_2 = arg_hash_2;
    _ = &hash_2;
    var hash_cmp = arg_hash_cmp;
    _ = &hash_cmp;
    ht.*.ht_size = round_up_2(size);
    ht.*.ht_empty_slots = ht.*.ht_size;
    ht.*.ht_vec = @as([*c]?*anyopaque, @ptrCast(@alignCast(xcalloc(@sizeOf(?*anyopaque) *% ht.*.ht_size))));
    if (ht.*.ht_vec == null) {
        _ = fprintf(stderr, gettext("can't allocate %lu bytes for hash table: memory exhausted"), ht.*.ht_size *% @sizeOf(?*anyopaque));
        exit(1);
    }
    ht.*.ht_capacity = ht.*.ht_size -% (ht.*.ht_size / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 16)))));
    ht.*.ht_fill = 0;
    ht.*.ht_collisions = 0;
    ht.*.ht_lookups = 0;
    ht.*.ht_rehashes = 0;
    ht.*.ht_hash_1 = hash_1;
    ht.*.ht_hash_2 = hash_2;
    ht.*.ht_compare = hash_cmp;
}
export fn hash_load(arg_ht: [*c]struct_hash_table, arg_item_table: ?*anyopaque, arg_cardinality: c_ulong, arg_size: c_ulong) void {
    var ht = arg_ht;
    _ = &ht;
    var item_table = arg_item_table;
    _ = &item_table;
    var cardinality = arg_cardinality;
    _ = &cardinality;
    var size = arg_size;
    _ = &size;
    var items: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(item_table)));
    _ = &items;
    while ((blk: {
        const ref = &cardinality;
        const tmp = ref.*;
        ref.* -%= 1;
        break :blk tmp;
    }) != 0) {
        _ = hash_insert(ht, @as(?*const anyopaque, @ptrCast(items)));
        items += @as([*c]u8, @ptrFromInt(size));
    }
}
export fn hash_find_slot(arg_ht: [*c]struct_hash_table, arg_key: ?*const anyopaque) [*c]?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var key = arg_key;
    _ = &key;
    var slot: [*c]?*anyopaque = undefined;
    _ = &slot;
    var deleted_slot: [*c]?*anyopaque = null;
    _ = &deleted_slot;
    var hash_2: c_uint = 0;
    _ = &hash_2;
    var hash_1: c_uint = @as(c_uint, @bitCast(@as(c_uint, @truncate(ht.*.ht_hash_1.?(key)))));
    _ = &hash_1;
    ht.*.ht_lookups +%= 1;
    while (true) {
        hash_1 &= @as(c_uint, @bitCast(@as(c_uint, @truncate(ht.*.ht_size -% @as(c_ulong, 1)))));
        slot = &ht.*.ht_vec[hash_1];
        if (slot.* == null) return if (deleted_slot != null) deleted_slot else slot;
        if (slot.* == hash_deleted_item) {
            if (deleted_slot == null) {
                deleted_slot = slot;
            }
        } else {
            if (key == @as(?*const anyopaque, @ptrCast(slot.*))) return slot;
            if (ht.*.ht_compare.?(key, slot.*) == 0) return slot;
            ht.*.ht_collisions +%= 1;
        }
        if (!(hash_2 != 0)) {
            hash_2 = @as(c_uint, @bitCast(@as(c_uint, @truncate(ht.*.ht_hash_2.?(key) | @as(c_ulong, 1)))));
        }
        hash_1 +%= hash_2;
    }
    return null;
}
export fn hash_find_item(arg_ht: [*c]struct_hash_table, arg_key: ?*const anyopaque) ?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var key = arg_key;
    _ = &key;
    var slot: [*c]?*anyopaque = hash_find_slot(ht, key);
    _ = &slot;
    return if ((slot.* == null) or (slot.* == hash_deleted_item)) null else slot.*;
}
export fn hash_insert(arg_ht: [*c]struct_hash_table, arg_item: ?*const anyopaque) ?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var item = arg_item;
    _ = &item;
    var slot: [*c]?*anyopaque = hash_find_slot(ht, item);
    _ = &slot;
    var old_item: ?*const anyopaque = slot.*;
    _ = &old_item;
    _ = hash_insert_at(ht, item, @as(?*const anyopaque, @ptrCast(slot)));
    return @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(if ((old_item == null) or (@as(?*anyopaque, @ptrCast(@volatileCast(@constCast(old_item)))) == hash_deleted_item)) null else old_item))));
}
export fn hash_insert_at(arg_ht: [*c]struct_hash_table, arg_item: ?*const anyopaque, arg_slot: ?*const anyopaque) ?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var item = arg_item;
    _ = &item;
    var slot = arg_slot;
    _ = &slot;
    var old_item: ?*const anyopaque = @as([*c]?*anyopaque, @ptrCast(@volatileCast(@constCast(slot)))).*;
    _ = &old_item;
    if ((old_item == null) or (@as(?*anyopaque, @ptrCast(@volatileCast(@constCast(old_item)))) == hash_deleted_item)) {
        ht.*.ht_fill +%= 1;
        if (old_item == null) {
            ht.*.ht_empty_slots -%= 1;
        }
        old_item = item;
    }
    @as([*c]?*const anyopaque, @ptrCast(@volatileCast(@constCast(slot)))).* = item;
    if (ht.*.ht_empty_slots < (ht.*.ht_size -% ht.*.ht_capacity)) {
        hash_rehash(ht);
        return @as(?*anyopaque, @ptrCast(hash_find_slot(ht, item)));
    } else return @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(slot))));
    return null;
}
export fn hash_delete(arg_ht: [*c]struct_hash_table, arg_item: ?*const anyopaque) ?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var item = arg_item;
    _ = &item;
    var slot: [*c]?*anyopaque = hash_find_slot(ht, item);
    _ = &slot;
    return hash_delete_at(ht, @as(?*const anyopaque, @ptrCast(slot)));
}
export fn hash_delete_at(arg_ht: [*c]struct_hash_table, arg_slot: ?*const anyopaque) ?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var slot = arg_slot;
    _ = &slot;
    var item: ?*anyopaque = @as([*c]?*anyopaque, @ptrCast(@volatileCast(@constCast(slot)))).*;
    _ = &item;
    if (!((item == null) or (item == hash_deleted_item))) {
        @as([*c]?*const anyopaque, @ptrCast(@volatileCast(@constCast(slot)))).* = hash_deleted_item;
        ht.*.ht_fill -%= 1;
        return item;
    } else return null;
    return null;
}
export fn hash_delete_items(arg_ht: [*c]struct_hash_table) void {
    var ht = arg_ht;
    _ = &ht;
    var vec: [*c]?*anyopaque = ht.*.ht_vec;
    _ = &vec;
    var end: [*c]?*anyopaque = &vec[ht.*.ht_size];
    _ = &end;
    while (vec < end) : (vec += 1) {
        vec.* = null;
    }
    ht.*.ht_fill = 0;
    ht.*.ht_collisions = 0;
    ht.*.ht_lookups = 0;
    ht.*.ht_rehashes = 0;
    ht.*.ht_empty_slots = ht.*.ht_size;
}
export fn hash_free_items(arg_ht: [*c]struct_hash_table) void {
    var ht = arg_ht;
    _ = &ht;
    var vec: [*c]?*anyopaque = ht.*.ht_vec;
    _ = &vec;
    var end: [*c]?*anyopaque = &vec[ht.*.ht_size];
    _ = &end;
    while (vec < end) : (vec += 1) {
        var item: ?*anyopaque = vec.*;
        _ = &item;
        if (!((item == null) or (item == hash_deleted_item))) {
            free(item);
        }
        vec.* = null;
    }
    ht.*.ht_fill = 0;
    ht.*.ht_empty_slots = ht.*.ht_size;
}
export fn hash_free(arg_ht: [*c]struct_hash_table, arg_free_items: c_int) void {
    var ht = arg_ht;
    _ = &ht;
    var free_items = arg_free_items;
    _ = &free_items;
    if (free_items != 0) {
        hash_free_items(ht);
    } else {
        ht.*.ht_fill = 0;
        ht.*.ht_empty_slots = ht.*.ht_size;
    }
    free(@as(?*anyopaque, @ptrCast(ht.*.ht_vec)));
    ht.*.ht_vec = null;
    ht.*.ht_capacity = 0;
}
export fn hash_map(arg_ht: [*c]struct_hash_table, arg_map: hash_map_func_t) void {
    var ht = arg_ht;
    _ = &ht;
    var map = arg_map;
    _ = &map;
    var slot: [*c]?*anyopaque = undefined;
    _ = &slot;
    var end: [*c]?*anyopaque = &ht.*.ht_vec[ht.*.ht_size];
    _ = &end;
    {
        slot = ht.*.ht_vec;
        while (slot < end) : (slot += 1) {
            if (!((slot.* == null) or (slot.* == hash_deleted_item))) {
                map.?(slot.*);
            }
        }
    }
}
export fn hash_map_arg(arg_ht: [*c]struct_hash_table, arg_map: hash_map_arg_func_t, arg_arg: ?*anyopaque) void {
    var ht = arg_ht;
    _ = &ht;
    var map = arg_map;
    _ = &map;
    var arg = arg_arg;
    _ = &arg;
    var slot: [*c]?*anyopaque = undefined;
    _ = &slot;
    var end: [*c]?*anyopaque = &ht.*.ht_vec[ht.*.ht_size];
    _ = &end;
    {
        slot = ht.*.ht_vec;
        while (slot < end) : (slot += 1) {
            if (!((slot.* == null) or (slot.* == hash_deleted_item))) {
                map.?(slot.*, arg);
            }
        }
    }
}
export fn hash_print_stats(arg_ht: [*c]struct_hash_table, arg_out_FILE: [*c]FILE) void {
    var ht = arg_ht;
    _ = &ht;
    var out_FILE = arg_out_FILE;
    _ = &out_FILE;
    _ = fprintf(out_FILE, gettext("Load=%lu/%lu=%.0f%%, "), ht.*.ht_fill, ht.*.ht_size, (100.0 * @as(f64, @floatFromInt(ht.*.ht_fill))) / @as(f64, @floatFromInt(ht.*.ht_size)));
    _ = fprintf(out_FILE, gettext("Rehash=%u, "), ht.*.ht_rehashes);
    _ = fprintf(out_FILE, gettext("Collisions=%lu/%lu=%.0f%%"), ht.*.ht_collisions, ht.*.ht_lookups, if (ht.*.ht_lookups != 0) (100.0 * @as(f64, @floatFromInt(ht.*.ht_collisions))) / @as(f64, @floatFromInt(ht.*.ht_lookups)) else @as(f64, @floatFromInt(0)));
}
export fn hash_dump(arg_ht: [*c]struct_hash_table, arg_vector_0: [*c]?*anyopaque, arg_compare: qsort_cmp_t) [*c]?*anyopaque {
    var ht = arg_ht;
    _ = &ht;
    var vector_0 = arg_vector_0;
    _ = &vector_0;
    var compare = arg_compare;
    _ = &compare;
    var vector: [*c]?*anyopaque = undefined;
    _ = &vector;
    var slot: [*c]?*anyopaque = undefined;
    _ = &slot;
    var end: [*c]?*anyopaque = &ht.*.ht_vec[ht.*.ht_size];
    _ = &end;
    if (vector_0 == null) {
        vector_0 = @as([*c]?*anyopaque, @ptrCast(@alignCast(xmalloc(@sizeOf(?*anyopaque) *% (ht.*.ht_fill +% @as(c_ulong, 1))))));
    }
    vector = vector_0;
    {
        slot = ht.*.ht_vec;
        while (slot < end) : (slot += 1) if (!((slot.* == null) or (slot.* == hash_deleted_item))) {
            (blk: {
                const ref = &vector;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = slot.*;
        };
    }
    vector.* = null;
    if (compare != null) {
        qsort(@as(?*anyopaque, @ptrCast(vector_0)), ht.*.ht_fill, @sizeOf(?*anyopaque), compare);
    }
    return vector_0;
}
export fn jhash(arg_k: [*c]const u8, arg_length: c_int) c_uint {
    var k = arg_k;
    _ = &k;
    var length = arg_length;
    _ = &length;
    var a: c_uint = undefined;
    _ = &a;
    var b: c_uint = undefined;
    _ = &b;
    var c: c_uint = undefined;
    _ = &c;
    a = blk: {
        const tmp = blk_1: {
            const tmp_2 = @as(c_uint, 3735928559) +% @as(c_uint, @bitCast(length));
            c = tmp_2;
            break :blk_1 tmp_2;
        };
        b = tmp;
        break :blk tmp;
    };
    while (length > @as(c_int, 12)) {
        while (true) {
            var val: c_uint = undefined;
            _ = &val;
            _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @as(c_ulong, 4));
            a +%= val;
            if (!false) break;
        }
        while (true) {
            var val: c_uint = undefined;
            _ = &val;
            _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k + @as(usize, @bitCast(@as(isize, @intCast(4)))))), @as(c_ulong, 4));
            b +%= val;
            if (!false) break;
        }
        while (true) {
            var val: c_uint = undefined;
            _ = &val;
            _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k + @as(usize, @bitCast(@as(isize, @intCast(8)))))), @as(c_ulong, 4));
            c +%= val;
            if (!false) break;
        }
        {
            a -%= c;
            a ^= (c << @intCast(4)) | (c >> @intCast(@as(c_int, 32) - 4));
            c +%= b;
            b -%= a;
            b ^= (a << @intCast(6)) | (a >> @intCast(@as(c_int, 32) - 6));
            a +%= c;
            c -%= b;
            c ^= (b << @intCast(8)) | (b >> @intCast(@as(c_int, 32) - 8));
            b +%= a;
            a -%= c;
            a ^= (c << @intCast(@as(c_int, 16))) | (c >> @intCast(@as(c_int, 32) - @as(c_int, 16)));
            c +%= b;
            b -%= a;
            b ^= (a << @intCast(@as(c_int, 19))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 19)));
            a +%= c;
            c -%= b;
            c ^= (b << @intCast(4)) | (b >> @intCast(@as(c_int, 32) - 4));
            b +%= a;
        }
        length -= @as(c_int, 12);
        k += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12)))));
    }
    if (!(length != 0)) return c;
    if (length > 8) {
        while (true) {
            var val: c_uint = undefined;
            _ = &val;
            _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @as(c_ulong, 4));
            a +%= val;
            if (!false) break;
        }
        length -= 4;
        k += @as(usize, @bitCast(@as(isize, @intCast(4))));
    }
    if (length > 4) {
        while (true) {
            var val: c_uint = undefined;
            _ = &val;
            _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @as(c_ulong, 4));
            b +%= val;
            if (!false) break;
        }
        length -= 4;
        k += @as(usize, @bitCast(@as(isize, @intCast(4))));
    }
    if (length == 4) {
        c +%= @as(c_uint, @bitCast(@as(c_uint, k[3]))) << @intCast(24);
    }
    if (length >= 3) {
        c +%= @as(c_uint, @bitCast(@as(c_uint, k[2]))) << @intCast(16);
    }
    if (length >= 2) {
        c +%= @as(c_uint, @bitCast(@as(c_uint, k[1]))) << @intCast(8);
    }
    c +%= @as(c_uint, @bitCast(@as(c_uint, k[0])));
    {
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 14))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 14)));
        a ^= c;
        a -%= (c << @intCast(@as(c_int, 11))) | (c >> @intCast(@as(c_int, 32) - @as(c_int, 11)));
        b ^= a;
        b -%= (a << @intCast(@as(c_int, 25))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 25)));
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 16))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 16)));
        a ^= c;
        a -%= (c << @intCast(4)) | (c >> @intCast(@as(c_int, 32) - 4));
        b ^= a;
        b -%= (a << @intCast(@as(c_int, 14))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 14)));
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 24))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 24)));
    }
    return c;
}
export fn jhash_string(arg_k: [*c]const u8) c_uint {
    var k = arg_k;
    _ = &k;
    var a: c_uint = undefined;
    _ = &a;
    var b: c_uint = undefined;
    _ = &b;
    var c: c_uint = undefined;
    _ = &c;
    var have_nul: c_uint = 0;
    _ = &have_nul;
    var start: [*c]const u8 = k;
    _ = &start;
    var klen: usize = strlen(@as([*c]const u8, @ptrCast(@alignCast(k))));
    _ = &klen;
    a = blk: {
        const tmp = blk_1: {
            const tmp_2 = @as(c_uint, 3735928559);
            c = tmp_2;
            break :blk_1 tmp_2;
        };
        b = tmp;
        break :blk tmp;
    };
    while (true) {
        while (true) {
            var val: c_uint = 0;
            _ = &val;
            var pn: usize = klen;
            _ = &pn;
            if (pn >= @sizeOf(c_uint)) {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @sizeOf(c_uint));
            } else {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), pn);
            }
            have_nul = ((val -% @as(c_uint, @bitCast(@as(c_int, 16843009)))) & ~val) & @as(c_uint, 2155905152);
            if (!(have_nul != 0)) {
                a +%= val;
            } else if ((val & @as(c_uint, @bitCast(@as(c_int, 255)))) != 0) {
                if ((val & @as(c_uint, @bitCast(@as(c_int, 65280)))) == @as(c_uint, 0)) {
                    a +%= val & @as(c_uint, @bitCast(@as(c_int, 255)));
                } else if ((val & @as(c_uint, @bitCast(@as(c_int, 16711680)))) == @as(c_uint, 0)) {
                    a +%= val & @as(c_uint, @bitCast(@as(c_int, 65535)));
                } else {
                    a +%= val;
                }
            }
            if (!false) break;
        }
        if (have_nul != 0) break;
        k += @as([*c]const u8, @ptrFromInt(@sizeOf(c_uint)));
        _ = 0;
        klen -%= @as(usize, @bitCast(@sizeOf(c_uint)));
        while (true) {
            var val: c_uint = 0;
            _ = &val;
            var pn: usize = klen;
            _ = &pn;
            if (pn >= @sizeOf(c_uint)) {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @sizeOf(c_uint));
            } else {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), pn);
            }
            have_nul = ((val -% @as(c_uint, @bitCast(@as(c_int, 16843009)))) & ~val) & @as(c_uint, 2155905152);
            if (!(have_nul != 0)) {
                b +%= val;
            } else if ((val & @as(c_uint, @bitCast(@as(c_int, 255)))) != 0) {
                if ((val & @as(c_uint, @bitCast(@as(c_int, 65280)))) == @as(c_uint, 0)) {
                    b +%= val & @as(c_uint, @bitCast(@as(c_int, 255)));
                } else if ((val & @as(c_uint, @bitCast(@as(c_int, 16711680)))) == @as(c_uint, 0)) {
                    b +%= val & @as(c_uint, @bitCast(@as(c_int, 65535)));
                } else {
                    b +%= val;
                }
            }
            if (!false) break;
        }
        if (have_nul != 0) break;
        k += @as([*c]const u8, @ptrFromInt(@sizeOf(c_uint)));
        _ = 0;
        klen -%= @as(usize, @bitCast(@sizeOf(c_uint)));
        while (true) {
            var val: c_uint = 0;
            _ = &val;
            var pn: usize = klen;
            _ = &pn;
            if (pn >= @sizeOf(c_uint)) {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), @sizeOf(c_uint));
            } else {
                _ = memcpy(@as(?*anyopaque, @ptrCast(&val)), @as(?*const anyopaque, @ptrCast(k)), pn);
            }
            have_nul = ((val -% @as(c_uint, @bitCast(@as(c_int, 16843009)))) & ~val) & @as(c_uint, 2155905152);
            if (!(have_nul != 0)) {
                c +%= val;
            } else if ((val & @as(c_uint, @bitCast(@as(c_int, 255)))) != 0) {
                if ((val & @as(c_uint, @bitCast(@as(c_int, 65280)))) == @as(c_uint, 0)) {
                    c +%= val & @as(c_uint, @bitCast(@as(c_int, 255)));
                } else if ((val & @as(c_uint, @bitCast(@as(c_int, 16711680)))) == @as(c_uint, 0)) {
                    c +%= val & @as(c_uint, @bitCast(@as(c_int, 65535)));
                } else {
                    c +%= val;
                }
            }
            if (!false) break;
        }
        if (have_nul != 0) break;
        k += @as([*c]const u8, @ptrFromInt(@sizeOf(c_uint)));
        _ = 0;
        klen -%= @as(usize, @bitCast(@sizeOf(c_uint)));
        {
            a -%= c;
            a ^= (c << @intCast(4)) | (c >> @intCast(@as(c_int, 32) - 4));
            c +%= b;
            b -%= a;
            b ^= (a << @intCast(6)) | (a >> @intCast(@as(c_int, 32) - 6));
            a +%= c;
            c -%= b;
            c ^= (b << @intCast(8)) | (b >> @intCast(@as(c_int, 32) - 8));
            b +%= a;
            a -%= c;
            a ^= (c << @intCast(@as(c_int, 16))) | (c >> @intCast(@as(c_int, 32) - @as(c_int, 16)));
            c +%= b;
            b -%= a;
            b ^= (a << @intCast(@as(c_int, 19))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 19)));
            a +%= c;
            c -%= b;
            c ^= (b << @intCast(4)) | (b >> @intCast(@as(c_int, 32) - 4));
            b +%= a;
        }
    }
    {
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 14))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 14)));
        a ^= c;
        a -%= (c << @intCast(@as(c_int, 11))) | (c >> @intCast(@as(c_int, 32) - @as(c_int, 11)));
        b ^= a;
        b -%= (a << @intCast(@as(c_int, 25))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 25)));
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 16))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 16)));
        a ^= c;
        a -%= (c << @intCast(4)) | (c >> @intCast(@as(c_int, 32) - 4));
        b ^= a;
        b -%= (a << @intCast(@as(c_int, 14))) | (a >> @intCast(@as(c_int, 32) - @as(c_int, 14)));
        c ^= b;
        c -%= (b << @intCast(@as(c_int, 24))) | (b >> @intCast(@as(c_int, 32) - @as(c_int, 24)));
    }
    return c +% @as(c_uint, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(k) -% @intFromPtr(start))), @sizeOf(u8))))));
}
extern var hash_deleted_item: ?*anyopaque;
fn hash_rehash(arg_ht: [*c]struct_hash_table) callconv(.C) void {
    var ht = arg_ht;
    _ = &ht;
    var old_ht_size: c_ulong = ht.*.ht_size;
    _ = &old_ht_size;
    var old_vec: [*c]?*anyopaque = ht.*.ht_vec;
    _ = &old_vec;
    var ovp: [*c]?*anyopaque = undefined;
    _ = &ovp;
    if (ht.*.ht_fill >= ht.*.ht_capacity) {
        ht.*.ht_size *%= @as(c_ulong, 2);
        ht.*.ht_capacity = ht.*.ht_size -% (ht.*.ht_size >> @intCast(4));
    }
    ht.*.ht_rehashes +%= 1;
    ht.*.ht_vec = @as([*c]?*anyopaque, @ptrCast(@alignCast(xcalloc(@sizeOf(?*anyopaque) *% ht.*.ht_size))));
    {
        ovp = old_vec;
        while (ovp < (&old_vec[old_ht_size])) : (ovp += 1) {
            if (!((ovp.* == null) or (ovp.* == hash_deleted_item))) {
                var slot: [*c]?*anyopaque = hash_find_slot(ht, ovp.*);
                _ = &slot;
                slot.* = ovp.*;
            }
        }
    }
    ht.*.ht_empty_slots = ht.*.ht_size -% ht.*.ht_fill;
    free(@as(?*anyopaque, @ptrCast(old_vec)));
}
fn round_up_2(arg_n: c_ulong) callconv(.C) c_ulong {
    var n = arg_n;
    _ = &n;
    n |= n >> @intCast(1);
    n |= n >> @intCast(2);
    n |= n >> @intCast(4);
    n |= n >> @intCast(8);
    n |= n >> @intCast(16);
    n |= n >> @intCast(32);
    return n +% @as(c_ulong, 1);
}
