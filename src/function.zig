const ptrdiff_t = c_long;

const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;

const __pid_t = c_int;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const pid_t = __pid_t;

const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct_stat = extern struct {
    st_dev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_ino: __ino_t = @import("std").mem.zeroes(__ino_t),
    st_nlink: __nlink_t = @import("std").mem.zeroes(__nlink_t),
    st_mode: __mode_t = @import("std").mem.zeroes(__mode_t),
    st_uid: __uid_t = @import("std").mem.zeroes(__uid_t),
    st_gid: __gid_t = @import("std").mem.zeroes(__gid_t),
    __pad0: c_int = @import("std").mem.zeroes(c_int),
    st_rdev: __dev_t = @import("std").mem.zeroes(__dev_t),
    st_size: __off_t = @import("std").mem.zeroes(__off_t),
    st_blksize: __blksize_t = @import("std").mem.zeroes(__blksize_t),
    st_blocks: __blkcnt_t = @import("std").mem.zeroes(__blkcnt_t),
    st_atim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_mtim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    st_ctim: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    __glibc_reserved: [3]__syscall_slong_t = @import("std").mem.zeroes([3]__syscall_slong_t),
};

extern fn stat(noalias __file: [*c]const u8, noalias __buf: [*c]struct_stat) c_int;

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn __errno_location() [*c]c_int;

extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;

extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;

extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;

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
// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
const struct_file = opaque {};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

const o_override: c_int = 5;
const o_automatic: c_int = 6;

const enum_variable_origin = c_int;
// src/variable.h:68:18: warning: struct demoted to opaque type - has bitfield
const struct_variable = opaque {};

extern fn make_lltoa(c_longlong, [*c]u8) [*c]u8;

extern fn xmalloc(usize) ?*anyopaque;
extern fn xcalloc(usize) ?*anyopaque;
extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn xstrndup([*c]const u8, usize) [*c]u8;
extern fn find_next_token([*c][*c]const u8, [*c]usize) [*c]u8;
extern fn next_token([*c]const u8) [*c]u8;
extern fn end_of_token([*c]const u8) [*c]u8;

extern fn alpha_compare(?*const anyopaque, ?*const anyopaque) c_int;

extern fn find_percent([*c]u8) [*c]u8;

extern var expanding_var: [*c][*c]const floc;
const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

extern var command_count: c_ulong;

extern var starting_directory: [*c]u8;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;
extern fn hash_load(ht: [*c]struct_hash_table, item_table: ?*anyopaque, cardinality: c_ulong, size: c_ulong) void;

extern fn hash_find_item(ht: [*c]struct_hash_table, key: ?*const anyopaque) ?*anyopaque;
extern fn hash_insert(ht: [*c]struct_hash_table, item: ?*const anyopaque) ?*anyopaque;

extern fn hash_free(ht: [*c]struct_hash_table, free_items: c_int) void;

extern fn jhash(key: [*c]const u8, n: c_int) c_uint;
extern fn jhash_string(key: [*c]const u8) c_uint;

extern var current_variable_set_list: [*c]struct_variable_set_list;

extern fn variable_buffer_output(ptr: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: ?*struct_file) [*c]u8;
extern fn expand_argument(str: [*c]const u8, end: [*c]const u8) [*c]u8;
extern fn variable_expand_string(line: [*c]u8, string: [*c]const u8, length: usize) [*c]u8;

extern fn install_variable_buffer(bufp: [*c][*c]u8, lenp: [*c]usize) void;
extern fn restore_variable_buffer(buf: [*c]u8, len: usize) void;

extern fn push_new_variable_scope() [*c]struct_variable_set_list;
extern fn pop_variable_scope() void;

extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;

extern fn define_variable_in_set(name: [*c]const u8, length: usize, value: [*c]const u8, origin: enum_variable_origin, recursive: c_int, set: [*c]struct_variable_set, flocp: [*c]const floc) ?*struct_variable;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn eval_buffer(buffer: [*c]u8, floc: [*c]const floc) void;

// src/function.c:41:18: warning: struct demoted to opaque type - has bitfield
pub const struct_function_table_entry = opaque {};
pub const function_table_entry = struct_function_table_entry;

pub fn function_table_entry_hash_1(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: ?*const struct_function_table_entry = @as(?*const struct_function_table_entry, @ptrCast(keyv));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(key.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash(_key_, @as(c_int, @bitCast(@as(c_uint, key.*.len)))))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn function_table_entry_hash_2(arg_keyv: ?*const anyopaque) callconv(.C) c_ulong {
    var keyv = arg_keyv;
    _ = &keyv;
    var key: ?*const struct_function_table_entry = @as(?*const struct_function_table_entry, @ptrCast(keyv));
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = key.*.name;
            _ = key.*.len;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn function_table_entry_hash_cmp(arg_xv: ?*const anyopaque, arg_yv: ?*const anyopaque) callconv(.C) c_int {
    var xv = arg_xv;
    _ = &xv;
    var yv = arg_yv;
    _ = &yv;
    var x: ?*const struct_function_table_entry = @as(?*const struct_function_table_entry, @ptrCast(xv));
    _ = &x;
    var y: ?*const struct_function_table_entry = @as(?*const struct_function_table_entry, @ptrCast(yv));
    _ = &y;
    var result: c_int = @as(c_int, @bitCast(@as(c_uint, x.*.len))) - @as(c_int, @bitCast(@as(c_uint, y.*.len)));
    _ = &result;
    if (result != 0) return result;
    while (true) {
        return if (x.*.name == y.*.name) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(x.*.name)), @as(?*const anyopaque, @ptrCast(y.*.name)), @as(c_ulong, @bitCast(@as(c_ulong, x.*.len))));
    }
    return 0;
}

pub var function_table: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);

pub export fn subst_expand(arg_o: [*c]u8, arg_text: [*c]const u8, arg_subst: [*c]const u8, arg_replace: [*c]const u8, arg_slen: usize, arg_rlen: usize, arg_by_word: c_int) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var subst = arg_subst;
    _ = &subst;
    var replace = arg_replace;
    _ = &replace;
    var slen = arg_slen;
    _ = &slen;
    var rlen = arg_rlen;
    _ = &rlen;
    var by_word = arg_by_word;
    _ = &by_word;
    var t: [*c]const u8 = text;
    _ = &t;
    var p: [*c]const u8 = undefined;
    _ = &p;
    if ((slen == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and !(by_word != 0)) {
        o = variable_buffer_output(o, t, strlen(t));
        if (rlen > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            o = variable_buffer_output(o, replace, rlen);
        }
        return o;
    }
    while (true) {
        if ((by_word != 0) and (slen == @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) {
            p = end_of_token(next_token(t));
        } else {
            p = strstr(t, subst);
            if (p == null) {
                o = variable_buffer_output(o, t, strlen(t));
                return o;
            }
        }
        if (p > t) {
            o = variable_buffer_output(o, t, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(t))), @sizeOf(u8)))));
        }
        if ((by_word != 0) and (((p > text) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
            @as(u8, @bitCast((blk: {
                const tmp = -@as(c_int, 1);
                if (tmp >= 0) break :blk p + @as(usize, @intCast(tmp)) else break :blk p - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))
        ]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) or !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p[slen]))]))) & ((@as(c_int, 2) | @as(c_int, 4)) | @as(c_int, 1))) != @as(c_int, 0)))) {
            o = variable_buffer_output(o, subst, slen);
        } else if (rlen > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            o = variable_buffer_output(o, replace, rlen);
        }
        t = p + slen;
        if (!(@as(c_int, @bitCast(@as(c_uint, t.*))) != @as(c_int, '\x00'))) break;
    }
    return o;
}

