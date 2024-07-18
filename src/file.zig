const __intmax_t = c_long;
const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;

const __time_t = c_long;

const time_t = __time_t;

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
extern var stderr: [*c]FILE;

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn putchar(__c: c_int) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;

extern fn __errno_location() [*c]c_int;

extern fn unlink(__name: [*c]const u8) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const struct_dep = @import("dep.zig").struct_dep;
// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
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

const struct_file = @import("filedef.zig").struct_file;
const floc = @import("makeint.zig").floc;

const @"error" = @import("output.zig").@"error";
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

const struct_variable = @import("variable.zig").struct_variable;

extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn end_of_token([*c]const u8) [*c]u8;

extern fn strcache_iscached(str: [*c]const u8) c_int;

extern var just_print_flag: c_int;
extern var run_silent: c_int;
extern var ignore_errors_flag: c_int;

extern var question_flag: c_int;
extern var touch_flag: c_int;

extern var no_builtin_rules_flag: c_int;

extern var not_parallel: c_int;
extern var second_expansion: c_int;

extern var cmd_prefix: u8;
extern var no_intermediates: c_uint;

const hash_map_func_t = ?*const fn (?*const anyopaque) callconv(.C) void;
const hash_map_arg_func_t = ?*const fn (?*const anyopaque, ?*anyopaque) callconv(.C) void;

extern fn hash_init(ht: [*c]struct_hash_table, size: c_ulong, hash_1: hash_func_t, hash_2: hash_func_t, hash_cmp: hash_cmp_func_t) void;

extern fn hash_map(ht: [*c]struct_hash_table, map: hash_map_func_t) void;
extern fn hash_map_arg(ht: [*c]struct_hash_table, map: hash_map_arg_func_t, arg: ?*anyopaque) void;
extern fn hash_print_stats(ht: [*c]struct_hash_table, out_FILE: [*c]FILE) void;

extern fn jhash_string(key: [*c]const u8) c_uint;
extern var hash_deleted_item: ?*anyopaque;

const struct_nameseq = @import("dep.zig").struct_nameseq;

const enum_cmd_state_39 = c_uint;

extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: ?*const struct_dep) ?*struct_dep;

const us_none: c_int = 1;

const print_commands = @import("commands.zig").print_commands;

const set_file_variables = @import("commands.zig").set_file_variables;
const variable_expand = @import("expand.zig").variable_expand;
const variable_expand_for_file = @import("expand.zig").variable_expand_for_file;

extern fn initialize_file_variables(file: ?*struct_file, reading: c_int) void;
extern fn print_file_variables(file: ?*const struct_file) void;
extern fn print_target_variables(file: ?*const struct_file) void;

extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;

extern fn lookup_variable_in_set(name: [*c]const u8, length: usize, set: [*c]const struct_variable_set) ?*struct_variable;

extern var export_all_variables: c_int;
extern var db_level: c_int;

extern fn shuffle_deps_recursive(g: ?*struct_dep) void;

pub extern var snapped_deps: c_int;

pub fn file_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(@as(?*const struct_file, @ptrCast(key)).*.hname)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn file_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = @as(?*const struct_file, @ptrCast(key)).*.hname;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn file_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    while (true) {
        return if (@as(?*const struct_file, @ptrCast(x)).*.hname == @as(?*const struct_file, @ptrCast(y)).*.hname) @as(c_int, 0) else strcmp(@as(?*const struct_file, @ptrCast(x)).*.hname, @as(?*const struct_file, @ptrCast(y)).*.hname);
    }
    return 0;
}

pub var files: struct_hash_table = @import("std").mem.zeroes(struct_hash_table);

pub var all_secondary: c_int = 0;

// src/file.c:75:15: warning: local variable has opaque type

// src/file.c:72:1: warning: unable to translate function, demoted to extern
pub extern fn lookup_file(arg_name: [*c]const u8) ?*struct_file;

// src/file.c:151:15: warning: local variable has opaque type

// src/file.c:146:1: warning: unable to translate function, demoted to extern
pub extern fn enter_file(arg_name: [*c]const u8) ?*struct_file;

// src/file.c:210:15: warning: local variable has opaque type

// src/file.c:208:1: warning: unable to translate function, demoted to extern
pub extern fn rehash_file(arg_from_file: ?*struct_file, arg_to_hname: [*c]const u8) void;

