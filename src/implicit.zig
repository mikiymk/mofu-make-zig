const __off_t = c_long;
const __off64_t = c_long;

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

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
const struct_dep = opaque {};
// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
const struct_commands = opaque {};

// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
const struct_file = opaque {};

extern fn print_spaces(c_uint) void;

extern fn ar_name([*c]const u8) c_int;

const struct_rule = extern struct {
    next: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    targets: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    lens: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    suffixes: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    deps: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep),
    cmds: ?*struct_commands = @import("std").mem.zeroes(?*struct_commands),
    _defn: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    num: c_ushort = @import("std").mem.zeroes(c_ushort),
    terminal: u8 = @import("std").mem.zeroes(u8),
    in_use: u8 = @import("std").mem.zeroes(u8),
};

extern var db_level: c_int;

pub export fn try_implicit_rule(arg_file_1: ?*struct_file, arg_depth: c_uint) c_int {
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

// src/implicit.c:101:11: warning: TODO implement translation of stmt class GotoStmtClass

// src/implicit.c:75:1: warning: unable to translate function, demoted to extern
pub extern fn get_next_word(arg_buffer: [*c]const u8, arg_length: [*c]usize) callconv(.C) [*c]const u8;

// src/implicit.c:160:18: warning: struct demoted to opaque type - has bitfield
pub const struct_patdeps = opaque {};
pub const patdeps = struct_patdeps;

pub const struct_tryrule = extern struct {
    rule: [*c]struct_rule = @import("std").mem.zeroes([*c]struct_rule),
    stemlen: usize = @import("std").mem.zeroes(usize),
    matches: c_uint = @import("std").mem.zeroes(c_uint),
    order: c_uint = @import("std").mem.zeroes(c_uint),
    checked_lastslash: u8 = @import("std").mem.zeroes(u8),
};
pub const tryrule = struct_tryrule;

pub export fn stemlen_compare(arg_v1: ?*const anyopaque, arg_v2: ?*const anyopaque) c_int {
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

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/implicit.c:210:1: warning: unable to translate function, demoted to extern
pub extern fn pattern_search(arg_file_1: ?*struct_file, arg_archive: c_int, arg_depth: c_uint, arg_recursions: c_uint, arg_allow_compat_rules: c_int) callconv(.C) c_int;