pub export fn patsubst_expand_pat(arg_o: [*c]u8, arg_text: [*c]const u8, arg_pattern: [*c]const u8, arg_replace: [*c]const u8, arg_pattern_percent: [*c]const u8, arg_replace_percent: [*c]const u8) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var pattern = arg_pattern;
    _ = &pattern;
    var replace = arg_replace;
    _ = &replace;
    var pattern_percent = arg_pattern_percent;
    _ = &pattern_percent;
    var replace_percent = arg_replace_percent;
    _ = &replace_percent;
    var pattern_prepercent_len: usize = undefined;
    _ = &pattern_prepercent_len;
    var pattern_postpercent_len: usize = undefined;
    _ = &pattern_postpercent_len;
    var replace_prepercent_len: usize = undefined;
    _ = &replace_prepercent_len;
    var replace_postpercent_len: usize = undefined;
    _ = &replace_postpercent_len;
    var t: [*c]const u8 = undefined;
    _ = &t;
    var len: usize = undefined;
    _ = &len;
    var doneany: c_int = 0;
    _ = &doneany;
    if (replace_percent != null) {
        replace_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(replace_percent) -% @intFromPtr(replace))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))));
        replace_postpercent_len = strlen(replace_percent);
    } else {
        replace_prepercent_len = strlen(replace);
        replace_postpercent_len = 0;
    }
    if (!(pattern_percent != null)) return subst_expand(o, text, pattern, replace, strlen(pattern), strlen(replace), @as(c_int, 1));
    pattern_prepercent_len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(pattern_percent) -% @intFromPtr(pattern))), @sizeOf(u8)) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))));
    pattern_postpercent_len = strlen(pattern_percent);
    while ((blk: {
        const tmp = find_next_token(&text, &len);
        t = tmp;
        break :blk tmp;
    }) != null) {
        var fail: c_int = 0;
        _ = &fail;
        if (len < (pattern_prepercent_len +% pattern_postpercent_len)) {
            fail = 1;
        }
        if ((!(fail != 0) and (pattern_prepercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) and (((@as(c_int, @bitCast(@as(c_uint, t.*))) != @as(c_int, @bitCast(@as(c_uint, pattern.*)))) or (@as(c_int, @bitCast(@as(c_uint, t[pattern_prepercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = -@as(c_int, 2);
            if (tmp >= 0) break :blk pattern_percent + @as(usize, @intCast(tmp)) else break :blk pattern_percent - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))))) or !(strncmp(t + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), pattern + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), pattern_prepercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            fail = 1;
        }
        if ((!(fail != 0) and (pattern_postpercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) and (((@as(c_int, @bitCast(@as(c_uint, t[len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent[pattern_postpercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))])))) or (@as(c_int, @bitCast(@as(c_uint, t[len -% pattern_postpercent_len]))) != @as(c_int, @bitCast(@as(c_uint, pattern_percent.*))))) or !(strncmp(&t[len -% pattern_postpercent_len], pattern_percent, pattern_postpercent_len -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)))) {
            fail = 1;
        }
        if (fail != 0) {
            o = variable_buffer_output(o, t, len);
        } else {
            o = variable_buffer_output(o, replace, replace_prepercent_len);
            if (replace_percent != null) {
                o = variable_buffer_output(o, t + pattern_prepercent_len, len -% (pattern_prepercent_len +% pattern_postpercent_len));
                o = variable_buffer_output(o, replace_percent, replace_postpercent_len);
            }
        }
        if (((fail != 0) or (replace_prepercent_len > @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) or ((replace_percent != null) and ((len +% replace_postpercent_len) > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))))) {
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
            doneany = 1;
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub export fn patsubst_expand(arg_o: [*c]u8, arg_text: [*c]const u8, arg_pattern: [*c]u8, arg_replace: [*c]u8) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var text = arg_text;
    _ = &text;
    var pattern = arg_pattern;
    _ = &pattern;
    var replace = arg_replace;
    _ = &replace;
    var pattern_percent: [*c]const u8 = find_percent(pattern);
    _ = &pattern_percent;
    var replace_percent: [*c]const u8 = find_percent(replace);
    _ = &replace_percent;
    if (replace_percent != null) {
        replace_percent += 1;
    }
    if (pattern_percent != null) {
        pattern_percent += 1;
    }
    return patsubst_expand_pat(o, text, pattern, replace, pattern_percent, replace_percent);
}

// src/function.c:274:31: warning: local variable has opaque type

// src/function.c:272:1: warning: unable to translate function, demoted to extern
pub extern fn lookup_function(arg_s: [*c]const u8) callconv(.C) ?*const struct_function_table_entry;

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/function.c:293:1: warning: unable to translate function, demoted to extern
pub extern fn pattern_matches(arg_pattern: [*c]const u8, arg_percent: [*c]const u8, arg_str: [*c]const u8) c_int;

pub fn find_next_argument(arg_startparen: u8, arg_endparen: u8, arg_ptr: [*c]const u8, arg_end: [*c]const u8) callconv(.C) [*c]u8 {
    var startparen = arg_startparen;
    _ = &startparen;
    var endparen = arg_endparen;
    _ = &endparen;
    var ptr = arg_ptr;
    _ = &ptr;
    var end = arg_end;
    _ = &end;
    var count: c_int = 0;
    _ = &count;
    while (ptr < end) : (ptr += 1) if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(ptr.*))]))) & (@as(c_int, 128) | @as(c_int, 1024))) != @as(c_int, 0))) continue else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, startparen)))) {
        count += 1;
    } else if (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, @bitCast(@as(c_uint, endparen)))) {
        count -= 1;
        if (count < @as(c_int, 0)) return null;
    } else if ((@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, ',')) and !(count != 0)) return @as([*c]u8, @ptrCast(@volatileCast(@constCast(ptr))));
    return null;
}

pub fn string_glob(arg_line: [*c]u8) callconv(.C) [*c]u8 {
    var line = arg_line;
    _ = &line;
    const result = struct {
        var static: [*c]u8 = null;
    };
    _ = &result;
    const length = struct {
        var static: usize = @import("std").mem.zeroes(usize);
    };
    _ = &length;
    var chain: [*c]struct_nameseq = undefined;
    _ = &chain;
    var idx: usize = undefined;
    _ = &idx;
    chain = @as([*c]struct_nameseq, @ptrCast(@alignCast(parse_file_seq(&line, @sizeOf(struct_nameseq), @as(c_int, 1), null, (@as(c_int, 1) | @as(c_int, 16)) | @as(c_int, 8)))));
    if (result.static == null) {
        length.static = 100;
        result.static = @as([*c]u8, @ptrCast(@alignCast(xmalloc(@as(usize, @bitCast(@as(c_long, @as(c_int, 100))))))));
    }
    idx = 0;
    while (chain != null) {
        var next: [*c]struct_nameseq = chain.*.next;
        _ = &next;
        var len: usize = strlen(chain.*.name);
        _ = &len;
        if (((idx +% len) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) > length.static) {
            length.static +%= (len +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
            result.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(result.static)), length.static))));
        }
        _ = memcpy(@as(?*anyopaque, @ptrCast(&result.static[idx])), @as(?*const anyopaque, @ptrCast(chain.*.name)), len);
        idx +%= len;
        result.static[
            blk: {
                const ref = &idx;
                const tmp = ref.*;
                ref.* +%= 1;
                break :blk tmp;
            }
        ] = ' ';
        free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(chain.*.name)))))));
        free(@as(?*anyopaque, @ptrCast(chain)));
        chain = next;
    }
    if (idx == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        result.static[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    } else {
        result.static[idx -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))] = '\x00';
    }
    return result.static;
}

