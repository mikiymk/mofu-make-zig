const __uintmax_t = c_ulong;

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

extern fn putchar(__c: c_int) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn abort() noreturn;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) c_ulong;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

// src/dep.h:51:18: warning: struct demoted to opaque type - has bitfield
const struct_dep = opaque {};
// src/commands.h:28:18: warning: struct demoted to opaque type - has bitfield
const struct_commands = opaque {};

// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
const struct_file = opaque {};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

// src/variable.h:68:18: warning: struct demoted to opaque type - has bitfield
const struct_variable = opaque {};

extern fn xmalloc(usize) ?*anyopaque;

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
extern fn xstrdup([*c]const u8) [*c]u8;

extern fn find_percent_cached([*c][*c]const u8) [*c]const u8;

extern fn dir_file_exists_p([*c]const u8, [*c]const u8) c_int;

extern fn expand_extra_prereqs(extra: ?*const struct_variable) ?*struct_dep;

const struct_nameseq = extern struct {
    next: [*c]struct_nameseq = @import("std").mem.zeroes([*c]struct_nameseq),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

extern fn parse_file_seq(stringp: [*c][*c]u8, size: usize, stopmap: c_int, prefix: [*c]const u8, flags: c_int) ?*anyopaque;

extern fn free_ns_chain(n: [*c]struct_nameseq) void;
extern fn copy_dep_chain(d: ?*const struct_dep) ?*struct_dep;

extern fn print_commands(cmds: ?*const struct_commands) void;

extern fn lookup_variable(name: [*c]const u8, length: usize) ?*struct_variable;

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
const struct_pspec = extern struct {
    target: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    dep: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    commands: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};

pub extern var pattern_rules: [*c]struct_rule;

pub extern var last_pattern_rule: [*c]struct_rule;

pub extern var num_pattern_rules: c_uint;

pub extern var max_pattern_targets: c_uint;

pub extern var max_pattern_deps: c_uint;

pub extern var max_pattern_dep_length: usize;

pub extern var suffix_file: ?*struct_file;

pub var maxsuffix: usize = @import("std").mem.zeroes(usize);

pub export fn get_rule_defn(arg_r: [*c]struct_rule) [*c]const u8 {
    var r = arg_r;
    _ = &r;
    if (r.*._defn == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var len: usize = 8;
        _ = &len;
        var k: c_uint = undefined;
        _ = &k;
        var p: [*c]u8 = undefined;
        _ = &p;
        var sep: [*c]const u8 = "";
        _ = &sep;
        var dep_1: ?*const struct_dep = undefined;
        _ = &dep_1;
        var ood: ?*const struct_dep = null;
        _ = &ood;
        {
            k = 0;
            while (k < @as(c_uint, @bitCast(@as(c_uint, r.*.num)))) : (k +%= 1) {
                len +%= @as(usize, @bitCast(@as(c_ulong, r.*.lens[k] +% @as(c_uint, @bitCast(@as(c_int, 1))))));
            }
        }
        {
            dep_1 = r.*.deps;
            while (dep_1 != null) : (dep_1 = dep_1.*.next) {
                len +%= @as(usize, @bitCast((strlen(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name) +% (if (@as(c_int, @bitCast(dep_1.*.wait_here)) != 0) @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))) else @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
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
            while (dep_1 != null) : (dep_1 = dep_1.*.next) if (@as(c_int, @bitCast(dep_1.*.ignore_mtime)) == @as(c_int, 0)) {
                if (dep_1.*.wait_here != 0) {
                    p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(" .WAIT")), @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                }
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(" ")), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))), @as(?*const anyopaque, @ptrCast(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name)), strlen(if (dep_1.*.name != null) dep_1.*.name else dep_1.*.file.*.name)))));
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
                    p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(".WAIT ")), @sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
                }
                p = @as([*c]u8, @ptrCast(@alignCast(mempcpy(@as(?*anyopaque, @ptrCast(p)), @as(?*const anyopaque, @ptrCast(if (ood.*.name != null) ood.*.name else ood.*.file.*.name)), strlen(if (ood.*.name != null) ood.*.name else ood.*.file.*.name)))));
            };
        }
        p.* = '\x00';
    }
    return r.*._defn;
}

