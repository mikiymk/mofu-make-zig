const root = @import("root.zig");

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

extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
extern fn putchar(__c: c_int) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strdup(__s: [*c]const u8) [*c]u8;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

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

const @"error" = @import("output.zig").@"error";

pub const o_default: c_int = 0;
pub const o_env: c_int = 1;
pub const o_file: c_int = 2;
pub const o_env_override: c_int = 3;
pub const o_command: c_int = 4;
pub const o_override: c_int = 5;
pub const o_automatic: c_int = 6;
pub const o_invalid: c_int = 7;

pub const enum_variable_origin = c_int;
// src/variable.h:68:18: warning: struct demoted to opaque type - has bitfield
pub const struct_variable = opaque {};
extern fn reset_makeflags(origin: enum_variable_origin) void;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;

extern fn next_token([*c]const u8) [*c]u8;

extern var reading_file: [*c]const floc;

extern var warn_undefined_variables_flag: c_int;

extern var default_shell: [*c]const u8;

extern var cmd_prefix: u8;

const struct_pattern_var = extern struct {
    next: ?*struct_pattern_var = @import("std").mem.zeroes(?*struct_pattern_var),
    suffix: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
    variable: struct_variable = @import("std").mem.zeroes(struct_variable),
};

extern var makelevel: c_uint;
extern var version_string: [*c]u8;
extern var remote_description: [*c]u8;
extern var make_host: [*c]u8;

const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_find_slot(ht: [*c]struct_hash_table, key: ?*const anyopaque) [*c]?*anyopaque;

extern fn hash_insert_at(ht: [*c]struct_hash_table, item: ?*const anyopaque, slot: ?*const anyopaque) ?*anyopaque;

extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;
extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;

extern fn jhash(key: [*c]const u8, n: c_int) c_uint;

extern var hash_deleted_item: ?*anyopaque;

const f_simple: c_int = 1;

const enum_variable_flavor = c_uint;

const v_ifset: c_int = 3;

extern var variable_buffer: [*c]u8;

const variable_buffer_output = @import("expand.zig").variable_buffer_output;
const install_variable_buffer = @import("expand.zig").install_variable_buffer;
const restore_variable_buffer = @import("expand.zig").restore_variable_buffer;

const func_shell_base = @import("function.zig").func_shell_base;

extern var export_all_variables: c_int;

pub extern var env_recursion: c_ulonglong;

pub var variable_changenum: c_ulong = 0;

pub var pattern_vars: ?*struct_pattern_var = null;
pub var last_pattern_vars: [256]?*struct_pattern_var = @import("std").mem.zeroes([256]?*struct_pattern_var);

pub export fn create_pattern_var(arg_target: [*c]const u8, arg_suffix: [*c]const u8) ?*struct_pattern_var {
    var target = arg_target;
    _ = &target;
    var suffix = arg_suffix;
    _ = &suffix;
    var len: usize = strlen(target);
    _ = &len;
    var p: ?*struct_pattern_var = @as(?*struct_pattern_var, @ptrCast(@alignCast(xcalloc(@sizeOf(struct_pattern_var)))));
    _ = &p;
    if (pattern_vars != null) {
        if ((len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) and (last_pattern_vars[len] != null)) {
            p.*.next = last_pattern_vars[len].*.next;
            last_pattern_vars[len].*.next = p;
        } else {
            var v: [*c]?*struct_pattern_var = undefined;
            _ = &v;
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
    p.*.suffix = suffix + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 256))))) {
        last_pattern_vars[len] = p;
    }
    return p;
}