pub fn func_patsubst(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    o = patsubst_expand(o, argv[@as(c_uint, @intCast(@as(c_int, 2)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))], argv[@as(c_uint, @intCast(@as(c_int, 1)))]);
    return o;
}

pub fn func_join(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var doneany: c_int = 0;
    _ = &doneany;
    var tp: [*c]const u8 = undefined;
    _ = &tp;
    var pp: [*c]const u8 = undefined;
    _ = &pp;
    var list1_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &list1_iterator;
    var list2_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    _ = &list2_iterator;
    while (true) {
        var len1: usize = undefined;
        _ = &len1;
        var len2: usize = undefined;
        _ = &len2;
        tp = find_next_token(&list1_iterator, &len1);
        if (tp != null) {
            o = variable_buffer_output(o, tp, len1);
        }
        pp = find_next_token(&list2_iterator, &len2);
        if (pp != null) {
            o = variable_buffer_output(o, pp, len2);
        }
        if ((tp != null) or (pp != null)) {
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
            doneany = 1;
        }
        if (!((tp != null) or (pp != null))) break;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub fn func_origin(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: ?*struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else {
        while (true) {
            switch (@as(c_int, @bitCast(v.*.origin))) {
                @as(c_int, 7) => {
                    abort();
                    break;
                },
                @as(c_int, 0) => {
                    o = variable_buffer_output(o, "default", @as(usize, @bitCast(@as(c_long, @as(c_int, 7)))));
                    break;
                },
                @as(c_int, 1) => {
                    o = variable_buffer_output(o, "environment", @as(usize, @bitCast(@as(c_long, @as(c_int, 11)))));
                    break;
                },
                @as(c_int, 2) => {
                    o = variable_buffer_output(o, "file", @as(usize, @bitCast(@as(c_long, @as(c_int, 4)))));
                    break;
                },
                @as(c_int, 3) => {
                    o = variable_buffer_output(o, "environment override", @as(usize, @bitCast(@as(c_long, @as(c_int, 20)))));
                    break;
                },
                @as(c_int, 4) => {
                    o = variable_buffer_output(o, "command line", @as(usize, @bitCast(@as(c_long, @as(c_int, 12)))));
                    break;
                },
                @as(c_int, 5) => {
                    o = variable_buffer_output(o, "override", @as(usize, @bitCast(@as(c_long, @as(c_int, 8)))));
                    break;
                },
                @as(c_int, 6) => {
                    o = variable_buffer_output(o, "automatic", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
                    break;
                },
                else => {},
            }
            break;
        }
    }
    return o;
}

pub fn func_flavor(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: ?*struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    _ = &v;
    if (v == null) {
        o = variable_buffer_output(o, "undefined", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else if (v.*.recursive != 0) {
        o = variable_buffer_output(o, "recursive", @as(usize, @bitCast(@as(c_long, @as(c_int, 9)))));
    } else {
        o = variable_buffer_output(o, "simple", @as(usize, @bitCast(@as(c_long, @as(c_int, 6)))));
    }
    return o;
}

pub fn func_notdir_suffix(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var list_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &list_iterator;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_suffix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 's'));
    _ = &is_suffix;
    var is_notdir: c_int = @intFromBool(!(is_suffix != 0));
    _ = &is_notdir;
    var stop: c_int = @as(c_int, 32768) | (if (is_suffix != 0) @as(c_int, 512) else @as(c_int, 0));
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != @as(c_int, 0))) {
            p -= 1;
        }
        if (p >= p2) {
            if (is_notdir != 0) {
                p += 1;
            } else if (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '.')) continue;
            o = variable_buffer_output(o, p, len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if (is_notdir != 0) {
            o = variable_buffer_output(o, p2, len);
        }
        if ((is_notdir != 0) or (p >= p2)) {
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
            doneany = 1;
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub fn func_basename_dir(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p3: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p3;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    var is_basename: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 'b'));
    _ = &is_basename;
    var is_dir: c_int = @intFromBool(!(is_basename != 0));
    _ = &is_dir;
    var stop: c_int = (@as(c_int, 32768) | (if (is_basename != 0) @as(c_int, 512) else @as(c_int, 0))) | @as(c_int, 1);
    _ = &stop;
    while ((blk: {
        const tmp = find_next_token(&p3, &len);
        p2 = tmp;
        break :blk tmp;
    }) != null) {
        var p: [*c]const u8 = (p2 + len) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &p;
        while ((p >= p2) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & stop) != @as(c_int, 0))) {
            p -= 1;
        }
        if ((p >= p2) and (is_dir != 0)) {
            o = variable_buffer_output(o, p2, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(blk: {
                const ref = &p;
                ref.* += 1;
                break :blk ref.*;
            }) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if ((p >= p2) and (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '.'))) {
            o = variable_buffer_output(o, p2, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(p2))), @sizeOf(u8)))));
        } else if (is_dir != 0) {
            o = variable_buffer_output(o, "./", @as(usize, @bitCast(@as(c_long, @as(c_int, 2)))));
        } else {
            o = variable_buffer_output(o, p2, len);
        }
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub fn func_addsuffix_addprefix(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var fixlen: usize = strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
    _ = &fixlen;
    var list_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    _ = &list_iterator;
    var is_addprefix: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@as(c_uint, @intCast(@as(c_int, 3)))]))) == @as(c_int, 'p'));
    _ = &is_addprefix;
    var is_addsuffix: c_int = @intFromBool(!(is_addprefix != 0));
    _ = &is_addsuffix;
    var doneany: c_int = 0;
    _ = &doneany;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (is_addprefix != 0) {
            o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], fixlen);
        }
        o = variable_buffer_output(o, p, len);
        if (is_addsuffix != 0) {
            o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], fixlen);
        }
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub fn func_subst(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    o = subst_expand(o, argv[@as(c_uint, @intCast(@as(c_int, 2)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))], argv[@as(c_uint, @intCast(@as(c_int, 1)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]), strlen(argv[@as(c_uint, @intCast(@as(c_int, 1)))]), @as(c_int, 0));
    return o;
}

pub fn func_firstword(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: usize = undefined;
    _ = &i;
    var words: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &words;
    var p: [*c]const u8 = find_next_token(&words, &i);
    _ = &p;
    if (p != null) {
        o = variable_buffer_output(o, p, i);
    }
    return o;
}

pub fn func_lastword(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: usize = undefined;
    _ = &i;
    var words: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &words;
    var p: [*c]const u8 = null;
    _ = &p;
    var t: [*c]const u8 = undefined;
    _ = &t;
    while ((blk: {
        const tmp = find_next_token(&words, &i);
        t = tmp;
        break :blk tmp;
    }) != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        p = t;
    }
    if (p != null) {
        o = variable_buffer_output(o, p, i);
    }
    return o;
}

pub fn func_words(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var i: c_uint = 0;
    _ = &i;
    var word_iterator: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &word_iterator;
    var buf: [22]u8 = undefined;
    _ = &buf;
    while (find_next_token(&word_iterator, null) != null) {
        i +%= 1;
    }
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%u", i);
    o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&buf))), strlen(@as([*c]u8, @ptrCast(@alignCast(&buf)))));
    return o;
}