pub export fn snap_implicit_rules() void {
    var name: [*c]u8 = null;
    _ = &name;
    var namelen: usize = 0;
    _ = &namelen;
    var rule_1: [*c]struct_rule = undefined;
    _ = &rule_1;
    var dep_2: ?*struct_dep = undefined;
    _ = &dep_2;
    var prereqs: ?*struct_dep = expand_extra_prereqs(lookup_variable(".EXTRA_PREREQS", @sizeOf([15]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
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
                l +%= @as(usize, @bitCast(@as(c_long, @as(c_int, 4))));
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
            const tmp_2 = @as(c_uint, @bitCast(@as(c_int, 0)));
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
            var lastdep: ?*struct_dep = null;
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
                            name = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(name)), namelen +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
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

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/rule.c:240:1: warning: unable to translate function, demoted to extern
pub extern fn convert_suffix_rule(arg_target: [*c]const u8, arg_source: [*c]const u8, arg_cmds: ?*struct_commands) callconv(.C) void;

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/rule.c:292:1: warning: unable to translate function, demoted to extern
pub extern fn convert_to_pattern() void;

// src/rule.c:424:21: warning: TODO implement translation of stmt class GotoStmtClass

// src/rule.c:383:1: warning: unable to translate function, demoted to extern
pub extern fn new_pattern_rule(arg_rule_1: [*c]struct_rule, arg_override: c_int) callconv(.C) c_int;

pub export fn install_pattern_rule(arg_p: [*c]struct_pspec, arg_terminal: c_int) void {
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
    r.*.lens[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(c_uint, @bitCast(@as(c_uint, @truncate(strlen(p.*.target)))));
    r.*.targets[@as(c_uint, @intCast(@as(c_int, 0)))] = p.*.target;
    r.*.suffixes[@as(c_uint, @intCast(@as(c_int, 0)))] = find_percent_cached(&r.*.targets[@as(c_uint, @intCast(@as(c_int, 0)))]);
    _ = @as(c_int, 0);
    r.*.suffixes[@as(c_uint, @intCast(@as(c_int, 0)))] += 1;
    ptr = p.*.dep;
    r.*.deps = @as(?*struct_dep, @ptrCast(parse_file_seq(@as([*c][*c]u8, @ptrCast(@alignCast(&ptr))), @sizeOf(struct_dep), @as(c_int, 1), null, @as(c_int, 0))));
    if (new_pattern_rule(r, @as(c_int, 0)) != 0) {
        r.*.terminal = @as(u8, @bitCast(@as(i8, @truncate(if (terminal != 0) @as(c_int, 1) else @as(c_int, 0)))));
        r.*.cmds = @as(?*struct_commands, @ptrCast(xmalloc(@sizeOf(struct_commands))));
        r.*.cmds.*.fileinfo.filenm = null;
        r.*.cmds.*.fileinfo.lineno = 0;
        r.*.cmds.*.fileinfo.offset = 0;
        r.*.cmds.*.commands = xstrdup(p.*.commands);
        r.*.cmds.*.command_lines = null;
        r.*.cmds.*.recipe_prefix = '\t';
    }
}

pub fn freerule(arg_rule_1: [*c]struct_rule, arg_lastrule: [*c]struct_rule) callconv(.C) void {
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

pub export fn create_pattern_rule(arg_targets: [*c][*c]const u8, arg_target_percents: [*c][*c]const u8, arg_n: c_ushort, arg_terminal: c_int, arg_deps: ?*struct_dep, arg_commands_1: ?*struct_commands, arg_override: c_int) void {
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
            _ = @as(c_int, 0);
            r.*.suffixes[i] += 1;
        }
    }
    if (new_pattern_rule(r, override) != 0) {
        r.*.terminal = @as(u8, @bitCast(@as(i8, @truncate(if (terminal != 0) @as(c_int, 1) else @as(c_int, 0)))));
    }
}

pub fn print_rule(arg_r: [*c]struct_rule) callconv(.C) void {
    var r = arg_r;
    _ = &r;
    _ = fputs(get_rule_defn(r), stdout);
    _ = putchar(@as(c_int, '\n'));
    if (r.*.cmds != null) {
        print_commands(r.*.cmds);
    }
}

pub export fn print_rule_data_base() void {
    var rules: c_uint = undefined;
    _ = &rules;
    var terminal: c_uint = undefined;
    _ = &terminal;
    var r: [*c]struct_rule = undefined;
    _ = &r;
    _ = puts(gettext("\n# Implicit Rules"));
    rules = blk: {
        const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
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
    if (rules == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        _ = puts(gettext("\n# No implicit rules."));
    } else {
        _ = printf(gettext("\n# %u implicit rules, %u (%.1f%%) terminal."), rules, terminal, (@as(f64, @floatFromInt(terminal)) / @as(f64, @floatFromInt(rules))) * 100.0);
    }
    if (num_pattern_rules != rules) {
        if (num_pattern_rules != @as(c_uint, @bitCast(@as(c_int, 0)))) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))), gettext("BUG: num_pattern_rules is wrong!  %u != %u"), num_pattern_rules, rules);
        }
    }
}