pub fn lookup_pattern_var(arg_start: ?*struct_pattern_var, arg_target: [*c]const u8, arg_targlen: usize) callconv(.C) ?*struct_pattern_var {
    var start = arg_start;
    _ = &start;
    var target = arg_target;
    _ = &target;
    var targlen = arg_targlen;
    _ = &targlen;
    var p: ?*struct_pattern_var = undefined;
    _ = &p;
    {
        p = if (start != null) start.*.next else pattern_vars;
        while (p != null) : (p = p.*.next) {
            var stem: [*c]const u8 = undefined;
            _ = &stem;
            var stemlen: usize = undefined;
            _ = &stemlen;
            if (p.*.len > targlen) continue;
            stem = target + @as(usize, @bitCast(@as(isize, @intCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p.*.suffix) -% @intFromPtr(p.*.target))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))))));
            stemlen = (targlen -% p.*.len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            if ((stem > target) and !(strncmp(p.*.target, target, @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(stem) -% @intFromPtr(target))), @sizeOf(u8))))) == @as(c_int, 0))) continue;
            if ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, @bitCast(@as(c_uint, stem[stemlen])))) and ((@as(c_int, @bitCast(@as(c_uint, p.*.suffix.*))) == @as(c_int, '\x00')) or (((&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) == (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])) or ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, @bitCast(@as(c_uint, (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]).*)))) and ((@as(c_int, @bitCast(@as(c_uint, (&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]).*))) == @as(c_int, '\x00')) or !(strcmp((&p.*.suffix[@as(c_uint, @intCast(@as(c_int, 1)))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (&stem[stemlen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))))) break;
        }
    }
    return p;
}

pub fn variable_hash_1(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(keyv));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(key.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash(_key_, @as(c_int, @bitCast(key.*.length))))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn variable_hash_2(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(keyv));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = key.*.name;
            _ = key.*.length;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn variable_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(xv));
    _ = &x;
    var y: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(yv));
    _ = &y;
    var result: c_int = @as(c_int, @bitCast(x.*.length -% y.*.length));
    _ = &result;
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.length))));
    }
    return 0;
}

pub const VARIABLE_BUCKETS = @as(c_int, 523);
pub const PERFILE_VARIABLE_BUCKETS = @as(c_int, 23);
pub const SMALL_SCOPE_VARIABLE_BUCKETS = @as(c_int, 13);

pub var global_variable_set: struct_variable_set = @import("std").mem.zeroes(struct_variable_set);
pub var global_setlist: struct_variable_set_list = struct_variable_set_list{
    .next = null,
    .set = &global_variable_set,
    .next_is_parent = @as(c_int, 0),
};
pub extern var current_variable_set_list: [*c]struct_variable_set_list;

pub export fn init_hash_global_variable_set() void {
    hash_init(&global_variable_set.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 523)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
}

// src/variable.c:208:19: warning: local variable has opaque type

// src/variable.c:201:1: warning: unable to translate function, demoted to extern
pub extern fn define_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_recursive: c_int, arg_set: [*c]struct_variable_set, arg_flocp: [*c]const floc) ?*struct_variable;

pub fn free_variable_name_and_value(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var v: ?*struct_variable = @as(?*struct_variable, @ptrCast(@volatileCast(@constCast(item))));
    _ = &v;
    free(@as(?*anyopaque, @ptrCast(v.*.name)));
    free(@as(?*anyopaque, @ptrCast(v.*.value)));
}

pub export fn free_variable_set(arg_list: [*c]struct_variable_set_list) void {
    var list = arg_list;
    _ = &list;
    hash_map(&list.*.set.*.table, &free_variable_name_and_value);
    hash_free(&list.*.set.*.table, @as(c_int, 1));
    free(@as(?*anyopaque, @ptrCast(list.*.set)));
    free(@as(?*anyopaque, @ptrCast(list)));
}

// src/variable.c:338:19: warning: local variable has opaque type

// src/variable.c:332:1: warning: unable to translate function, demoted to extern
pub extern fn undefine_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_origin: enum_variable_origin, arg_set: [*c]struct_variable_set) void;

