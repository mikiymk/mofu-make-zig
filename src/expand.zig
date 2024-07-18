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

extern var environ: [*c][*c]u8;

extern fn free(__ptr: ?*anyopaque) void;

extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

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
const struct_file = @import("filedef.zig").struct_file;
const floc = @import("makeint.zig").floc;

const fatal = @import("output.zig").fatal;

const struct_variable = @import("variable.zig").struct_variable;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;

extern var reading_file: [*c]const floc;

extern var db_level: c_int;

extern var env_recursion: c_ulonglong;
extern var current_variable_set_list: [*c]struct_variable_set_list;

extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;

extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) ?*struct_variable;

extern fn warn_undefined(name: [*c]const u8, length: usize) void;

pub extern var expanding_var: [*c][*c]const floc;

pub const VARIABLE_BUFFER_ZONE = @as(c_int, 5);

pub var variable_buffer_length: usize = @import("std").mem.zeroes(usize);

pub extern var variable_buffer: [*c]u8;

pub export fn variable_buffer_output(arg_ptr: [*c]u8, arg_string: [*c]const u8, arg_length: usize) [*c]u8 {
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

pub export fn initialize_variable_output() [*c]u8 {
    if (variable_buffer == null) {
        variable_buffer_length = 200;
        variable_buffer = @as([*c]u8, @ptrCast(@alignCast(xmalloc(variable_buffer_length))));
        variable_buffer[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    }
    return variable_buffer;
}

pub export fn recursively_expand_for_file(arg_v: ?*struct_variable, arg_file_1: ?*struct_file) [*c]u8 {
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
    if ((@as(c_int, @bitCast(v.*.expanding)) != 0) and (env_recursion != 0)) {
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
        value = allocated_variable_expand_for_file(v.*.value, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
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

pub fn reference_variable(arg_o: [*c]u8, arg_name: [*c]const u8, arg_length: usize) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var v: ?*struct_variable = undefined;
    _ = &v;
    var value: [*c]u8 = undefined;
    _ = &value;
    v = lookup_variable(name, length);
    if (v == null) {
        warn_undefined(name, length);
    }
    if ((v == null) or ((@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00')) and !(v.*.append != 0))) return o;
    value = if (@as(c_int, @bitCast(v.*.recursive)) != 0) recursively_expand_for_file(v, null) else v.*.value;
    o = variable_buffer_output(o, value, strlen(value));
    if (v.*.recursive != 0) {
        free(@as(?*anyopaque, @ptrCast(value)));
    }
    return o;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/expand.c:218:1: warning: unable to translate function, demoted to extern
pub extern fn variable_expand_string(arg_line: [*c]u8, arg_string: [*c]const u8, arg_length: usize) [*c]u8;

pub export fn variable_expand(arg_line: [*c]const u8) [*c]u8 {
    var line = arg_line;
    _ = &line;
    return variable_expand_string(null, line, @as(c_ulong, 18446744073709551615));
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/expand.c:451:1: warning: unable to translate function, demoted to extern
pub extern fn expand_argument(arg_str: [*c]const u8, arg_end: [*c]const u8) [*c]u8;

pub export fn variable_expand_for_file(arg_line: [*c]const u8, arg_file_1: ?*struct_file) [*c]u8 {
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

pub fn variable_append(arg_name: [*c]const u8, arg_length: usize, arg_set: [*c]const struct_variable_set_list, arg_local: c_int) callconv(.C) [*c]u8 {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var set = arg_set;
    _ = &set;
    var local = arg_local;
    _ = &local;
    var v: ?*const struct_variable = undefined;
    _ = &v;
    var buf: [*c]u8 = null;
    _ = &buf;
    var nextlocal: c_int = undefined;
    _ = &nextlocal;
    if (!(set != null)) return initialize_variable_output();
    nextlocal = @intFromBool((local != 0) and (set.*.next_is_parent == @as(c_int, 0)));
    v = lookup_variable_in_set(name, length, set.*.set);
    if (!(v != null) or (!(local != 0) and (@as(c_int, @bitCast(v.*.private_var)) != 0))) return variable_append(name, length, set.*.next, nextlocal);
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

pub fn allocated_variable_append(arg_v: ?*const struct_variable) callconv(.C) [*c]u8 {
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

pub export fn allocated_variable_expand_for_file(arg_line: [*c]const u8, arg_file_1: ?*struct_file) [*c]u8 {
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

pub export fn install_variable_buffer(arg_bufp: [*c][*c]u8, arg_lenp: [*c]usize) void {
    var bufp = arg_bufp;
    _ = &bufp;
    var lenp = arg_lenp;
    _ = &lenp;
    bufp.* = variable_buffer;
    lenp.* = variable_buffer_length;
    variable_buffer = null;
    _ = initialize_variable_output();
}

pub export fn restore_variable_buffer(arg_buf: [*c]u8, arg_len: usize) void {
    var buf = arg_buf;
    _ = &buf;
    var len = arg_len;
    _ = &len;
    free(@as(?*anyopaque, @ptrCast(variable_buffer)));
    variable_buffer = buf;
    variable_buffer_length = len;
}