pub export fn strip_whitespace(arg_begpp: [*c][*c]const u8, arg_endpp: [*c][*c]const u8) [*c]u8 {
    var begpp = arg_begpp;
    _ = &begpp;
    var endpp = arg_endpp;
    _ = &endpp;
    while ((begpp.* <= endpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(begpp.*.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) {
        begpp.* += 1;
    }
    while ((endpp.* >= begpp.*) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(endpp.*.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) {
        endpp.* -= 1;
    }
    return @as([*c]u8, @ptrCast(@volatileCast(@constCast(begpp.*))));
}

pub fn parse_numeric(arg_s: [*c]const u8, arg_msg: [*c]const u8) callconv(.C) c_longlong {
    var s = arg_s;
    _ = &s;
    var msg = arg_msg;
    _ = &msg;
    var beg: [*c]const u8 = s;
    _ = &beg;
    var end: [*c]const u8 = (s + strlen(s)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    _ = &end;
    var endp: [*c]u8 = undefined;
    _ = &endp;
    var num: c_longlong = undefined;
    _ = &num;
    _ = strip_whitespace(&beg, &end);
    if (beg > end) {
        fatal(expanding_var.*, strlen(msg), gettext("%s: empty value"), msg);
    }
    __errno_location().* = 0;
    num = strtoll(beg, &endp, @as(c_int, 10));
    if (__errno_location().* == @as(c_int, 34)) {
        fatal(expanding_var.*, strlen(msg) +% strlen(s), gettext("%s: '%s' out of range"), msg, s);
    } else if ((endp == @as([*c]u8, @ptrCast(@volatileCast(@constCast(beg))))) or (endp <= @as([*c]u8, @ptrCast(@volatileCast(@constCast(end)))))) {
        fatal(expanding_var.*, strlen(msg) +% strlen(s), "%s: '%s'", msg, s);
    }
    return num;
}

pub fn func_word(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var end_p: [*c]const u8 = undefined;
    _ = &end_p;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var i: c_longlong = undefined;
    _ = &i;
    i = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 0)))], gettext("invalid first argument to 'word' function"));
    if (i < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))))) {
        fatal(expanding_var.*, @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("first argument to 'word' function must be greater than 0"));
    }
    end_p = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    while ((blk: {
        const tmp = find_next_token(&end_p, null);
        p = tmp;
        break :blk tmp;
    }) != null) if ((blk: {
        const ref = &i;
        ref.* -= 1;
        break :blk ref.*;
    }) == @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) break;
    if (i == @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        o = variable_buffer_output(o, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end_p) -% @intFromPtr(p))), @sizeOf(u8)))));
    }
    return o;
}

pub fn func_wordlist(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var buf: [23]u8 = undefined;
    _ = &buf;
    var start: c_longlong = undefined;
    _ = &start;
    var stop: c_longlong = undefined;
    _ = &stop;
    var count: c_longlong = undefined;
    _ = &count;
    var badfirst: [*c]const u8 = gettext("invalid first argument to 'wordlist' function");
    _ = &badfirst;
    var badsecond: [*c]const u8 = gettext("invalid second argument to 'wordlist' function");
    _ = &badsecond;
    start = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 0)))], badfirst);
    if (start < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))))) {
        fatal(expanding_var.*, strlen(badfirst) +% strlen(make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badfirst, make_lltoa(start, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    stop = parse_numeric(argv[@as(c_uint, @intCast(@as(c_int, 1)))], badsecond);
    if (stop < @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        fatal(expanding_var.*, strlen(badsecond) +% strlen(make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf))))), "%s: '%s'", badsecond, make_lltoa(stop, @as([*c]u8, @ptrCast(@alignCast(&buf)))));
    }
    count = (stop - start) + @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 1))));
    if (count > @as(c_longlong, @bitCast(@as(c_longlong, @as(c_int, 0))))) {
        var p: [*c]const u8 = undefined;
        _ = &p;
        var end_p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
        _ = &end_p;
        while (((blk: {
            const tmp = find_next_token(&end_p, null);
            p = tmp;
            break :blk tmp;
        }) != null) and ((blk: {
            const ref = &start;
            ref.* -= 1;
            break :blk ref.*;
        }) != 0)) {}
        if (p != null) {
            while (((blk: {
                const ref = &count;
                ref.* -= 1;
                break :blk ref.*;
            }) != 0) and (find_next_token(&end_p, null) != null)) {}
            o = variable_buffer_output(o, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end_p) -% @intFromPtr(p))), @sizeOf(u8)))));
        }
    }
    return o;
}