pub inline fn EXPANSION_INCREMENT(_l: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.div(_l, @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500)) {
    _ = &_l;
    return (@import("std").zig.c_translation.MacroArithmetic.div(_l, @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500);
}

pub fn lookup_special_var(arg_var: ?*struct_variable) callconv(.C) ?*struct_variable {
    var @"var" = arg_var;
    _ = &@"var";
    const last_changenum = struct {
        var static: c_ulong = 0;
    };
    _ = &last_changenum;
    if ((variable_changenum != last_changenum.static) and ((@"var".*.name == ".VARIABLES".ptr) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".VARIABLES".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".VARIABLES" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0))))) {
        var max: usize = ((strlen(@"var".*.value) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))));
        _ = &max;
        var len: usize = undefined;
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var vp: [*c]?*struct_variable = @as([*c]?*struct_variable, @ptrCast(@alignCast(global_variable_set.table.ht_vec)));
        _ = &vp;
        var end: [*c]?*struct_variable = &vp[global_variable_set.table.ht_size];
        _ = &end;
        @"var".*.value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(@"var".*.value)), max))));
        p = @"var".*.value;
        len = 0;
        while (vp < end) : (vp += 1) if (!((vp.* == null) or (@as(?*anyopaque, @ptrCast(vp.*)) == hash_deleted_item))) {
            var v: ?*struct_variable = vp.*;
            _ = &v;
            var l: c_int = @as(c_int, @bitCast(v.*.length));
            _ = &l;
            len +%= @as(usize, @bitCast(@as(c_long, l + @as(c_int, 1))));
            if (len > max) {
                var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@"var".*.value))), @sizeOf(u8))));
                _ = &off;
                max +%= @as(usize, @bitCast(@as(c_long, (@divTrunc(l + @as(c_int, 1), @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500))));
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
        (p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* = '\x00';
        last_changenum.static = variable_changenum;
    }
    return @"var";
}

// src/variable.c:463:19: warning: local variable has opaque type

// src/variable.c:460:1: warning: unable to translate function, demoted to extern
pub extern fn lookup_variable(arg_name: [*c]const u8, arg_length: usize) ?*struct_variable;

pub export fn lookup_variable_for_file(arg_name: [*c]const u8, arg_length: usize, arg_file_1: ?*struct_file) ?*struct_variable {
    var name = arg_name;
    _ = &name;
    var length = arg_length;
    _ = &length;
    var file_1 = arg_file_1;
    _ = &file_1;
    var @"var": ?*struct_variable = undefined;
    _ = &@"var";
    var savev: [*c]struct_variable_set_list = undefined;
    _ = &savev;
    if (file_1 == @as(?*struct_file, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) return lookup_variable(name, length);
    savev = current_variable_set_list;
    current_variable_set_list = file_1.*.variables;
    @"var" = lookup_variable(name, length);
    current_variable_set_list = savev;
    return @"var";
}

// src/variable.c:574:19: warning: local variable has opaque type

// src/variable.c:571:1: warning: unable to translate function, demoted to extern
pub extern fn lookup_variable_in_set(arg_name: [*c]const u8, arg_length: usize, arg_set: [*c]const struct_variable_set) ?*struct_variable;

pub export fn initialize_file_variables(arg_file_1: ?*struct_file, arg_reading: c_int) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var reading = arg_reading;
    _ = &reading;
    var l: [*c]struct_variable_set_list = file_1.*.variables;
    _ = &l;
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
        var p: ?*struct_pattern_var = undefined;
        _ = &p;
        const targlen: usize = strlen(file_1.*.name);
        _ = &targlen;
        p = lookup_pattern_var(null, file_1.*.name, targlen);
        if (p != null) {
            var global: [*c]struct_variable_set_list = current_variable_set_list;
            _ = &global;
            file_1.*.pat_variables = create_new_variable_set();
            current_variable_set_list = file_1.*.pat_variables;
            while (true) {
                var v: ?*struct_variable = undefined;
                _ = &v;
                if (@as(c_int, @bitCast(p.*.variable.flavor)) == f_simple) {
                    v = define_variable_in_set(p.*.variable.name, strlen(p.*.variable.name), p.*.variable.value, p.*.variable.origin, @as(c_int, 0), current_variable_set_list.*.set, &p.*.variable.fileinfo);
                    v.*.flavor = @as(c_uint, @bitCast(f_simple));
                } else {
                    v = do_variable_definition(&p.*.variable.fileinfo, p.*.variable.name, p.*.variable.value, p.*.variable.origin, p.*.variable.flavor, @as(c_int, 1));
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

pub export fn create_new_variable_set() [*c]struct_variable_set_list {
    var setlist: [*c]struct_variable_set_list = undefined;
    _ = &setlist;
    var set: [*c]struct_variable_set = undefined;
    _ = &set;
    set = @as([*c]struct_variable_set, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set)))));
    hash_init(&set.*.table, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 13)))), &variable_hash_1, &variable_hash_2, &variable_hash_cmp);
    setlist = @as([*c]struct_variable_set_list, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_variable_set_list)))));
    setlist.*.set = set;
    setlist.*.next = current_variable_set_list;
    setlist.*.next_is_parent = 0;
    return setlist;
}