pub export fn rename_file(arg_from_file: ?*struct_file, arg_to_hname: [*c]const u8) void {
    var from_file = arg_from_file;
    _ = &from_file;
    var to_hname = arg_to_hname;
    _ = &to_hname;
    rehash_file(from_file, to_hname);
    while (from_file != null) {
        from_file.*.name = from_file.*.hname;
        from_file = from_file.*.prev;
    }
}

pub export fn remove_intermediates(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    var file_slot: [*c]?*struct_file = undefined;
    _ = &file_slot;
    var file_end: [*c]?*struct_file = undefined;
    _ = &file_end;
    var doneany: c_int = 0;
    _ = &doneany;
    if ((((question_flag != 0) or (touch_flag != 0)) or (all_secondary != 0)) or (no_intermediates != 0)) return;
    if ((sig != 0) and (just_print_flag != 0)) return;
    file_slot = @as([*c]?*struct_file, @ptrCast(@alignCast(files.ht_vec)));
    file_end = file_slot + files.ht_size;
    while (file_slot < file_end) : (file_slot += 1) if (!((file_slot.* == null) or (@as(?*anyopaque, @ptrCast(file_slot.*)) == hash_deleted_item))) {
        var f: ?*struct_file = file_slot.*;
        _ = &f;
        if (((((@as(c_int, @bitCast(f.*.intermediate)) != 0) and ((@as(c_int, @bitCast(f.*.dontcare)) != 0) or !(f.*.precious != 0))) and !(f.*.secondary != 0)) and !(f.*.notintermediate != 0)) and !(f.*.cmd_target != 0)) {
            var status: c_int = undefined;
            _ = &status;
            if (@as(c_int, @bitCast(f.*.update_status)) == us_none) continue;
            if (just_print_flag != 0) {
                status = 0;
            } else {
                status = unlink(f.*.name);
                if ((status < @as(c_int, 0)) and (__errno_location().* == @as(c_int, 2))) continue;
            }
            if (!(f.*.dontcare != 0)) {
                if (sig != 0) {
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f.*.name), gettext("*** Deleting intermediate file '%s'"), f.*.name);
                } else {
                    if (!(doneany != 0)) while (true) {
                        if ((@as(c_int, 1) & db_level) != 0) {
                            _ = printf(gettext("Removing intermediate files...\n"));
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    };
                    if (!(run_silent != 0)) {
                        if (!(doneany != 0)) {
                            _ = fputs("rm ", stdout);
                            doneany = 1;
                        } else {
                            _ = putchar(@as(c_int, ' '));
                        }
                        _ = fputs(f.*.name, stdout);
                        _ = fflush(stdout);
                    }
                }
                if (status < @as(c_int, 0)) {
                    perror_with_name("\nunlink: ", f.*.name);
                    doneany = 0;
                }
            }
        }
    };
    if ((doneany != 0) and !(sig != 0)) {
        _ = putchar(@as(c_int, '\n'));
        _ = fflush(stdout);
    }
}