pub fn func_findstring(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    if (strstr(argv[@as(c_uint, @intCast(@as(c_int, 1)))], argv[@as(c_uint, @intCast(@as(c_int, 0)))]) != null) {
        o = variable_buffer_output(o, argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    }
    return o;
}

pub fn func_foreach(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var varname: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &varname;
    var list: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
    _ = &list;
    var body: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
    _ = &body;
    var doneany: c_int = 0;
    _ = &doneany;
    var list_iterator: [*c]const u8 = list;
    _ = &list_iterator;
    var p: [*c]const u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var @"var": ?*struct_variable = undefined;
    _ = &@"var";
    var vp: [*c]u8 = next_token(varname);
    _ = &vp;
    end_of_token(vp)[@as(c_uint, @intCast(@as(c_int, 0)))] = '\x00';
    _ = push_new_variable_scope();
    @"var" = define_variable_in_set(vp, strlen(vp), "", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    while ((blk: {
        const tmp = find_next_token(&list_iterator, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        var result: [*c]u8 = null;
        _ = &result;
        free(@as(?*anyopaque, @ptrCast(@"var".*.value)));
        @"var".*.value = xstrndup(p, len);
        result = allocated_variable_expand_for_file(body, @as(?*struct_file, @ptrFromInt(@as(c_int, 0))));
        o = variable_buffer_output(o, result, strlen(result));
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        doneany = 1;
        free(@as(?*anyopaque, @ptrCast(result)));
    }
    if (doneany != 0) {
        o -= 1;
    }
    pop_variable_scope();
    free(@as(?*anyopaque, @ptrCast(varname)));
    free(@as(?*anyopaque, @ptrCast(list)));
    return o;
}

pub fn func_let(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var varnames: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &varnames;
    var list: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
    _ = &list;
    var body: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 2)))];
    _ = &body;
    var vp: [*c]const u8 = undefined;
    _ = &vp;
    var vp_next: [*c]const u8 = varnames;
    _ = &vp_next;
    var list_iterator: [*c]const u8 = list;
    _ = &list_iterator;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var vlen: usize = undefined;
    _ = &vlen;
    _ = push_new_variable_scope();
    vp = find_next_token(&vp_next, &vlen);
    while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
        vp_next += 1;
    }
    while (@as(c_int, @bitCast(@as(c_uint, vp_next.*))) != @as(c_int, '\x00')) {
        p = find_next_token(&list_iterator, &len);
        if (@as(c_int, @bitCast(@as(c_uint, list_iterator.*))) != @as(c_int, '\x00')) {
            list_iterator += 1;
            p[len] = '\x00';
        }
        _ = define_variable_in_set(vp, vlen, if (p != null) p else "", @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
        vp = find_next_token(&vp_next, &vlen);
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(vp_next.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            vp_next += 1;
        }
    }
    if (vp != null) {
        _ = define_variable_in_set(vp, vlen, next_token(list_iterator), @as(c_uint, @bitCast(o_automatic)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
    }
    o = variable_expand_string(o, body, @as(c_ulong, 18446744073709551615));
    pop_variable_scope();
    free(@as(?*anyopaque, @ptrCast(varnames)));
    free(@as(?*anyopaque, @ptrCast(list)));
    return o + strlen(o);
}

pub const struct_a_word = extern struct {
    chain: [*c]struct_a_word = @import("std").mem.zeroes([*c]struct_a_word),
    str: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    length: usize = @import("std").mem.zeroes(usize),
    matched: c_int = @import("std").mem.zeroes(c_int),
};
pub const a_word = struct_a_word;

pub fn a_word_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as([*c]const struct_a_word, @ptrCast(@alignCast(key))).*.str)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn a_word_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as([*c]const struct_a_word, @ptrCast(@alignCast(key))).*.str;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn a_word_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var ax: [*c]const struct_a_word = @as([*c]const struct_a_word, @ptrCast(@alignCast(x)));
    _ = &ax;
    var ay: [*c]const struct_a_word = @as([*c]const struct_a_word, @ptrCast(@alignCast(y)));
    _ = &ay;
    if (ax.*.length != ay.*.length) return if (ax.*.length > ay.*.length) @as(c_int, 1) else -@as(c_int, 1);
    while (true) {
        return if (ax.*.str == ay.*.str) @as(c_int, 0) else memcmp(@as(?*const anyopaque, @ptrCast(ax.*.str)), @as(?*const anyopaque, @ptrCast(ay.*.str)), ax.*.length);
    }
    return 0;
}

pub const struct_a_pattern = extern struct {
    str: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    percent: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    length: usize = @import("std").mem.zeroes(usize),
};
pub const a_pattern = struct_a_pattern;

pub fn func_filter_filterout(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var words: [*c]struct_a_word = undefined;
    _ = &words;
    var word_end: [*c]struct_a_word = undefined;
    _ = &word_end;
    var wp: [*c]struct_a_word = undefined;
    _ = &wp;
    var patterns: [*c]struct_a_pattern = undefined;
    _ = &patterns;
    var pat_end: [*c]struct_a_pattern = undefined;
    _ = &pat_end;
    var pp: [*c]struct_a_pattern = undefined;
    _ = &pp;
    var pat_count: c_ulong = 0;
    _ = &pat_count;
    var word_count: c_ulong = 0;
    _ = &word_count;
    var a_word_table: struct_hash_table = undefined;
    _ = &a_word_table;
    var is_filter: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, funcname[@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))]))) == @as(c_int, '\x00'));
    _ = &is_filter;
    var cp: [*c]const u8 = undefined;
    _ = &cp;
    var literals: c_int = 0;
    _ = &literals;
    var hashing: c_int = 0;
    _ = &hashing;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    var doneany: c_int = 0;
    _ = &doneany;
    cp = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    while ((blk: {
        const tmp = find_next_token(&cp, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        word_count +%= 1;
    }
    if (!(word_count != 0)) return o;
    words = @as([*c]struct_a_word, @ptrCast(@alignCast(xcalloc(word_count *% @sizeOf(struct_a_word)))));
    word_end = words + word_count;
    cp = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    while ((blk: {
        const tmp = find_next_token(&cp, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        pat_count +%= 1;
    }
    patterns = @as([*c]struct_a_pattern, @ptrCast(@alignCast(xcalloc(pat_count *% @sizeOf(struct_a_pattern)))));
    pat_end = patterns + pat_count;
    cp = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    pp = patterns;
    while ((blk: {
        const tmp = find_next_token(&cp, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, '\x00')) {
            cp += 1;
        }
        p[len] = '\x00';
        pp.*.str = p;
        pp.*.percent = find_percent(p);
        if (pp.*.percent == null) {
            literals += 1;
        }
        pp.*.length = strlen(pp.*.str);
        pp += 1;
    }
    cp = argv[@as(c_uint, @intCast(@as(c_int, 1)))];
    wp = words;
    while ((blk: {
        const tmp = find_next_token(&cp, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        if (@as(c_int, @bitCast(@as(c_uint, cp.*))) != @as(c_int, '\x00')) {
            cp += 1;
        }
        p[len] = '\x00';
        wp.*.str = p;
        wp.*.length = len;
        wp += 1;
    }
    hashing = @intFromBool((literals > @as(c_int, 1)) and ((@as(c_ulong, @bitCast(@as(c_long, literals))) *% word_count) >= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 10))))));
    if (hashing != 0) {
        hash_init(&a_word_table, word_count, &a_word_hash_1, &a_word_hash_2, &a_word_hash_cmp);
        {
            wp = words;
            while (wp < word_end) : (wp += 1) {
                var owp: [*c]struct_a_word = @as([*c]struct_a_word, @ptrCast(@alignCast(hash_insert(&a_word_table, @as(?*const anyopaque, @ptrCast(wp))))));
                _ = &owp;
                if (owp != null) {
                    wp.*.chain = owp;
                }
            }
        }
    }
    {
        pp = patterns;
        while (pp < pat_end) : (pp += 1) {
            if (pp.*.percent != null) {
                {
                    wp = words;
                    while (wp < word_end) : (wp += 1) {
                        wp.*.matched |= pattern_matches(pp.*.str, pp.*.percent, wp.*.str);
                    }
                }
            } else if (hashing != 0) {
                var a_word_key: struct_a_word = undefined;
                _ = &a_word_key;
                a_word_key.str = pp.*.str;
                a_word_key.length = pp.*.length;
                wp = @as([*c]struct_a_word, @ptrCast(@alignCast(hash_find_item(&a_word_table, @as(?*const anyopaque, @ptrCast(&a_word_key))))));
                while (wp != null) {
                    wp.*.matched |= @as(c_int, 1);
                    wp = wp.*.chain;
                }
            } else {
                wp = words;
                while (wp < word_end) : (wp += 1) {
                    wp.*.matched |= (wp.*.length == pp.*.length) and (memcmp(@as(?*const anyopaque, @ptrCast(pp.*.str)), @as(?*const anyopaque, @ptrCast(wp.*.str)), wp.*.length) == @as(c_int, 0));
                }
            }
        }
    }
    {
        wp = words;
        while (wp < word_end) : (wp += 1) if ((if (is_filter != 0) wp.*.matched else @intFromBool(!(wp.*.matched != 0))) != 0) {
            o = variable_buffer_output(o, wp.*.str, strlen(wp.*.str));
            o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
            doneany = 1;
        };
    }
    if (doneany != 0) {
        o -= 1;
    }
    if (hashing != 0) {
        hash_free(&a_word_table, @as(c_int, 0));
    }
    free(@as(?*anyopaque, @ptrCast(patterns)));
    free(@as(?*anyopaque, @ptrCast(words)));
    return o;
}

pub fn func_strip(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p;
    var doneany: c_int = 0;
    _ = &doneany;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) {
        var i: c_int = 0;
        _ = &i;
        var word_start: [*c]const u8 = undefined;
        _ = &word_start;
        while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) {
            p += 1;
        }
        word_start = p;
        {
            i = 0;
            while ((@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0))) : (_ = blk: {
                p += 1;
                break :blk blk_1: {
                    const ref = &i;
                    ref.* += 1;
                    break :blk_1 ref.*;
                };
            }) {}
        }
        if (!(i != 0)) break;
        o = variable_buffer_output(o, word_start, @as(usize, @bitCast(@as(c_long, i))));
        o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        doneany = 1;
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/function.c:1172:1: warning: unable to translate function, demoted to extern
pub extern fn func_error(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8;

pub fn func_sort(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var t: [*c]const u8 = undefined;
    _ = &t;
    var words: [*c][*c]u8 = undefined;
    _ = &words;
    var wordi: c_int = undefined;
    _ = &wordi;
    var p: [*c]u8 = undefined;
    _ = &p;
    var len: usize = undefined;
    _ = &len;
    t = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    wordi = 0;
    while ((blk: {
        const tmp = find_next_token(&t, null);
        p = tmp;
        break :blk tmp;
    }) != null) {
        t += 1;
        wordi += 1;
    }
    words = @as([*c][*c]u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_long, if (wordi == @as(c_int, 0)) @as(c_int, 1) else wordi))) *% @sizeOf([*c]u8)))));
    t = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    wordi = 0;
    while ((blk: {
        const tmp = find_next_token(&t, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        t += 1;
        p[len] = '\x00';
        (blk: {
            const tmp = blk_1: {
                const ref = &wordi;
                const tmp_2 = ref.*;
                ref.* += 1;
                break :blk_1 tmp_2;
            };
            if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = p;
    }
    if (wordi != 0) {
        var i: c_int = undefined;
        _ = &i;
        qsort(@as(?*anyopaque, @ptrCast(words)), @as(usize, @bitCast(@as(c_long, wordi))), @sizeOf([*c]u8), &alpha_compare);
        {
            i = 0;
            while (i < wordi) : (i += 1) {
                len = strlen((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*);
                if (((i == (wordi - @as(c_int, 1))) or (strlen((blk: {
                    const tmp = i + @as(c_int, 1);
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*) != len)) or (memcmp(@as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), @as(?*const anyopaque, @ptrCast((blk: {
                    const tmp = i + @as(c_int, 1);
                    if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*)), len) != 0)) {
                    o = variable_buffer_output(o, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk words + @as(usize, @intCast(tmp)) else break :blk words - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, len);
                    o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                }
            }
        }
        o -= 1;
    }
    free(@as(?*anyopaque, @ptrCast(words)));
    return o;
}

pub fn parse_textint(arg_number: [*c]const u8, arg_msg: [*c]const u8, arg_sign: [*c]c_int, arg_numstart: [*c][*c]const u8) callconv(.C) [*c]const u8 {
    var number = arg_number;
    _ = &number;
    var msg = arg_msg;
    _ = &msg;
    var sign = arg_sign;
    _ = &sign;
    var numstart = arg_numstart;
    _ = &numstart;
    var after_sign: [*c]const u8 = undefined;
    _ = &after_sign;
    var after_number: [*c]const u8 = undefined;
    _ = &after_number;
    var p: [*c]const u8 = next_token(number);
    _ = &p;
    var negative: c_int = @intFromBool(@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '-'));
    _ = &negative;
    var nonzero: c_int = undefined;
    _ = &nonzero;
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
        fatal(expanding_var.*, strlen(msg), gettext("%s: empty value"), msg);
    }
    p += @as(usize, @bitCast(@as(isize, @intCast((negative != 0) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '+'))))));
    after_sign = p;
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '0')) {
        p += 1;
    }
    numstart.* = p;
    while ((@as(c_uint, @bitCast(@as(c_uint, p.*))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) {
        p += 1;
    }
    after_number = p;
    nonzero = @intFromBool(numstart.* != after_number);
    sign.* = if (negative != 0) -nonzero else nonzero;
    if ((after_number == after_sign) or (@as(c_int, @bitCast(@as(c_uint, next_token(p).*))) != @as(c_int, '\x00'))) {
        fatal(expanding_var.*, strlen(msg) +% strlen(number), "%s: '%s'", msg, number);
    }
    return after_number;
}

pub fn func_intcmp(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var lsign: c_int = undefined;
    _ = &lsign;
    var rsign: c_int = undefined;
    _ = &rsign;
    var lnum: [*c]const u8 = undefined;
    _ = &lnum;
    var rnum: [*c]const u8 = undefined;
    _ = &rnum;
    var lhs_str: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    _ = &lhs_str;
    var rhs_str: [*c]u8 = expand_argument(argv[@as(c_uint, @intCast(@as(c_int, 1)))], null);
    _ = &rhs_str;
    var llim: [*c]const u8 = parse_textint(lhs_str, gettext("non-numeric first argument to 'intcmp' function"), &lsign, &lnum);
    _ = &llim;
    var rlim: [*c]const u8 = parse_textint(rhs_str, gettext("non-numeric second argument to 'intcmp' function"), &rsign, &rnum);
    _ = &rlim;
    var llen: ptrdiff_t = @divExact(@as(c_long, @bitCast(@intFromPtr(llim) -% @intFromPtr(lnum))), @sizeOf(u8));
    _ = &llen;
    var rlen: ptrdiff_t = @divExact(@as(c_long, @bitCast(@intFromPtr(rlim) -% @intFromPtr(rnum))), @sizeOf(u8));
    _ = &rlen;
    var cmp: c_int = lsign - rsign;
    _ = &cmp;
    if (cmp == @as(c_int, 0)) {
        cmp = @intFromBool(llen > rlen) - @intFromBool(llen < rlen);
        if (cmp == @as(c_int, 0)) {
            cmp = memcmp(@as(?*const anyopaque, @ptrCast(lnum)), @as(?*const anyopaque, @ptrCast(rnum)), @as(c_ulong, @bitCast(llen)));
        }
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
    if (!(argv.* != null) and (cmp == @as(c_int, 0))) {
        if (lsign < @as(c_int, 0)) {
            o = variable_buffer_output(o, "-", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
        }
        o = variable_buffer_output(o, lnum - @as(usize, @bitCast(@as(isize, @intCast(!(lsign != 0))))), @as(usize, @bitCast(llen + @as(ptrdiff_t, @intFromBool(!(lsign != 0))))));
    }
    free(@as(?*anyopaque, @ptrCast(lhs_str)));
    free(@as(?*anyopaque, @ptrCast(rhs_str)));
    if ((argv.* != null) and (cmp >= @as(c_int, 0))) {
        argv += 1;
        if (((cmp > @as(c_int, 0)) and (argv.* != null)) and ((argv + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* != null)) {
            argv += 1;
        }
    }
    if (argv.* != null) {
        var expansion: [*c]u8 = expand_argument(argv.*, null);
        _ = &expansion;
        o = variable_buffer_output(o, expansion, strlen(expansion));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    return o;
}

pub fn func_if(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var begp: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &begp;
    var endp: [*c]const u8 = (begp + strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))])) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    _ = &endp;
    var result: c_int = 0;
    _ = &result;
    _ = strip_whitespace(&begp, &endp);
    if (begp <= endp) {
        var expansion: [*c]u8 = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        _ = &expansion;
        result = @intFromBool(@as(c_int, @bitCast(@as(c_uint, expansion[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    argv += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1) + @intFromBool(!(result != 0))))));
    if (argv.* != null) {
        var expansion: [*c]u8 = expand_argument(argv.*, null);
        _ = &expansion;
        o = variable_buffer_output(o, expansion, strlen(expansion));
        free(@as(?*anyopaque, @ptrCast(expansion)));
    }
    return o;
}

pub fn func_or(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    while (argv.* != null) : (argv += 1) {
        var begp: [*c]const u8 = argv.*;
        _ = &begp;
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &endp;
        var expansion: [*c]u8 = undefined;
        _ = &expansion;
        var result: usize = 0;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) continue;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        result = strlen(expansion);
        if (!(result != 0)) {
            free(@as(?*anyopaque, @ptrCast(expansion)));
            continue;
        }
        o = variable_buffer_output(o, expansion, result);
        free(@as(?*anyopaque, @ptrCast(expansion)));
        break;
    }
    return o;
}

pub fn func_and(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var expansion: [*c]u8 = undefined;
    _ = &expansion;
    while (true) {
        var begp: [*c]const u8 = argv.*;
        _ = &begp;
        var endp: [*c]const u8 = (begp + strlen(argv.*)) - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
        _ = &endp;
        var result: usize = undefined;
        _ = &result;
        _ = strip_whitespace(&begp, &endp);
        if (begp > endp) return o;
        expansion = expand_argument(begp, endp + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))));
        result = strlen(expansion);
        if (!(result != 0)) break;
        if ((blk: {
            const ref = &argv;
            ref.* += 1;
            break :blk ref.*;
        }).* != null) {
            free(@as(?*anyopaque, @ptrCast(expansion)));
        } else {
            o = variable_buffer_output(o, expansion, result);
            break;
        }
    }
    free(@as(?*anyopaque, @ptrCast(expansion)));
    return o;
}

pub fn func_wildcard(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]u8 = string_glob(argv[@as(c_uint, @intCast(@as(c_int, 0)))]);
    _ = &p;
    o = variable_buffer_output(o, p, strlen(p));
    return o;
}