pub export fn push_new_variable_scope() [*c]struct_variable_set_list {
    current_variable_set_list = create_new_variable_set();
    if (current_variable_set_list.*.next == (&global_setlist)) {
        var set: [*c]struct_variable_set = current_variable_set_list.*.set;
        _ = &set;
        current_variable_set_list.*.set = global_setlist.set;
        global_setlist.set = set;
        current_variable_set_list.*.next = global_setlist.next;
        global_setlist.next = current_variable_set_list;
        current_variable_set_list = &global_setlist;
    }
    return current_variable_set_list;
}

pub export fn pop_variable_scope() void {
    var setlist: [*c]struct_variable_set_list = undefined;
    _ = &setlist;
    var set: [*c]struct_variable_set = undefined;
    _ = &set;
    _ = @as(c_int, 0);
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
    hash_free(&set.*.table, @as(c_int, 1));
    free(@as(?*anyopaque, @ptrCast(set)));
}

pub fn merge_variable_sets(arg_to_set: [*c]struct_variable_set, arg_from_set: [*c]struct_variable_set) callconv(.C) void {
    var to_set = arg_to_set;
    _ = &to_set;
    var from_set = arg_from_set;
    _ = &from_set;
    var from_var_slot: [*c]?*struct_variable = @as([*c]?*struct_variable, @ptrCast(@alignCast(from_set.*.table.ht_vec)));
    _ = &from_var_slot;
    var from_var_end: [*c]?*struct_variable = from_var_slot + from_set.*.table.ht_size;
    _ = &from_var_end;
    var inc: c_int = if (to_set == (&global_variable_set)) @as(c_int, 1) else @as(c_int, 0);
    _ = &inc;
    while (from_var_slot < from_var_end) : (from_var_slot += 1) if (!((from_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(from_var_slot.*)) == hash_deleted_item))) {
        var from_var: ?*struct_variable = from_var_slot.*;
        _ = &from_var;
        var to_var_slot: [*c]?*struct_variable = @as([*c]?*struct_variable, @ptrCast(@alignCast(hash_find_slot(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var_slot.*))))));
        _ = &to_var_slot;
        if ((to_var_slot.* == null) or (@as(?*anyopaque, @ptrCast(to_var_slot.*)) == hash_deleted_item)) {
            _ = hash_insert_at(&to_set.*.table, @as(?*const anyopaque, @ptrCast(from_var)), @as(?*const anyopaque, @ptrCast(to_var_slot)));
            variable_changenum +%= @as(c_ulong, @bitCast(@as(c_long, inc)));
        } else {
            free(@as(?*anyopaque, @ptrCast(from_var.*.value)));
            free(@as(?*anyopaque, @ptrCast(from_var)));
        }
    };
}