pub export fn split_prereqs(arg_p: [*c]u8) ?*struct_dep {
    var p = arg_p;
    _ = &p;
    var new: ?*struct_dep = @as(?*struct_dep, @ptrCast(parse_file_seq(&p, @sizeOf(struct_dep), @as(c_int, 256), null, @as(c_int, 64))));
    _ = &new;
    if (p.* != 0) {
        var ood: ?*struct_dep = undefined;
        _ = &ood;
        p += 1;
        ood = @as(?*struct_dep, @ptrCast(parse_file_seq(&p, @sizeOf(struct_dep), @as(c_int, 1), null, @as(c_int, 64))));
        if (!(new != null)) {
            new = ood;
        } else {
            var dp: ?*struct_dep = undefined;
            _ = &dp;
            {
                dp = new;
                while (dp.*.next != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (dp = dp.*.next) {}
            }
            dp.*.next = ood;
        }
        while (ood != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (ood = ood.*.next) {
            ood.*.ignore_mtime = 1;
        }
    }
    return new;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/file.c:476:1: warning: unable to translate function, demoted to extern
pub extern fn enter_prereqs(arg_deps: ?*struct_dep, arg_stem: [*c]const u8) ?*struct_dep;

pub export fn expand_deps(arg_f: ?*struct_file) void {
    var f = arg_f;
    _ = &f;
    var d: ?*struct_dep = undefined;
    _ = &d;
    var dp: [*c]?*struct_dep = undefined;
    _ = &dp;
    var fstem: [*c]const u8 = undefined;
    _ = &fstem;
    var initialized: c_int = 0;
    _ = &initialized;
    var changed_dep: c_int = 0;
    _ = &changed_dep;
    if (f.*.snapped != 0) return;
    f.*.snapped = 1;
    dp = &f.*.deps;
    d = f.*.deps;
    while (d != null) {
        var p: [*c]u8 = undefined;
        _ = &p;
        var new: ?*struct_dep = undefined;
        _ = &new;
        var next: ?*struct_dep = undefined;
        _ = &next;
        if (!(d.*.name != null) or !(d.*.need_2nd_expansion != 0)) {
            dp = &d.*.next;
            d = d.*.next;
            continue;
        }
        if (d.*.staticpattern != 0) {
            var cs: [*c]const u8 = d.*.name;
            _ = &cs;
            var nperc: usize = 0;
            _ = &nperc;
            while ((blk: {
                const tmp = strchr(cs, @as(c_int, '%'));
                cs = tmp;
                break :blk tmp;
            }) != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                nperc +%= 1;
                cs += 1;
            }
            if (nperc != 0) {
                var slen: usize = (strlen(d.*.name) +% nperc) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))));
                _ = &slen;
                var pcs: [*c]const u8 = d.*.name;
                _ = &pcs;
                var name: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(xmalloc(slen))));
                _ = &name;
                var s: [*c]u8 = name;
                _ = &s;
                cs = strchr(pcs, @as(c_int, '%'));
                while (cs != null) {
                    s = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(s)), @as(?*const anyopaque, @ptrCast(pcs)), @as(c_ulong, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(cs) -% @intFromPtr(pcs))), @sizeOf(u8))))))));
                    (blk: {
                        const ref = &s;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '$';
                    (blk: {
                        const ref = &s;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk tmp;
                    }).* = '*';
                    pcs = blk: {
                        const ref = &cs;
                        ref.* += 1;
                        break :blk ref.*;
                    };
                    cs = strchr(end_of_token(cs), @as(c_int, '%'));
                }
                _ = strcpy(s, pcs);
                free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(d.*.name)))))));
                d.*.name = name;
            }
        }
        if (!(initialized != 0)) {
            initialize_file_variables(f, @as(c_int, 0));
            initialized = 1;
        }
        set_file_variables(f, if (d.*.stem != null) d.*.stem else f.*.stem);
        p = variable_expand_for_file(d.*.name, f);
        free(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@volatileCast(@constCast(d.*.name)))))));
        new = split_prereqs(p);
        if (new == null) {
            dp.* = d.*.next;
            changed_dep = 1;
            free(@as(?*anyopaque, @ptrCast(d)));
            d = dp.*;
            continue;
        }
        fstem = d.*.stem;
        next = d.*.next;
        changed_dep = 1;
        free(@as(?*anyopaque, @ptrCast(d)));
        dp.* = new;
        {
            _ = blk: {
                dp = &new;
                break :blk blk_1: {
                    const tmp = new;
                    d = tmp;
                    break :blk_1 tmp;
                };
            };
            while (d != null) : (_ = blk: {
                dp = &d.*.next;
                break :blk blk_1: {
                    const tmp = d.*.next;
                    d = tmp;
                    break :blk_1 tmp;
                };
            }) {
                d.*.file = lookup_file(d.*.name);
                if (d.*.file == null) {
                    d.*.file = enter_file(d.*.name);
                }
                d.*.name = null;
                d.*.stem = fstem;
                if (!(fstem != null)) {
                    d.*.file.*.is_explicit = 1;
                }
            }
        }
        dp.* = next;
        d = dp.*;
    }
    if (changed_dep != 0) {
        shuffle_deps_recursive(f.*.deps);
    }
}

pub export fn expand_extra_prereqs(arg_extra: ?*const struct_variable) ?*struct_dep {
    var extra = arg_extra;
    _ = &extra;
    var d: ?*struct_dep = undefined;
    _ = &d;
    var prereqs: ?*struct_dep = if (extra != null) split_prereqs(variable_expand(extra.*.value)) else null;
    _ = &prereqs;
    {
        d = prereqs;
        while (d != null) : (d = d.*.next) {
            d.*.file = lookup_file(d.*.name);
            if (!(d.*.file != null)) {
                d.*.file = enter_file(d.*.name);
            }
            d.*.name = null;
            d.*.ignore_automatic_vars = 1;
        }
    }
    return prereqs;
}

