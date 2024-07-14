const __uintmax_t = c_ulong;

const __off_t = c_long;
const __off64_t = c_long;
const __pid_t = c_int;

const __time_t = c_long;

const __sig_atomic_t = c_int;

const pid_t = __pid_t;

const time_t = __time_t;

const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
const sigset_t = __sigset_t;

const sig_atomic_t = __sig_atomic_t;

extern fn sigemptyset(__set: [*c]sigset_t) c_int;

extern fn sigprocmask(__how: c_int, noalias __set: [*c]const sigset_t, noalias __oset: [*c]sigset_t) c_int;

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
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn time(__timer: [*c]time_t) time_t;

extern fn __errno_location() [*c]c_int;

extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;

extern fn close(__fd: c_int) c_int;
extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;

extern fn free(__ptr: ?*anyopaque) void;

extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;

extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

// src/filedef.h:75:9: warning: struct demoted to opaque type - has bitfield
const struct_file = opaque {};
const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn @"error"(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) void;
extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

const o_default: c_int = 0;

// src/variable.h:68:18: warning: struct demoted to opaque type - has bitfield
const struct_variable = opaque {};

extern fn perror_with_name([*c]const u8, [*c]const u8) void;
extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;

extern fn xstrdup([*c]const u8) [*c]u8;

const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

extern var warn_undefined_variables_flag: c_int;
extern var posix_pedantic: c_int;

extern var max_load_average: f64;

extern fn start_remote_job_p(c_int) c_int;

extern var handling_fatal_signal: sig_atomic_t;
// src/output.h:21:18: warning: struct demoted to opaque type - has bitfield
const struct_output = opaque {};

extern fn output_close(out: ?*struct_output) void;

const struct_childbase = extern struct {
    cmd_name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    environment: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
    output: struct_output = @import("std").mem.zeroes(struct_output),
};
// src/job.h:59:19: warning: struct demoted to opaque type - has bitfield
const struct_child = opaque {};

extern var db_level: c_int;

const cs_running: c_int = 2;

const enum_cmd_state_39 = c_uint;
extern fn set_command_state(file: ?*struct_file, state: enum_cmd_state_39) void;
extern fn notice_finished_file(file: ?*struct_file) void;

extern fn allocated_variable_expand_for_file(line: [*c]const u8, file: ?*struct_file) [*c]u8;

extern fn lookup_variable_for_file(name: [*c]const u8, length: usize, file: ?*struct_file) ?*struct_variable;

extern fn fd_noinherit(c_int) void;

extern fn jobserver_enabled() c_uint;

extern fn jobserver_release(is_fatal: c_int) void;
extern fn jobserver_signal() void;

const us_success: c_int = 0;

extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;

const struct_rusage = opaque {};

extern var fatal_signal_set: sigset_t;

const __WCOREFLAG = @as(c_int, 0x80);

pub extern var default_shell: [*c]const u8;
pub extern var batch_mode_shell: c_int;

pub extern fn wait3(__stat_loc: [*c]c_int, __options: c_int, __usage: ?*struct_rusage) __pid_t;

pub const WAIT_T = c_int;

pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}

pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn WCOREDUMP(status: anytype) @TypeOf(__WCOREDUMP(status)) {
    _ = &status;
    return __WCOREDUMP(status);
}

pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}

pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}

pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}

pub fn pid2str(arg_pid: pid_t) callconv(.C) [*c]const u8 {
    var pid = arg_pid;
    _ = &pid;
    const pidstring = struct {
        var static: [100]u8 = @import("std").mem.zeroes([100]u8);
    };
    _ = &pidstring;
    _ = sprintf(@as([*c]u8, @ptrCast(@alignCast(&pidstring.static))), "%lu", @as(c_ulong, @bitCast(@as(c_long, pid))));
    return @as([*c]u8, @ptrCast(@alignCast(&pidstring.static)));
}

pub extern var children: ?*struct_child;

pub extern var job_slots_used: c_uint;

pub var good_stdin_used: c_int = 0;