pub export fn merge_variable_set_lists(arg_setlist0: [*c][*c]struct_variable_set_list, arg_setlist1: [*c]struct_variable_set_list) void {
    var setlist0 = arg_setlist0;
    _ = &setlist0;
    var setlist1 = arg_setlist1;
    _ = &setlist1;
    var to: [*c]struct_variable_set_list = setlist0.*;
    _ = &to;
    var last0: [*c]struct_variable_set_list = null;
    _ = &last0;
    if (!(setlist1 != null) or (setlist1 == (&global_setlist))) return;
    if (to != null) {
        while (to != (&global_setlist)) {
            if (to == setlist1) return;
            to = to.*.next;
        }
        to = setlist0.*;
        while ((setlist1 != (&global_setlist)) and (to != (&global_setlist))) {
            var from: [*c]struct_variable_set_list = setlist1;
            _ = &from;
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

pub export fn define_automatic_variables() void {
    var v: ?*struct_variable = undefined;
    _ = &v;
    var buf: [200]u8 = undefined;
    _ = &buf;
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%u", makelevel);
    _ = define_variable_in_set("MAKELEVEL", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_env)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%s%s%s", version_string, if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) "" else "-", if ((remote_description == null) or (@as(c_int, @bitCast(@as(c_uint, remote_description[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) "" else remote_description);
    _ = define_variable_in_set("MAKE_VERSION", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("MAKE_HOST", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), make_host, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    v = define_variable_in_set("SHELL", @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), default_shell, @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    if (((@as(c_int, @bitCast(@as(c_uint, v.*.value.*))) == @as(c_int, '\x00')) or (@as(c_int, @bitCast(v.*.origin)) == o_env)) or (@as(c_int, @bitCast(v.*.origin)) == o_env_override)) {
        free(@as(?*anyopaque, @ptrCast(v.*.value)));
        v.*.origin = @as(c_uint, @bitCast(o_file));
        v.*.value = xstrdup(default_shell);
    }
    v = define_variable_in_set("MAKEFILES", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "", @as(c_uint, @bitCast(o_default)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    v.*.@"export" = @as(c_uint, @bitCast(v_ifset));
    _ = define_variable_in_set("@D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $@))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("%D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $%))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("*D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $*))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("<D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $<))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("?D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $?))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("^D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $^))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("+D", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(patsubst %/,%,$(dir $+))", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("@F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $@)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("%F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $%)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("*F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $*)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("<F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $<)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("?F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $?)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("^F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $^)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    _ = define_variable_in_set("+F", @sizeOf([3]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), "$(notdir $+)", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 1), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
}

pub fn should_export(arg_v: ?*const struct_variable) callconv(.C) c_int {
    var v = arg_v;
    _ = &v;
    while (true) {
        switch (@as(c_int, @bitCast(v.*.@"export"))) {
            @as(c_int, 1) => break,
            @as(c_int, 2) => return 0,
            @as(c_int, 3) => {
                if (@as(c_int, @bitCast(v.*.origin)) == o_default) return 0;
                break;
            },
            @as(c_int, 0) => {
                if ((@as(c_int, @bitCast(v.*.origin)) == o_default) or (@as(c_int, @bitCast(v.*.origin)) == o_automatic)) return 0;
                if (!(v.*.exportable != 0)) return 0;
                if (((!(export_all_variables != 0) and (@as(c_int, @bitCast(v.*.origin)) != o_command)) and (@as(c_int, @bitCast(v.*.origin)) != o_env)) and (@as(c_int, @bitCast(v.*.origin)) != o_env_override)) return 0;
                break;
            },
            else => {},
        }
        break;
    }
    return 1;
}

// src/variable.c:1149:13: warning: TODO implement translation of stmt class GotoStmtClass

// src/variable.c:1051:1: warning: unable to translate function, demoted to extern
pub extern fn target_environment(arg_file_1: ?*struct_file, arg_recursive: c_int) [*c][*c]u8;

pub fn set_special_var(arg_var: ?*struct_variable, arg_origin: enum_variable_origin) callconv(.C) ?*struct_variable {
    var @"var" = arg_var;
    _ = &@"var";
    var origin = arg_origin;
    _ = &origin;
    if ((@"var".*.name == "MAKEFLAGS".ptr) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, "MAKEFLAGS".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "MAKEFLAGS" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        reset_makeflags(origin);
    } else if ((@"var".*.name == ".RECIPEPREFIX".ptr) or ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, @bitCast(@as(c_uint, ".RECIPEPREFIX".*)))) and ((@as(c_int, @bitCast(@as(c_uint, @"var".*.name.*))) == @as(c_int, '\x00')) or !(strcmp(@"var".*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), ".RECIPEPREFIX" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        cmd_prefix = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, @"var".*.value[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) @as(c_int, '\t') else @as(c_int, @bitCast(@as(c_uint, @"var".*.value[@as(c_uint, @intCast(@as(c_int, 0)))])))))));
    }
    return @"var";
}