pub fn snap_file(arg_item: ?*const anyopaque, arg_arg: ?*anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var arg = arg_arg;
    _ = &arg;
    var f: ?*struct_file = @as(?*struct_file, @ptrCast(@volatileCast(@constCast(item))));
    _ = &f;
    var prereqs: ?*struct_dep = null;
    _ = &prereqs;
    if (!(second_expansion != 0)) {
        f.*.updating = 0;
    }
    if ((all_secondary != 0) and !(f.*.notintermediate != 0)) {
        f.*.intermediate = 1;
    }
    if (((no_intermediates != 0) and !(f.*.intermediate != 0)) and !(f.*.secondary != 0)) {
        f.*.notintermediate = 1;
    }
    if (f.*.variables != null) {
        prereqs = expand_extra_prereqs(lookup_variable_in_set(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), f.*.variables.*.set));
    } else if (f.*.is_target != 0) {
        prereqs = copy_dep_chain(@as(?*const struct_dep, @ptrCast(arg)));
    }
    if (prereqs != null) {
        var d: ?*struct_dep = undefined;
        _ = &d;
        {
            d = prereqs;
            while (d != null) : (d = d.*.next) if ((f.*.name == (if (d.*.name != null) d.*.name else d.*.file.*.name)) or ((@as(c_int, @bitCast(@as(c_uint, f.*.name.*))) == @as(c_int, @bitCast(@as(c_uint, (if (d.*.name != null) d.*.name else d.*.file.*.name).*)))) and ((@as(c_int, @bitCast(@as(c_uint, f.*.name.*))) == @as(c_int, '\x00')) or !(strcmp(f.*.name + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), (if (d.*.name != null) d.*.name else d.*.file.*.name) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) break;
        }
        if (d != null) {
            free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(prereqs))));
        } else if (!(f.*.deps != null)) {
            f.*.deps = prereqs;
        } else {
            d = f.*.deps;
            while (d.*.next != null) {
                d = d.*.next;
            }
            d.*.next = prereqs;
        }
    }
}

