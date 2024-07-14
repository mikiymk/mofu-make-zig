const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

const time_t = __time_t;

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

const sig_atomic_t = __sig_atomic_t;

const __sighandler_t = ?*const fn (c_int) callconv(.C) void;

extern fn signal(__sig: c_int, __handler: __sighandler_t) __sighandler_t;
extern fn kill(__pid: __pid_t, __sig: c_int) c_int;

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

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
extern fn puts(__s: [*c]const u8) c_int;

extern fn __errno_location() [*c]c_int;

extern fn unlink(__name: [*c]const u8) c_int;

extern fn exit(__status: c_int) noreturn;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

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

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;

extern fn temp_stdin_unlink() void;
//  extern fn die(c_int) noreturn;
extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn make_pid() pid_t;

extern fn ar_name([*c]const u8) c_int;

extern fn ar_member_date([*c]const u8) time_t;

extern fn unload_file(name: [*c]const u8) c_int;

const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

extern var cmd_prefix: u8;

extern fn remote_kill(id: pid_t, sig: c_int) c_int;

extern fn jhash_string(key: [*c]const u8) c_uint;

extern fn remove_intermediates(sig: c_int) void;

const cs_running: c_int = 2;

const enum_cmd_state_39 = c_uint;
extern fn set_command_state(file: ?*struct_file, state: enum_cmd_state_39) void;
extern fn notice_finished_file(file: ?*struct_file) void;

extern fn file_timestamp_cons([*c]const u8, time_t, c_long) uintmax_t;

extern fn jobserver_clear() void;

extern fn osync_clear() void;

const us_success: c_int = 0;

extern fn initialize_file_variables(file: ?*struct_file, reading: c_int) void;

// src/job.h:59:19: warning: struct demoted to opaque type - has bitfield
const struct_child = opaque {};
extern var children: ?*struct_child;

extern fn new_job(file: ?*struct_file) void;
extern fn reap_children(block: c_int, err: c_int) void;

extern var job_slots_used: c_uint;

pub const FILE_LIST_SEPARATOR = ' ';

pub fn dep_hash_1(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    var d: ?*const struct_dep = @as(?*const struct_dep, @ptrCast(key));
    _ = &d;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            var _key_: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(if (d.*.name != null) d.*.name else d.*.file.*.name)));
            _ = &_key_;
            _result_ +%= @as(c_ulong, @bitCast(@as(c_ulong, jhash_string(_key_))));
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn dep_hash_2(arg_key: ?*const anyopaque) callconv(.C) c_ulong {
    var key = arg_key;
    _ = &key;
    var d: ?*const struct_dep = @as(?*const struct_dep, @ptrCast(key));
    _ = &d;
    while (true) {
        var _result_: c_ulong = 0;
        _ = &_result_;
        while (true) {
            _ = if (d.*.name != null) d.*.name else d.*.file.*.name;
            if (!false) break;
        }
        return _result_;
    }
    return 0;
}

pub fn dep_hash_cmp(arg_x: ?*const anyopaque, arg_y: ?*const anyopaque) callconv(.C) c_int {
    var x = arg_x;
    _ = &x;
    var y = arg_y;
    _ = &y;
    var dx: ?*const struct_dep = @as(?*const struct_dep, @ptrCast(x));
    _ = &dx;
    var dy: ?*const struct_dep = @as(?*const struct_dep, @ptrCast(y));
    _ = &dy;
    return strcmp(if (dx.*.name != null) dx.*.name else dx.*.file.*.name, if (dy.*.name != null) dy.*.name else dy.*.file.*.name);
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/commands.c:64:1: warning: unable to translate function, demoted to extern
pub extern fn set_file_variables(arg_file_1: ?*struct_file, arg_stem: [*c]const u8) void;

// src/commands.c:357:9: warning: TODO implement translation of stmt class LabelStmtClass

// src/commands.c:323:1: warning: unable to translate function, demoted to extern
pub extern fn chop_commands(arg_cmds: ?*struct_commands) void;

pub export fn execute_file_commands(arg_file_1: ?*struct_file) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var p: [*c]const u8 = undefined;
    _ = &p;
    {
        p = file_1.*.cmds.*.commands;
        while (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '\x00')) : (p += 1) if (((!((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(p.*))]))) & (@as(c_int, 2) | @as(c_int, 4))) != @as(c_int, 0)) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '-'))) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '@'))) and (@as(c_int, @bitCast(@as(c_uint, p.*))) != @as(c_int, '+'))) break;
    }
    if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) {
        set_command_state(file_1, @as(c_uint, @bitCast(cs_running)));
        file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        notice_finished_file(file_1);
        return;
    }
    initialize_file_variables(file_1, @as(c_int, 0));
    set_file_variables(file_1, file_1.*.stem);
    if ((@as(c_int, @bitCast(file_1.*.loaded)) != 0) and (unload_file(file_1.*.name) == @as(c_int, 0))) {
        file_1.*.loaded = 0;
        file_1.*.unloaded = 1;
    }
    new_job(file_1);
}

pub extern var handling_fatal_signal: sig_atomic_t;