pub fn func_eval(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var buf: [*c]u8 = undefined;
    _ = &buf;
    var len: usize = undefined;
    _ = &len;
    install_variable_buffer(&buf, &len);
    eval_buffer(argv[@as(c_uint, @intCast(@as(c_int, 0)))], null);
    restore_variable_buffer(buf, len);
    return o;
}

pub fn func_value(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var v: ?*struct_variable = lookup_variable(argv[@as(c_uint, @intCast(@as(c_int, 0)))], strlen(argv[@as(c_uint, @intCast(@as(c_int, 0)))]));
    _ = &v;
    if (v != null) {
        o = variable_buffer_output(o, v.*.value, strlen(v.*.value));
    }
    return o;
}

pub fn fold_newlines(arg_buffer: [*c]u8, arg_length: [*c]usize, arg_trim_newlines: c_int) callconv(.C) void {
    var buffer = arg_buffer;
    _ = &buffer;
    var length = arg_length;
    _ = &length;
    var trim_newlines = arg_trim_newlines;
    _ = &trim_newlines;
    var dst: [*c]u8 = buffer;
    _ = &dst;
    var src: [*c]u8 = buffer;
    _ = &src;
    var last_nonnl: [*c]u8 = buffer - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
    _ = &last_nonnl;
    src[length.*] = 0;
    while (@as(c_int, @bitCast(@as(c_uint, src.*))) != @as(c_int, '\x00')) : (src += 1) {
        if ((@as(c_int, @bitCast(@as(c_uint, src[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\r')) and (@as(c_int, @bitCast(@as(c_uint, src[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '\n'))) continue;
        if (@as(c_int, @bitCast(@as(c_uint, src.*))) == @as(c_int, '\n')) {
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        } else {
            last_nonnl = dst;
            (blk: {
                const ref = &dst;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = src.*;
        }
    }
    if (!(trim_newlines != 0) and (last_nonnl < (dst - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))))) {
        last_nonnl = dst - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
    }
    (blk: {
        const ref = &last_nonnl;
        ref.* += 1;
        break :blk ref.*;
    }).* = '\x00';
    length.* = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(last_nonnl) -% @intFromPtr(buffer))), @sizeOf(u8))));
}

pub export var shell_function_pid: pid_t = 0;

pub var shell_function_completed: c_int = @import("std").mem.zeroes(c_int);

pub export fn shell_completed(arg_exit_code: c_int, arg_exit_sig: c_int) void {
    var exit_code = arg_exit_code;
    _ = &exit_code;
    var exit_sig = arg_exit_sig;
    _ = &exit_sig;
    var buf: [22]u8 = undefined;
    _ = &buf;
    shell_function_pid = 0;
    if ((exit_sig == @as(c_int, 0)) and (exit_code == @as(c_int, 127))) {
        shell_function_completed = -@as(c_int, 1);
    } else {
        shell_function_completed = 1;
    }
    if ((exit_code == @as(c_int, 0)) and (exit_sig > @as(c_int, 0))) {
        exit_code = @as(c_int, 128) + exit_sig;
    }
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), "%d", exit_code);
    _ = define_variable_in_set(".SHELLSTATUS", @sizeOf([13]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as([*c]u8, @ptrCast(@alignCast(&buf))), @as(c_uint, @bitCast(o_override)), @as(c_int, 0), current_variable_set_list.*.set, @as([*c]floc, @ptrFromInt(@as(c_int, 0))));
}