pub export fn snap_deps() void {
    var f: ?*struct_file = undefined;
    _ = &f;
    var f2: ?*struct_file = undefined;
    _ = &f2;
    var d: ?*struct_dep = undefined;
    _ = &d;
    snapped_deps = 1;
    {
        f = lookup_file(".PRECIOUS");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.precious = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".LOW_RESOLUTION_TIME");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.low_resolution_time = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".PHONY");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.phony = 1;
                    f2.*.is_target = 1;
                    f2.*.last_mtime = 1;
                    f2.*.mtime_before_update = 1;
                }
            }
        }
    }
    {
        f = lookup_file(".NOTINTERMEDIATE");
        while (f != null) : (f = f.*.prev) if (f.*.deps != null) {
            {
                d = f.*.deps;
                while (d != null) : (d = d.*.next) {
                    f2 = d.*.file;
                    while (f2 != null) : (f2 = f2.*.prev) {
                        f2.*.notintermediate = 1;
                    }
                }
            }
        } else {
            no_intermediates = 1;
        };
    }
    {
        f = lookup_file(".INTERMEDIATE");
        while (f != null) : (f = f.*.prev) {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) if (f2.*.notintermediate != 0) {
                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f2.*.name), gettext("%s cannot be both .NOTINTERMEDIATE and .INTERMEDIATE"), f2.*.name);
                } else {
                    f2.*.intermediate = 1;
                };
            }
        }
    }
    {
        f = lookup_file(".SECONDARY");
        while (f != null) : (f = f.*.prev) if (f.*.deps != null) {
            {
                d = f.*.deps;
                while (d != null) : (d = d.*.next) {
                    f2 = d.*.file;
                    while (f2 != null) : (f2 = f2.*.prev) if (f2.*.notintermediate != 0) {
                        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f2.*.name), gettext("%s cannot be both .NOTINTERMEDIATE and .SECONDARY"), f2.*.name);
                    } else {
                        f2.*.intermediate = blk: {
                            const tmp = @as(c_uint, @bitCast(@as(c_int, 1)));
                            f2.*.secondary = tmp;
                            break :blk tmp;
                        };
                    };
                }
            }
        } else {
            all_secondary = 1;
        };
    }
    if ((no_intermediates != 0) and (all_secondary != 0)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext(".NOTINTERMEDIATE and .SECONDARY are mutually exclusive"));
    }
    f = lookup_file(".EXPORT_ALL_VARIABLES");
    if ((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
        export_all_variables = 1;
    }
    f = lookup_file(".IGNORE");
    if ((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
        if (f.*.deps == null) {
            ignore_errors_flag = 1;
        } else {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.command_flags |= @as(c_int, 4);
                }
            }
        }
    }
    f = lookup_file(".SILENT");
    if ((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
        if (f.*.deps == null) {
            run_silent = 1;
        } else {
            d = f.*.deps;
            while (d != null) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != null) : (f2 = f2.*.prev) {
                    f2.*.command_flags |= @as(c_int, 2);
                }
            }
        }
    }
    f = lookup_file(".NOTPARALLEL");
    if ((f != null) and (@as(c_int, @bitCast(f.*.is_target)) != 0)) {
        var d2: ?*struct_dep = undefined;
        _ = &d2;
        if (!(f.*.deps != null)) {
            not_parallel = 1;
        } else {
            d = f.*.deps;
            while (d != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (d = d.*.next) {
                f2 = d.*.file;
                while (f2 != @as(?*struct_file, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (f2 = f2.*.prev) if (f2.*.deps != null) {
                    d2 = f2.*.deps.*.next;
                    while (d2 != @as(?*struct_dep, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (d2 = d2.*.next) {
                        d2.*.wait_here = 1;
                    }
                };
            }
        }
    }
    {
        var prereqs: ?*struct_dep = expand_extra_prereqs(lookup_variable(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
        _ = &prereqs;
        hash_map_arg(&files, &snap_file, @as(?*anyopaque, @ptrCast(prereqs)));
        free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(prereqs))));
    }
}

pub export fn set_command_state(arg_file_1: ?*struct_file, arg_state: enum_cmd_state_39) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var state = arg_state;
    _ = &state;
    var d: ?*struct_dep = undefined;
    _ = &d;
    file_1.*.command_state = state;
    {
        d = file_1.*.also_make;
        while (d != null) : (d = d.*.next) if (state > d.*.file.*.command_state) {
            d.*.file.*.command_state = state;
        };
    }
}

pub export fn file_timestamp_cons(arg_fname: [*c]const u8, arg_stamp: time_t, arg_ns: c_long) uintmax_t {
    var fname = arg_fname;
    _ = &fname;
    var stamp = arg_stamp;
    _ = &stamp;
    var ns = arg_ns;
    _ = &ns;
    var offset: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(@as(c_long, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1)))) + (if (true) ns else @as(c_long, @bitCast(@as(c_long, @as(c_int, 0)))))))));
    _ = &offset;
    var s: uintmax_t = @as(uintmax_t, @bitCast(stamp));
    _ = &s;
    var product: uintmax_t = s << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0));
    _ = &product;
    var ts: uintmax_t = product +% @as(uintmax_t, @bitCast(@as(c_long, offset)));
    _ = &ts;
    if (!(((s <= (((((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0)))) and (product <= ts)) and (ts <= (((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1)))))))) {
        var buf: [43]u8 = undefined;
        _ = &buf;
        var f: [*c]const u8 = if (fname != null) fname else @as([*c]const u8, @ptrCast(@alignCast(gettext("Current time"))));
        _ = &f;
        ts = if (s <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1)))) else ((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))));
        file_timestamp_sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), ts);
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(f) +% strlen(@as([*c]u8, @ptrCast(@alignCast(&buf)))), gettext("%s: Timestamp out of range; substituting %s"), f, @as([*c]u8, @ptrCast(@alignCast(&buf))));
    }
    return ts;
}

// src/file.c:970:9: warning: TODO implement translation of stmt class GotoStmtClass

// src/file.c:952:1: warning: unable to translate function, demoted to extern
pub extern fn file_timestamp_now(arg_resolution: [*c]c_int) uintmax_t;