pub var waiting_jobs: ?*struct_child = null;

pub export var unixy_shell: c_int = 1;

pub export var job_counter: c_ulong = 0;

pub extern var jobserver_tokens: c_uint;

pub export fn is_bourne_compatible_shell(arg_path: [*c]const u8) c_int {
    var path = arg_path;
    _ = &path;
    const unix_shells = struct {
        var static: [8][*c]const u8 = [8][*c]const u8{
            "sh",
            "bash",
            "dash",
            "ksh",
            "rksh",
            "zsh",
            "ash",
            null,
        };
    };
    _ = &unix_shells;
    var s: [*c][*c]const u8 = undefined;
    _ = &s;
    var cp: [*c]const u8 = path + strlen(path);
    _ = &cp;
    while ((cp > path) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[
        @as(u8, @bitCast((blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk cp + @as(usize, @intCast(tmp)) else break :blk cp - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))
    ]))) & @as(c_int, 32768)) != @as(c_int, 0))) {
        cp -= 1;
    }
    {
        s = @as([*c][*c]const u8, @ptrCast(@alignCast(&unix_shells.static)));
        while (s.* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) : (s += 1) {
            if (strcmp(cp, s.*) == @as(c_int, 0)) return 1;
        }
    }
    return 0;
}

pub fn block_sigs() callconv(.C) void {
    _ = sigprocmask(@as(c_int, 0), &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
}

pub fn unblock_sigs() callconv(.C) void {
    _ = sigprocmask(@as(c_int, 1), &fatal_signal_set, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
}

pub export fn unblock_all_sigs() void {
    var empty: sigset_t = undefined;
    _ = &empty;
    _ = sigemptyset(&empty);
    _ = sigprocmask(@as(c_int, 2), &empty, @as([*c]sigset_t, @ptrFromInt(@as(c_int, 0))));
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/job.c:533:1: warning: unable to translate function, demoted to extern
pub extern fn child_error(arg_child_1: ?*struct_child, arg_exit_code: c_int, arg_exit_sig: c_int, arg_coredump: c_int, arg_ignored: c_int) callconv(.C) void;

pub var dead_children: c_uint = 0;

pub export fn child_handler(arg_sig: c_int) void {
    var sig = arg_sig;
    _ = &sig;
    dead_children +%= 1;
    jobserver_signal();
}

pub extern var shell_function_pid: pid_t;

// src/job.c:713:15: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:633:1: warning: unable to translate function, demoted to extern
pub extern fn reap_children(arg_block: c_int, arg_err: c_int) void;

pub export fn free_childbase(arg_child_1: ?*struct_childbase) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    if (child_1.*.environment != null) {
        var ep: [*c][*c]u8 = child_1.*.environment;
        _ = &ep;
        while (ep.* != null) {
            free(@as(?*anyopaque, @ptrCast((blk: {
                const ref = &ep;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*)));
        }
        free(@as(?*anyopaque, @ptrCast(child_1.*.environment)));
    }
    free(@as(?*anyopaque, @ptrCast(child_1.*.cmd_name)));
}

pub fn free_child(arg_child_1: ?*struct_child) callconv(.C) void {
    var child_1 = arg_child_1;
    _ = &child_1;
    output_close(&child_1.*.output);
    if (!(jobserver_tokens != 0)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) +% strlen(child_1.*.file.*.name), "INTERNAL: Freeing child %p (%s) but no tokens left", child_1, child_1.*.file.*.name);
    }
    if ((jobserver_enabled() != 0) and (jobserver_tokens > @as(c_uint, @bitCast(@as(c_int, 1))))) {
        jobserver_release(@as(c_int, 1));
        while (true) {
            if ((@as(c_int, 4) & db_level) != 0) {
                _ = printf(gettext("Released token for child %p (%s).\n"), child_1, child_1.*.file.*.name);
                _ = fflush(stdout);
            }
            if (!false) break;
        }
    }
    jobserver_tokens -%= 1;
    if (handling_fatal_signal != 0) return;
    if (child_1.*.command_lines != null) {
        var i: c_uint = undefined;
        _ = &i;
        {
            i = 0;
            while (i < @as(c_uint, @bitCast(@as(c_uint, child_1.*.file.*.cmds.*.ncommand_lines)))) : (i +%= 1) {
                free(@as(?*anyopaque, @ptrCast(child_1.*.command_lines[i])));
            }
        }
        free(@as(?*anyopaque, @ptrCast(child_1.*.command_lines)));
    }
    free_childbase(@as(?*struct_childbase, @ptrCast(@alignCast(child_1))));
    free(@as(?*anyopaque, @ptrCast(child_1)));
}

// src/job.c:1188:5: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:1174:1: warning: unable to translate function, demoted to extern
pub extern fn start_job_command(arg_child_1: ?*struct_child) callconv(.C) void;

pub fn start_waiting_job(arg_c: ?*struct_child) callconv(.C) c_int {
    var c = arg_c;
    _ = &c;
    var f: ?*struct_file = c.*.file;
    _ = &f;
    c.*.remote = @as(c_uint, @bitCast(start_remote_job_p(@as(c_int, 1))));
    if (!(c.*.remote != 0) and ((job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) and (load_too_high() != 0))) {
        set_command_state(f, @as(c_uint, @bitCast(cs_running)));
        c.*.next = waiting_jobs;
        waiting_jobs = c;
        return 0;
    }
    start_job_command(c);
    while (true) {
        switch (@as(c_int, @bitCast(f.*.command_state))) {
            @as(c_int, 2) => {
                c.*.next = children;
                if (c.*.pid > @as(c_int, 0)) {
                    while (true) {
                        if ((@as(c_int, 4) & db_level) != 0) {
                            _ = printf(gettext("Putting child %p (%s) PID %s%s on the chain.\n"), c, c.*.file.*.name, pid2str(c.*.pid), if (@as(c_int, @bitCast(c.*.remote)) != 0) gettext(" (remote)") else "");
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    job_slots_used +%= 1;
                    _ = @as(c_int, 0);
                    c.*.jobslot = 1;
                }
                children = c;
                unblock_sigs();
                break;
            },
            @as(c_int, 0) => {
                f.*.update_status = @as(c_uint, @bitCast(us_success));
                notice_finished_file(f);
                free_child(c);
                break;
            },
            @as(c_int, 3) => {
                notice_finished_file(f);
                free_child(c);
                break;
            },
            else => {
                _ = @as(c_int, 0);
                break;
            },
        }
        break;
    }
    return 1;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/job.c:1687:1: warning: unable to translate function, demoted to extern
pub extern fn new_job(arg_file_1: ?*struct_file) void;

pub fn job_next_command(arg_child_1: ?*struct_child) callconv(.C) c_int {
    var child_1 = arg_child_1;
    _ = &child_1;
    while ((child_1.*.command_ptr == null) or (@as(c_int, @bitCast(@as(c_uint, child_1.*.command_ptr.*))) == @as(c_int, '\x00'))) {
        if (child_1.*.command_line == @as(c_uint, @bitCast(@as(c_uint, child_1.*.file.*.cmds.*.ncommand_lines)))) {
            child_1.*.command_ptr = null;
            child_1.*.file.*.cmds.*.fileinfo.offset = 0;
            return 0;
        } else {
            child_1.*.command_ptr = child_1.*.command_lines[
                blk: {
                    const ref = &child_1.*.command_line;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ];
        }
    }
    child_1.*.file.*.cmds.*.fileinfo.offset = @as(c_ulong, @bitCast(@as(c_ulong, child_1.*.command_line -% @as(c_uint, @bitCast(@as(c_int, 1))))));
    return 1;
}

pub const LOAD_WEIGHT_A = @as(f64, 0.25);
pub const LOAD_WEIGHT_B = @as(f64, 0.25);

pub fn load_too_high() callconv(.C) c_int {
    const last_sec = struct {
        var static: f64 = @import("std").mem.zeroes(f64);
    };
    _ = &last_sec;
    const last_now = struct {
        var static: time_t = @import("std").mem.zeroes(time_t);
    };
    _ = &last_now;
    const proc_fd = struct {
        var static: c_int = -@as(c_int, 2);
    };
    _ = &proc_fd;
    var load: f64 = undefined;
    _ = &load;
    var guess: f64 = undefined;
    _ = &guess;
    var now: time_t = undefined;
    _ = &now;
    if (max_load_average < @as(f64, @floatFromInt(@as(c_int, 0)))) return 0;
    if (proc_fd.static == -@as(c_int, 2)) {
        while (((blk: {
            const tmp = open("/proc/loadavg", @as(c_int, 0));
            proc_fd.static = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (proc_fd.static < @as(c_int, 0)) {
            while (true) {
                if ((@as(c_int, 4) & db_level) != 0) {
                    _ = printf("Using system load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
        } else {
            while (true) {
                if ((@as(c_int, 4) & db_level) != 0) {
                    _ = printf("Using /proc/loadavg load detection method.\n");
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            fd_noinherit(proc_fd.static);
        }
    }
    if (proc_fd.static >= @as(c_int, 0)) {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(lseek(proc_fd.static, @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0))))));
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r >= @as(c_int, 0)) {
            var avg: [65]u8 = undefined;
            _ = &avg;
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(proc_fd.static, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&avg))))), @as(usize, @bitCast(@as(c_long, @as(c_int, 64)))))))));
                r = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (r >= @as(c_int, 0)) {
                var p: [*c]const u8 = undefined;
                _ = &p;
                avg[@as(c_uint, @intCast(r))] = '\x00';
                p = strchr(@as([*c]u8, @ptrCast(@alignCast(&avg))), @as(c_int, ' '));
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ' '));
                }
                if (p != null) {
                    p = strchr(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as(c_int, ' '));
                }
                if ((p != null) and ((@as(c_uint, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 1)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9))))) {
                    var cnt: c_uint = make_toui(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), null);
                    _ = &cnt;
                    while (true) {
                        if ((@as(c_int, 4) & db_level) != 0) {
                            _ = printf("Running: system = %u / make = %u (max requested = %f)\n", cnt, job_slots_used, max_load_average);
                            _ = fflush(stdout);
                        }
                        if (!false) break;
                    }
                    return @intFromBool(@as(f64, @floatFromInt(cnt)) > max_load_average);
                }
                while (true) {
                    if ((@as(c_int, 4) & db_level) != 0) {
                        _ = printf("Failed to parse /proc/loadavg: %s\n", @as([*c]u8, @ptrCast(@alignCast(&avg))));
                        _ = fflush(stdout);
                    }
                    if (!false) break;
                }
            }
        }
        if (r < @as(c_int, 0)) while (true) {
            if ((@as(c_int, 4) & db_level) != 0) {
                _ = printf("Failed to read /proc/loadavg: %s\n", strerror(__errno_location().*));
                _ = fflush(stdout);
            }
            if (!false) break;
        };
        _ = close(proc_fd.static);
        proc_fd.static = -@as(c_int, 1);
    }
    __errno_location().* = 0;
    if (getloadavg(&load, @as(c_int, 1)) != @as(c_int, 1)) {
        const lossage = struct {
            var static: c_int = -@as(c_int, 1);
        };
        _ = &lossage;
        if ((lossage.static == -@as(c_int, 1)) or (__errno_location().* != lossage.static)) {
            if (__errno_location().* == @as(c_int, 0)) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("cannot enforce load limits on this operating system"));
            } else {
                perror_with_name(gettext("cannot enforce load limit: "), "getloadavg");
            }
        }
        lossage.static = __errno_location().*;
        load = 0;
    }
    now = time(null);
    if (last_now.static < now) {
        if (last_now.static == (now - @as(time_t, @bitCast(@as(c_long, @as(c_int, 1)))))) {
            last_sec.static = 0.25 * @as(f64, @floatFromInt(job_counter));
        } else {
            last_sec.static = 0.0;
        }
        job_counter = 0;
        last_now.static = now;
    }
    guess = load + (0.25 * (@as(f64, @floatFromInt(job_counter)) + last_sec.static));
    while (true) {
        if ((@as(c_int, 4) & db_level) != 0) {
            _ = printf("Estimated system load = %f (actual = %f) (max requested = %f)\n", guess, load, max_load_average);
            _ = fflush(stdout);
        }
        if (!false) break;
    }
    return @intFromBool(guess >= max_load_average);
}