pub fn shell_result(arg_p: [*c]const u8) callconv(.C) [*c]u8 {
    var p = arg_p;
    _ = &p;
    var buf: [*c]u8 = undefined;
    _ = &buf;
    var len: usize = undefined;
    _ = &len;
    var args: [2][*c]u8 = undefined;
    _ = &args;
    var result: [*c]u8 = undefined;
    _ = &result;
    install_variable_buffer(&buf, &len);
    args[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]u8, @ptrCast(@volatileCast(@constCast(p))));
    args[@as(c_uint, @intCast(@as(c_int, 1)))] = null;
    _ = variable_buffer_output(func_shell_base(variable_buffer, @as([*c][*c]u8, @ptrCast(@alignCast(&args))), @as(c_int, 0)), "\x00", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    result = strdup(variable_buffer);
    restore_variable_buffer(buf, len);
    return result;
}

// src/variable.c:1348:9: warning: TODO implement translation of stmt class GotoStmtClass

// src/variable.c:1292:1: warning: unable to translate function, demoted to extern
pub extern fn do_variable_definition(arg_flocp: [*c]const floc, arg_varname: [*c]const u8, arg_value: [*c]const u8, arg_origin: enum_variable_origin, arg_flavor: enum_variable_flavor, arg_target_var: c_int) ?*struct_variable;

// src/variable.c:1694:15: warning: TODO implement translation of stmt class GotoStmtClass

// src/variable.c:1610:1: warning: unable to translate function, demoted to extern
pub extern fn parse_variable_definition(arg_str: [*c]const u8, arg_var: ?*struct_variable) [*c]u8;

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/variable.c:1762:1: warning: unable to translate function, demoted to extern
pub extern fn assign_variable_definition(arg_v: ?*struct_variable, arg_line: [*c]const u8) ?*struct_variable;

// src/variable.c:1798:19: warning: local variable has opaque type

// src/variable.c:1795:1: warning: unable to translate function, demoted to extern
pub extern fn try_variable_definition(arg_flocp: [*c]const floc, arg_line: [*c]const u8, arg_origin: enum_variable_origin, arg_target_var: c_int) ?*struct_variable;

pub const struct_defined_vars = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    len: usize = @import("std").mem.zeroes(usize),
};

pub const defined_vars: [11]struct_defined_vars = [11]struct_defined_vars{
    struct_defined_vars{
        .name = "MAKECMDGOALS",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_RESTARTS",
        .len = @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_TERMOUT",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKE_TERMERR",
        .len = @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "MAKEOVERRIDES",
        .len = @sizeOf([14]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = ".DEFAULT",
        .len = @sizeOf([9]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "-*-command-variables-*-",
        .len = @sizeOf([24]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "-*-eval-flags-*-",
        .len = @sizeOf([17]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "VPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = "GPATH",
        .len = @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))),
    },
    struct_defined_vars{
        .name = null,
        .len = @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))),
    },
};