pub export fn file_timestamp_sprintf(arg_p: [*c]u8, arg_ts: uintmax_t) void {
    var p = arg_p;
    _ = &p;
    var ts = arg_ts;
    _ = &ts;
    var t: time_t = @as(time_t, @bitCast((ts -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))));
    _ = &t;
    var tm_1: [*c]struct_tm = localtime(&t);
    _ = &tm_1;
    if (tm_1 != null) {
        var year: intmax_t = @as(intmax_t, @bitCast(@as(c_long, tm_1.*.tm_year)));
        _ = &year;
        _ = sprintf(p, "%04ld-%02d-%02d %02d:%02d:%02d", year + @as(intmax_t, @bitCast(@as(c_long, @as(c_int, 1900)))), tm_1.*.tm_mon + @as(c_int, 1), tm_1.*.tm_mday, tm_1.*.tm_hour, tm_1.*.tm_min, tm_1.*.tm_sec);
    } else if (t < @as(time_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        _ = sprintf(p, "%ld", @as(intmax_t, @bitCast(t)));
    } else {
        _ = sprintf(p, "%lu", @as(uintmax_t, @bitCast(t)));
    }
    p += @as([*c]u8, @ptrFromInt(strlen(p)));
    _ = sprintf(p, ".%09d", @as(c_int, @bitCast(@as(c_uint, @truncate((ts -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) & @as(uintmax_t, @bitCast(@as(c_long, (@as(c_int, 1) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) - @as(c_int, 1)))))))));
    p += @as([*c]u8, @ptrFromInt(strlen(p) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
    while (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '0')) {
        p -= 1;
    }
    p += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '.')))));
    p.* = '\x00';
}

pub export fn print_prereqs(arg_deps: ?*const struct_dep) void {
    var deps = arg_deps;
    _ = &deps;
    var ood: ?*const struct_dep = null;
    _ = &ood;
    while (deps != null) : (deps = deps.*.next) if (!(deps.*.ignore_mtime != 0)) {
        _ = printf(" %s%s", if (@as(c_int, @bitCast(deps.*.wait_here)) != 0) ".WAIT " else "", if (deps.*.name != null) deps.*.name else deps.*.file.*.name);
    } else if (!(ood != null)) {
        ood = deps;
    };
    if (ood != null) {
        _ = printf(" | %s%s", if (@as(c_int, @bitCast(ood.*.wait_here)) != 0) ".WAIT " else "", if (ood.*.name != null) ood.*.name else ood.*.file.*.name);
        {
            ood = ood.*.next;
            while (ood != null) : (ood = ood.*.next) if (ood.*.ignore_mtime != 0) {
                _ = printf(" %s%s", if (@as(c_int, @bitCast(ood.*.wait_here)) != 0) ".WAIT " else "", if (ood.*.name != null) ood.*.name else ood.*.file.*.name);
            };
        }
    }
    _ = putchar(@as(c_int, '\n'));
}