pub export fn start_waiting_jobs() void {
    var job: ?*struct_child = undefined;
    _ = &job;
    if (waiting_jobs == null) return;
    while (true) {
        reap_children(@as(c_int, 0), @as(c_int, 0));
        job = waiting_jobs;
        waiting_jobs = job.*.next;
        if (!((start_waiting_job(job) != 0) and (waiting_jobs != null))) break;
    }
    return;
}

// src/job.c:2373:5: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:2312:1: warning: unable to translate function, demoted to extern
pub extern fn child_execute_job(arg_child_1: ?*struct_childbase, arg_good_stdin: c_int, arg_argv: [*c][*c]u8) pid_t;

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/job.c:2513:1: warning: unable to translate function, demoted to extern
pub extern fn exec_command(arg_argv: [*c][*c]u8, arg_envp: [*c][*c]u8) pid_t;

// src/job.c:2946:5: warning: TODO implement translation of stmt class GotoStmtClass

// src/job.c:2732:1: warning: unable to translate function, demoted to extern
pub extern fn construct_command_argv_internal(arg_line: [*c]u8, arg_restp: [*c][*c]u8, arg_shell: [*c]const u8, arg_shellflags: [*c]const u8, arg_ifs: [*c]const u8, arg_flags: c_int, arg_batch_filename: [*c][*c]u8) callconv(.C) [*c][*c]u8;