// src/function.c:1841:28: warning: cannot initialize opaque type

// src/function.c:1839:1: warning: unable to translate function, demoted to extern
pub extern fn func_shell_base(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_trim_newlines: c_int) [*c]u8;

pub fn func_shell(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    return func_shell_base(o, argv, @as(c_int, 1));
}

pub inline fn IS_ABSOLUTE(n: anytype) @TypeOf(n[@as(usize, @intCast(@as(c_int, 0)))] == '/') {
    _ = &n;
    return n[@as(usize, @intCast(@as(c_int, 0)))] == '/';
}

pub const ROOT_LEN = @as(c_int, 1);

pub fn abspath(arg_name: [*c]const u8, arg_apath: [*c]u8) callconv(.C) [*c]u8 {
    var name = arg_name;
    _ = &name;
    var apath = arg_apath;
    _ = &apath;
    var dest: [*c]u8 = undefined;
    _ = &dest;
    var start: [*c]const u8 = undefined;
    _ = &start;
    var end: [*c]const u8 = undefined;
    _ = &end;
    var apath_limit: [*c]const u8 = undefined;
    _ = &apath_limit;
    var root_len: c_ulong = 1;
    _ = &root_len;
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) return null;
    apath_limit = apath + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4096)))));
    if (!(@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/'))) {
        if (!(starting_directory != null)) return null;
        _ = strcpy(apath, starting_directory);
        dest = strchr(apath, @as(c_int, '\x00'));
    } else {
        _ = memcpy(@as(?*anyopaque, @ptrCast(apath)), @as(?*const anyopaque, @ptrCast(name)), root_len);
        apath[root_len] = '\x00';
        dest = apath + root_len;
        name += @as([*c]const u8, @ptrFromInt(root_len));
    }
    {
        start = blk: {
            const tmp = name;
            end = tmp;
            break :blk tmp;
        };
        while (@as(c_int, @bitCast(@as(c_uint, start.*))) != @as(c_int, '\x00')) : (start = end) {
            var len: usize = undefined;
            _ = &len;
            while ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(start.*))]))) & @as(c_int, 32768)) != @as(c_int, 0)) {
                start += 1;
            }
            {
                end = start;
                while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(end.*))]))) & (@as(c_int, 32768) | @as(c_int, 1))) != @as(c_int, 0))) : (end += 1) {}
            }
            len = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(start))), @sizeOf(u8))));
            if (len == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) break else if ((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) {} else if (((len == @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.'))) and (@as(c_int, @bitCast(@as(c_uint, start[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '.'))) {
                if (dest > (apath + root_len)) {
                    dest -= 1;
                    while (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                        @as(u8, @bitCast((blk: {
                            const tmp = -@as(c_int, 1);
                            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*))
                    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) : (dest -= 1) {}
                }
            } else {
                if (!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
                    @as(u8, @bitCast((blk: {
                        const tmp = -@as(c_int, 1);
                        if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))
                ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
                    (blk: {
                        const ref = &dest;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '/';
                }
                if ((dest + len) >= @as([*c]u8, @ptrCast(@volatileCast(@constCast(apath_limit))))) return null;
                dest = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(dest)), @as(?*const anyopaque, @ptrCast(start)), len))));
                dest.* = '\x00';
            }
        }
    }
    if ((dest > (apath + root_len)) and ((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk dest + @as(usize, @intCast(tmp)) else break :blk dest - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        dest -= 1;
    }
    dest.* = '\x00';
    return apath;
}

pub fn func_realpath(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p;
    var path: [*c]const u8 = null;
    _ = &path;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&p, &len);
        path = tmp;
        break :blk tmp;
    }) != null) {
        if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) {
            var rp: [*c]u8 = undefined;
            _ = &rp;
            var st: struct_stat = undefined;
            _ = &st;
            var in: [4097]u8 = undefined;
            _ = &in;
            var out: [4097]u8 = undefined;
            _ = &out;
            _ = strncpy(@as([*c]u8, @ptrCast(@alignCast(&in))), path, len);
            in[len] = '\x00';
            while (true) {
                __errno_location().* = 0;
                rp = realpath(@as([*c]u8, @ptrCast(@alignCast(&in))), @as([*c]u8, @ptrCast(@alignCast(&out))));
                if (!((rp == null) and (__errno_location().* == @as(c_int, 4)))) break;
            }
            if (rp != null) {
                var r: c_int = undefined;
                _ = &r;
                while (((blk: {
                    const tmp = stat(@as([*c]u8, @ptrCast(@alignCast(&out))), &st);
                    r = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if (r == @as(c_int, 0)) {
                    o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&out))), strlen(@as([*c]u8, @ptrCast(@alignCast(&out)))));
                    o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                    doneany = 1;
                }
            }
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/function.c:2324:1: warning: unable to translate function, demoted to extern
pub extern fn func_file(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8;

pub fn func_abspath(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argv = arg_argv;
    _ = &argv;
    var funcname = arg_funcname;
    _ = &funcname;
    var p: [*c]const u8 = argv[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &p;
    var path: [*c]const u8 = null;
    _ = &path;
    var doneany: c_int = 0;
    _ = &doneany;
    var len: usize = 0;
    _ = &len;
    while ((blk: {
        const tmp = find_next_token(&p, &len);
        path = tmp;
        break :blk tmp;
    }) != null) {
        if (len < @as(usize, @bitCast(@as(c_long, @as(c_int, 4096))))) {
            var in: [4097]u8 = undefined;
            _ = &in;
            var out: [4097]u8 = undefined;
            _ = &out;
            _ = strncpy(@as([*c]u8, @ptrCast(@alignCast(&in))), path, len);
            in[len] = '\x00';
            if (abspath(@as([*c]u8, @ptrCast(@alignCast(&in))), @as([*c]u8, @ptrCast(@alignCast(&out)))) != null) {
                o = variable_buffer_output(o, @as([*c]u8, @ptrCast(@alignCast(&out))), strlen(@as([*c]u8, @ptrCast(@alignCast(&out)))));
                o = variable_buffer_output(o, " ", @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
                doneany = 1;
            }
        }
    }
    if (doneany != 0) {
        o -= 1;
    }
    return o;
}

pub const FT_ENTRY = @compileError("unable to translate C expr: unexpected token '{'");
// src/function.c:2489:9

// src/function.c:2490:3: warning: cannot initialize opaque type

// src/function.c:2492:36: warning: unable to translate variable initializer, demoted to extern
pub extern var function_table_init: [38]struct_function_table_entry;

pub const FUNCTION_TABLE_ENTRIES = @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.sizeof(function_table_init), @import("std").zig.c_translation.sizeof(struct_function_table_entry));

pub fn expand_builtin_function(arg_o: [*c]u8, arg_argc: c_uint, arg_argv: [*c][*c]u8, arg_entry_p: ?*const struct_function_table_entry) callconv(.C) [*c]u8 {
    var o = arg_o;
    _ = &o;
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    var entry_p = arg_entry_p;
    _ = &entry_p;
    var p: [*c]u8 = undefined;
    _ = &p;
    if (argc < @as(c_uint, @bitCast(@as(c_uint, entry_p.*.minimum_args)))) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("insufficient number of arguments (%u) to function '%s'"), argc, entry_p.*.name);
    }
    if (!(argc != 0) and !(entry_p.*.alloc_fn != 0)) return o;
    if (!(entry_p.*.fptr.func_ptr != null)) {
        fatal(expanding_var.*, strlen(entry_p.*.name), gettext("unimplemented on this platform: function '%s'"), entry_p.*.name);
    }
    if (entry_p.*.adds_command != 0) {
        command_count +%= 1;
    }
    if (!(entry_p.*.alloc_fn != 0)) return entry_p.*.fptr.func_ptr.?(o, argv, entry_p.*.name);
    p = entry_p.*.fptr.alloc_func_ptr.?(entry_p.*.name, argc, argv);
    if (p != null) {
        o = variable_buffer_output(o, p, strlen(p));
        free(@as(?*anyopaque, @ptrCast(p)));
    }
    return o;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/function.c:2591:1: warning: unable to translate function, demoted to extern
pub extern fn handle_function(arg_op: [*c][*c]u8, arg_stringp: [*c][*c]const u8) c_int;

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/function.c:2711:1: warning: unable to translate function, demoted to extern
pub extern fn func_call(arg_o: [*c]u8, arg_argv: [*c][*c]u8, arg_funcname: [*c]const u8) callconv(.C) [*c]u8;

pub const define_new_function = @compileError("src/function.c:2803:1");

pub export fn hash_init_function_table() void {
    hash_init(&function_table, (@sizeOf([38]struct_function_table_entry) / @sizeOf(struct_function_table_entry)) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))), &function_table_entry_hash_1, &function_table_entry_hash_2, &function_table_entry_hash_cmp);
    hash_load(&function_table, @as(?*anyopaque, @ptrCast(@as(?*struct_function_table_entry, @ptrCast(&function_table_init)))), @sizeOf([38]struct_function_table_entry) / @sizeOf(struct_function_table_entry), @sizeOf(struct_function_table_entry));
}