pub fn print_file(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var f: ?*const struct_file = @as(?*const struct_file, @ptrCast(item));
    _ = &f;
    if ((no_builtin_rules_flag != 0) and (@as(c_int, @bitCast(f.*.builtin)) != 0)) return;
    _ = putchar(@as(c_int, '\n'));
    if ((f.*.cmds != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.cmds.*.recipe_prefix))) != @as(c_int, @bitCast(@as(c_uint, cmd_prefix))))) {
        _ = fputs(".RECIPEPREFIX = ", stdout);
        cmd_prefix = f.*.cmds.*.recipe_prefix;
        if (@as(c_int, @bitCast(@as(c_uint, cmd_prefix))) != @as(c_int, '\t')) {
            _ = putchar(@as(c_int, @bitCast(@as(c_uint, cmd_prefix))));
        }
        _ = putchar(@as(c_int, '\n'));
    }
    if (f.*.variables != null) {
        print_target_variables(f);
    }
    if (!(f.*.is_target != 0)) {
        _ = puts(gettext("# Not a target:"));
    }
    _ = printf("%s:%s", f.*.name, if (f.*.double_colon != null) ":" else "");
    print_prereqs(f.*.deps);
    if (f.*.precious != 0) {
        _ = puts(gettext("#  Precious file (prerequisite of .PRECIOUS)."));
    }
    if (f.*.phony != 0) {
        _ = puts(gettext("#  Phony target (prerequisite of .PHONY)."));
    }
    if (f.*.cmd_target != 0) {
        _ = puts(gettext("#  Command line target."));
    }
    if (f.*.dontcare != 0) {
        _ = puts(gettext("#  A default, MAKEFILES, or -include/sinclude makefile."));
    }
    if (f.*.builtin != 0) {
        _ = puts(gettext("#  Builtin rule"));
    }
    _ = puts(if (@as(c_int, @bitCast(f.*.tried_implicit)) != 0) gettext("#  Implicit rule search has been done.") else gettext("#  Implicit rule search has not been done."));
    if (f.*.stem != null) {
        _ = printf(gettext("#  Implicit/static pattern stem: '%s'\n"), f.*.stem);
    }
    if (f.*.intermediate != 0) {
        _ = puts(gettext("#  File is an intermediate prerequisite."));
    }
    if (f.*.notintermediate != 0) {
        _ = puts(gettext("#  File is a prerequisite of .NOTINTERMEDIATE."));
    }
    if (f.*.secondary != 0) {
        _ = puts(gettext("#  File is secondary (prerequisite of .SECONDARY)."));
    }
    if (f.*.also_make != null) {
        var d: ?*const struct_dep = undefined;
        _ = &d;
        _ = fputs(gettext("#  Also makes:"), stdout);
        {
            d = f.*.also_make;
            while (d != null) : (d = d.*.next) {
                _ = printf(" %s", if (d.*.name != null) d.*.name else d.*.file.*.name);
            }
        }
        _ = putchar(@as(c_int, '\n'));
    }
    if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        _ = puts(gettext("#  Modification time never checked."));
    } else if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
        _ = puts(gettext("#  File does not exist."));
    } else if (f.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2))))) {
        _ = puts(gettext("#  File is very old."));
    } else {
        var buf: [43]u8 = undefined;
        _ = &buf;
        file_timestamp_sprintf(@as([*c]u8, @ptrCast(@alignCast(&buf))), f.*.last_mtime);
        _ = printf(gettext("#  Last modified %s\n"), @as([*c]u8, @ptrCast(@alignCast(&buf))));
    }
    _ = puts(if (@as(c_int, @bitCast(f.*.updated)) != 0) gettext("#  File has been updated.") else gettext("#  File has not been updated."));
    while (true) {
        switch (@as(c_int, @bitCast(f.*.command_state))) {
            @as(c_int, 2) => {
                _ = puts(gettext("#  Recipe currently running (THIS IS A BUG)."));
                break;
            },
            @as(c_int, 1) => {
                _ = puts(gettext("#  Dependencies recipe running (THIS IS A BUG)."));
                break;
            },
            @as(c_int, 0), @as(c_int, 3) => {
                while (true) {
                    switch (@as(c_int, @bitCast(f.*.update_status))) {
                        @as(c_int, 1) => break,
                        @as(c_int, 0) => {
                            _ = puts(gettext("#  Successfully updated."));
                            break;
                        },
                        @as(c_int, 2) => {
                            _ = @as(c_int, 0);
                            _ = puts(gettext("#  Needs to be updated (-q is set)."));
                            break;
                        },
                        @as(c_int, 3) => {
                            _ = puts(gettext("#  Failed to be updated."));
                            break;
                        },
                        else => {},
                    }
                    break;
                }
                break;
            },
            else => {
                _ = puts(gettext("#  Invalid value in 'command_state' member!"));
                _ = fflush(stdout);
                _ = fflush(stderr);
                abort();
            },
        }
        break;
    }
    if (f.*.variables != null) {
        print_file_variables(f);
    }
    if (f.*.cmds != null) {
        print_commands(f.*.cmds);
    }
    if (f.*.prev != null) {
        print_file(@as(?*const anyopaque, @ptrCast(f.*.prev)));
    }
}

pub export fn print_file_data_base() void {
    _ = puts(gettext("\n# Files"));
    hash_map(&files, &print_file);
    _ = fputs(gettext("\n# files hash-table stats:\n# "), stdout);
    hash_print_stats(&files, stdout);
}

pub const VERIFY_CACHED = @compileError("unable to translate C expr: unexpected token 'do'");
// src/file.c:1189:9