pub export fn fatal_error_signal(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    handling_fatal_signal = 1;
    _ = signal(sig, @as(__sighandler_t, @ptrFromInt(@as(c_int, 0))));
    temp_stdin_unlink();
    osync_clear();
    jobserver_clear();
    if (sig == @as(c_int, 15)) {
        var c: ?*struct_child = undefined;
        _ = &c;
        {
            c = children;
            while (c != null) : (c = c.*.next) if (!(c.*.remote != 0) and (c.*.pid > @as(c_int, 0))) {
                _ = kill(c.*.pid, @as(c_int, 15));
            };
        }
    }
    if ((((sig == @as(c_int, 15)) or (sig == @as(c_int, 2))) or (sig == @as(c_int, 1))) or (sig == @as(c_int, 3))) {
        var c: ?*struct_child = undefined;
        _ = &c;
        {
            c = children;
            while (c != null) : (c = c.*.next) if ((@as(c_int, @bitCast(c.*.remote)) != 0) and (c.*.pid > @as(c_int, 0))) {
                _ = remote_kill(c.*.pid, sig);
            };
        }
        {
            c = children;
            while (c != null) : (c = c.*.next) {
                delete_child_targets(c);
            }
        }
        while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
            reap_children(@as(c_int, 1), @as(c_int, 0));
        }
    } else while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        reap_children(@as(c_int, 1), @as(c_int, 1));
    }
    remove_intermediates(@as(c_int, 1));
    if (sig == @as(c_int, 3)) {
        exit(@as(c_int, 1));
    }
    if (kill(make_pid(), sig) < @as(c_int, 0)) {
        pfatal_with_name("kill");
    }
}

pub fn delete_target(arg_file_1: ?*struct_file, arg_on_behalf_of: [*c]const u8) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var on_behalf_of = arg_on_behalf_of;
    _ = &on_behalf_of;
    var st: struct_stat = undefined;
    _ = &st;
    var e: c_int = undefined;
    _ = &e;
    if ((@as(c_int, @bitCast(file_1.*.precious)) != 0) or (@as(c_int, @bitCast(file_1.*.phony)) != 0)) return;
    if (ar_name(file_1.*.name) != 0) {
        var file_date: time_t = if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) @as(time_t, @bitCast(@as(c_long, -@as(c_int, 1)))) else @as(time_t, @bitCast((file_1.*.last_mtime -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))));
        _ = &file_date;
        if (ar_member_date(file_1.*.name) != file_date) {
            if (on_behalf_of != null) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(on_behalf_of) +% strlen(file_1.*.name), gettext("*** [%s] Archive member '%s' may be bogus; not deleted"), on_behalf_of, file_1.*.name);
            } else {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(file_1.*.name), gettext("*** Archive member '%s' may be bogus; not deleted"), file_1.*.name);
            }
        }
        return;
    }
    while (((blk: {
        const tmp = stat(file_1.*.name, &st);
        e = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (((e == @as(c_int, 0)) and ((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 32768))))) and (file_timestamp_cons(file_1.*.name, st.st_mtim.tv_sec, st.st_mtim.tv_nsec) != file_1.*.last_mtime)) {
        if (on_behalf_of != null) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(on_behalf_of) +% strlen(file_1.*.name), gettext("*** [%s] Deleting file '%s'"), on_behalf_of, file_1.*.name);
        } else {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(file_1.*.name), gettext("*** Deleting file '%s'"), file_1.*.name);
        }
        if ((unlink(file_1.*.name) < @as(c_int, 0)) and (__errno_location().* != @as(c_int, 2))) {
            perror_with_name("unlink: ", file_1.*.name);
        }
    }
}

pub export fn delete_child_targets(arg_child_1: ?*struct_child) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    var d: ?*struct_dep = undefined;
    _ = &d;
    if ((@as(c_int, @bitCast(child_1.*.deleted)) != 0) or (child_1.*.pid < @as(c_int, 0))) return;
    delete_target(child_1.*.file, null);
    {
        d = child_1.*.file.*.also_make;
        while (d != null) : (d = d.*.next) {
            delete_target(d.*.file, child_1.*.file.*.name);
        }
    }
    child_1.*.deleted = 1;
}

pub export fn print_commands(arg_cmds: ?*const struct_commands) void {
    var cmds = arg_cmds;
    _ = &cmds;
    var s: [*c]const u8 = undefined;
    _ = &s;
    _ = fputs(gettext("#  recipe to execute"), stdout);
    if (cmds.*.fileinfo.filenm == null) {
        _ = puts(gettext(" (built-in):"));
    } else {
        _ = printf(gettext(" (from '%s', line %lu):\n"), cmds.*.fileinfo.filenm, cmds.*.fileinfo.lineno);
    }
    s = cmds.*.commands;
    while (@as(c_int, @bitCast(@as(c_uint, s.*))) != @as(c_int, '\x00')) {
        var end: [*c]const u8 = undefined;
        _ = &end;
        var bs: c_int = undefined;
        _ = &bs;
        {
            _ = blk: {
                end = s;
                break :blk blk_1: {
                    const tmp = @as(c_int, 0);
                    bs = tmp;
                    break :blk_1 tmp;
                };
            };
            while (@as(c_int, @bitCast(@as(c_uint, end.*))) != @as(c_int, '\x00')) : (end += 1) {
                if ((@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, '\n')) and !(bs != 0)) break;
                bs = if (@as(c_int, @bitCast(@as(c_uint, end.*))) == @as(c_int, '\\')) @intFromBool(!(bs != 0)) else @as(c_int, 0);
            }
        }
        _ = printf("%c%.*s\n", @as(c_int, @bitCast(@as(c_uint, cmd_prefix))), @as(c_int, @bitCast(@as(c_int, @truncate(@divExact(@as(c_long, @bitCast(@intFromPtr(end) -% @intFromPtr(s))), @sizeOf(u8)))))), s);
        s = end + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, @bitCast(@as(c_uint, end[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\n')))));
    }
}