pub export fn warn_undefined(arg_name: [*c]const u8, arg_len: usize) void {
    var name = arg_name;
    _ = &name;
    var len = arg_len;
    _ = &len;
    if (warn_undefined_variables_flag != 0) {
        var dp: [*c]const struct_defined_vars = undefined;
        _ = &dp;
        {
            dp = @as([*c]const struct_defined_vars, @ptrCast(@alignCast(&defined_vars)));
            while (dp.*.name != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (dp += 1) if ((dp.*.len == len) and (memcmp(@as(?*const anyopaque, @ptrCast(dp.*.name)), @as(?*const anyopaque, @ptrCast(name)), len) == @as(c_int, 0))) return;
        }
        @"error"(reading_file, len, gettext("warning: undefined variable '%.*s'"), @as(c_int, @bitCast(@as(c_uint, @truncate(len)))), name);
    }
}

pub fn print_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(item));
    _ = &v;
    var prefix: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(arg)));
    _ = &prefix;
    var origin: [*c]const u8 = undefined;
    _ = &origin;
    while (true) {
        switch (@as(c_int, @bitCast(v.*.origin))) {
            @as(c_int, 6) => {
                origin = gettext("automatic");
                break;
            },
            @as(c_int, 0) => {
                origin = gettext("default");
                break;
            },
            @as(c_int, 1) => {
                origin = gettext("environment");
                break;
            },
            @as(c_int, 2) => {
                origin = gettext("makefile");
                break;
            },
            @as(c_int, 3) => {
                origin = gettext("environment under -e");
                break;
            },
            @as(c_int, 4) => {
                origin = gettext("command line");
                break;
            },
            @as(c_int, 5) => {
                origin = gettext("'override' directive");
                break;
            },
            @as(c_int, 7) => {
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
    if ((@as(c_int, @bitCast(v.*.recursive)) != 0) and (strchr(v.*.value, @as(c_int, '\n')) != null)) {
        _ = printf("define %s\n%s\nendef\n", v.*.name, v.*.value);
    } else {
        var p: [*c]u8 = undefined;
        _ = &p;
        _ = printf("%s %s= ", v.*.name, if (@as(c_int, @bitCast(v.*.recursive)) != 0) if (@as(c_int, @bitCast(v.*.append)) != 0) "+" else "" else ":");
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

pub fn print_auto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(item));
    _ = &v;
    if (@as(c_int, @bitCast(v.*.origin)) == o_automatic) {
        print_variable(item, arg);
    }
}

pub fn print_noauto_variable(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var v: ?*const struct_variable = @as(?*const struct_variable, @ptrCast(item));
    _ = &v;
    if (@as(c_int, @bitCast(v.*.origin)) != o_automatic) {
        print_variable(item, arg);
    }
}

pub fn print_variable_set(arg_set: [*c]struct_variable_set, arg_prefix: [*c]const u8, arg_pauto: c_int) callconv(.C) void {
    var set = arg_set;
    _ = &set;
    var prefix = arg_prefix;
    _ = &prefix;
    var pauto = arg_pauto;
    _ = &pauto;
    hash_map_arg(&set.*.table, if (pauto != 0) &print_auto_variable else &print_variable, @as(?*anyopaque, @ptrCast(@volatileCast(@constCast(prefix)))));
    _ = fputs(gettext("# variable set hash-table stats:\n"), stdout);
    _ = fputs("# ", stdout);
    hash_print_stats(&set.*.table, stdout);
    _ = putc(@as(c_int, '\n'), stdout);
}

pub export fn print_variable_data_base() void {
    _ = puts(gettext("\n# Variables\n"));
    print_variable_set(&global_variable_set, "", @as(c_int, 0));
    _ = puts(gettext("\n# Pattern-specific Variable Values"));
    {
        var p: ?*struct_pattern_var = undefined;
        _ = &p;
        var rules: c_uint = 0;
        _ = &rules;
        {
            p = pattern_vars;
            while (p != null) : (p = p.*.next) {
                rules +%= 1;
                _ = printf("\n%s :\n", p.*.target);
                print_variable(@as(?*const anyopaque, @ptrCast(&p.*.variable)), @as(?*anyopaque, @ptrCast("# ")));
            }
        }
        if (rules == @as(c_uint, @bitCast(@as(c_int, 0)))) {
            _ = puts(gettext("\n# No pattern-specific variable values."));
        } else {
            _ = printf(gettext("\n# %u pattern-specific variable values"), rules);
        }
    }
}

pub export fn print_file_variables(arg_file_1: ?*const struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (file_1.*.variables != null) {
        print_variable_set(file_1.*.variables.*.set, "# ", @as(c_int, 1));
    }
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/variable.c:2004:1: warning: unable to translate function, demoted to extern
pub extern fn print_target_variables(arg_file_1: ?*const struct_file) void;