pub fn verify_file(arg_item: ?*const anyopaque) callconv(.C) void {
    var item = arg_item;
    _ = &item;
    var f: ?*const struct_file = @as(?*const struct_file, @ptrCast(item));
    _ = &f;
    var d: ?*const struct_dep = undefined;
    _ = &d;
    while (true) {
        if (((f.*.name != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.name[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.name) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.name), gettext("%s: Field '%s' not cached: %s"), f.*.name, "name", f.*.name);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.hname != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.hname[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.hname) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.hname), gettext("%s: Field '%s' not cached: %s"), f.*.name, "hname", f.*.hname);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.vpath != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.vpath[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.vpath) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.vpath), gettext("%s: Field '%s' not cached: %s"), f.*.name, "vpath", f.*.vpath);
        }
        if (!false) break;
    }
    while (true) {
        if (((f.*.stem != null) and (@as(c_int, @bitCast(@as(c_uint, f.*.stem[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(f.*.stem) != 0)) {
            @"error"(null, (strlen(f.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(f.*.stem), gettext("%s: Field '%s' not cached: %s"), f.*.name, "stem", f.*.stem);
        }
        if (!false) break;
    }
    {
        d = f.*.deps;
        while (d != null) : (d = d.*.next) {
            if (!(d.*.need_2nd_expansion != 0)) while (true) {
                if (((d.*.name != null) and (@as(c_int, @bitCast(@as(c_uint, d.*.name[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(d.*.name) != 0)) {
                    @"error"(null, (strlen(d.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(d.*.name), gettext("%s: Field '%s' not cached: %s"), d.*.name, "name", d.*.name);
                }
                if (!false) break;
            };
            while (true) {
                if (((d.*.stem != null) and (@as(c_int, @bitCast(@as(c_uint, d.*.stem[@as(c_uint, @intCast(@as(c_int, 0)))]))) != 0)) and !(strcache_iscached(d.*.stem) != 0)) {
                    @"error"(null, (strlen(d.*.name) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% strlen(d.*.stem), gettext("%s: Field '%s' not cached: %s"), d.*.name, "stem", d.*.stem);
                }
                if (!false) break;
            }
        }
    }
}

pub export fn verify_file_data_base() void {
    hash_map(&files, &verify_file);
}

pub inline fn EXPANSION_INCREMENT(_l: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.div(_l, @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500)) {
    _ = &_l;
    return (@import("std").zig.c_translation.MacroArithmetic.div(_l, @as(c_int, 500)) + @as(c_int, 1)) * @as(c_int, 500);
}

pub export fn build_target_list(arg_value: [*c]u8) [*c]u8 {
    var value = arg_value;
    _ = &value;
    const last_targ_count = struct {
        var static: c_ulong = 0;
    };
    _ = &last_targ_count;
    if (files.ht_fill != last_targ_count.static) {
        var max: usize = ((strlen(value) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 500))));
        _ = &max;
        var len: usize = undefined;
        _ = &len;
        var p: [*c]u8 = undefined;
        _ = &p;
        var fp: [*c]?*struct_file = @as([*c]?*struct_file, @ptrCast(@alignCast(files.ht_vec)));
        _ = &fp;
        var end: [*c]?*struct_file = &fp[files.ht_size];
        _ = &end;
        value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(value)), max))));
        p = value;
        len = 0;
        while (fp < end) : (fp += 1) if (!((fp.* == null) or (@as(?*anyopaque, @ptrCast(fp.*)) == hash_deleted_item)) and (@as(c_int, @bitCast(fp.*.*.is_target)) != 0)) {
            var f: ?*struct_file = fp.*;
            _ = &f;
            var l: usize = strlen(f.*.name);
            _ = &l;
            len +%= l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
            if (len > max) {
                var off: usize = @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(value))), @sizeOf(u8))));
                _ = &off;
                max +%= (((l +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) / @as(usize, @bitCast(@as(c_long, @as(c_int, 500))))) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(usize, @bitCast(@as(c_long, @as(c_int, 500))));
                value = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(value)), max))));
                p = &value[off];
            }
            p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(f.*.name)), l))));
            (blk: {
                const ref = &p;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = ' ';
        };
        (p - @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))).* = '\x00';
        last_targ_count.static = files.ht_fill;
    }
    return value;
}

pub export fn init_hash_files() void {
    hash_init(&files, @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1000)))), &file_hash_1, &file_hash_2, &file_hash_cmp);
}