pub export fn construct_command_argv(arg_line: [*c]u8, arg_restp: [*c][*c]u8, arg_file_1: ?*struct_file, arg_cmd_flags: c_int, arg_batch_filename: [*c][*c]u8) [*c][*c]u8 {
    var line = arg_line;
    _ = &line;
    var restp = arg_restp;
    _ = &restp;
    var file_1 = arg_file_1;
    _ = &file_1;
    var cmd_flags = arg_cmd_flags;
    _ = &cmd_flags;
    var batch_filename = arg_batch_filename;
    _ = &batch_filename;
    var shell: [*c]u8 = undefined;
    _ = &shell;
    var ifs: [*c]u8 = undefined;
    _ = &ifs;
    var shellflags: [*c]u8 = undefined;
    _ = &shellflags;
    var argv: [*c][*c]u8 = undefined;
    _ = &argv;
    {
        var @"var": ?*struct_variable = undefined;
        _ = &@"var";
        var save: c_int = warn_undefined_variables_flag;
        _ = &save;
        warn_undefined_variables_flag = 0;
        shell = allocated_variable_expand_for_file("$(SHELL)", file_1);
        @"var" = lookup_variable_for_file(".SHELLFLAGS", @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), file_1);
        if (!(@"var" != null)) {
            shellflags = xstrdup("");
        } else if ((posix_pedantic != 0) and (@as(c_int, @bitCast(@"var".*.origin)) == o_default)) {
            shellflags = xstrdup(if ((cmd_flags & @as(c_int, 4)) != @as(c_int, 0)) "-c" else "-ec");
        } else {
            shellflags = allocated_variable_expand_for_file(@"var".*.value, file_1);
        }
        ifs = allocated_variable_expand_for_file("$(IFS)", file_1);
        warn_undefined_variables_flag = save;
    }
    argv = construct_command_argv_internal(line, restp, shell, shellflags, ifs, cmd_flags, batch_filename);
    free(@as(?*anyopaque, @ptrCast(shell)));
    free(@as(?*anyopaque, @ptrCast(shellflags)));
    free(@as(?*anyopaque, @ptrCast(ifs)));
    return argv;
}

pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
