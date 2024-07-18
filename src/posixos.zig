const root = @import("root.zig");

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

const mode_t = __mode_t;

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

extern fn fstat(__fd: c_int, __buf: [*c]struct_stat) c_int;

extern fn umask(__mask: __mode_t) __mode_t;

extern fn mkfifo(__path: [*c]const u8, __mode: __mode_t) c_int;

const sig_atomic_t = __sig_atomic_t;

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

extern fn tmpfile() [*c]FILE;

extern fn fclose(__stream: [*c]FILE) c_int;
extern fn fflush(__stream: [*c]FILE) c_int;

extern fn printf(__format: [*c]const u8, ...) c_int;
extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;

extern fn perror(__s: [*c]const u8) void;

extern fn fileno(__stream: [*c]FILE) c_int;

extern fn __errno_location() [*c]c_int;

extern fn close(__fd: c_int) c_int;

extern fn write(__fd: c_int, __buf: ?*const anyopaque, __n: usize) isize;

extern fn pipe(__pipedes: [*c]c_int) c_int;

extern fn dup(__fd: c_int) c_int;

extern fn unlink(__name: [*c]const u8) c_int;

extern fn free(__ptr: ?*anyopaque) void;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = @import("makeint.zig").floc;

const @"error" = @import("output.zig").@"error";
const fatal = @import("output.zig").fatal;

extern fn pfatal_with_name([*c]const u8) noreturn;
extern fn perror_with_name([*c]const u8, [*c]const u8) void;

extern fn make_pid() pid_t;
extern fn xmalloc(usize) ?*anyopaque;

extern fn xstrdup([*c]const u8) [*c]u8;

extern fn get_tmpdir() [*c]const u8;
extern fn get_tmpfd([*c][*c]u8) c_int;

const handling_fatal_signal = @import("commands.zig").handling_fatal_signal;
const struct_flock = extern struct {
    l_type: c_short = @import("std").mem.zeroes(c_short),
    l_whence: c_short = @import("std").mem.zeroes(c_short),
    l_start: __off_t = @import("std").mem.zeroes(__off_t),
    l_len: __off_t = @import("std").mem.zeroes(__off_t),
    l_pid: __pid_t = @import("std").mem.zeroes(__pid_t),
};

extern fn fcntl(__fd: c_int, __cmd: c_int, ...) c_int;

extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;

extern var db_level: c_int;

const js_none: c_int = 0;
const js_pipe: c_int = 1;
const js_fifo: c_int = 2;

const EBADF = @as(c_int, 9);

const errno = __errno_location().*;

const F_GETFD = @as(c_int, 1);

pub inline fn FD_OK(_f: anytype) @TypeOf(fcntl(_f, F_GETFD) != -@as(c_int, 1)) {
    _ = &_f;
    return fcntl(_f, F_GETFD) != -@as(c_int, 1);
}

pub inline fn STREAM_OK(_s: anytype) @TypeOf((fcntl(fileno(_s), F_GETFD) != -@as(c_int, 1)) or (errno != EBADF)) {
    _ = &_s;
    return (fcntl(fileno(_s), F_GETFD) != -@as(c_int, 1)) or (errno != EBADF);
}

pub export fn check_io_state() c_uint {
    const state = struct {
        var static: c_uint = 1;
    };
    _ = &state;
    if (state.static != @as(c_uint, @bitCast(@as(c_int, 1)))) return state.static;
    if ((fcntl(fileno(stdin), @as(c_int, 1)) != -@as(c_int, 1)) or (__errno_location().* != @as(c_int, 9))) {
        state.static |= @as(c_uint, @bitCast(@as(c_int, 4)));
    }
    if ((fcntl(fileno(stdout), @as(c_int, 1)) != -@as(c_int, 1)) or (__errno_location().* != @as(c_int, 9))) {
        state.static |= @as(c_uint, @bitCast(@as(c_int, 8)));
    }
    if ((fcntl(fileno(stderr), @as(c_int, 1)) != -@as(c_int, 1)) or (__errno_location().* != @as(c_int, 9))) {
        state.static |= @as(c_uint, @bitCast(@as(c_int, 16)));
    }
    if ((state.static & @as(c_uint, @bitCast(@as(c_int, 8) | @as(c_int, 16)))) == @as(c_uint, @bitCast(@as(c_int, 8) | @as(c_int, 16)))) {
        var stbuf_o: struct_stat = undefined;
        _ = &stbuf_o;
        var stbuf_e: struct_stat = undefined;
        _ = &stbuf_e;
        if ((((fstat(fileno(stdout), &stbuf_o) == @as(c_int, 0)) and (fstat(fileno(stderr), &stbuf_e) == @as(c_int, 0))) and (stbuf_o.st_dev == stbuf_e.st_dev)) and (stbuf_o.st_ino == stbuf_e.st_ino)) {
            state.static |= @as(c_uint, @bitCast(@as(c_int, 2)));
        }
    }
    return state.static;
}

pub const FIFO_PREFIX = "fifo:";

pub var job_root: u8 = 0;

pub var job_fds: [2]c_int = [2]c_int{
    -@as(c_int, 1),
    -@as(c_int, 1),
};

pub var job_rfd: c_int = -@as(c_int, 1);

pub var token: u8 = '+';

pub const enum_js_type = c_uint;
pub var js_type: enum_js_type = @as(c_uint, @bitCast(js_none));

pub var fifo_name: [*c]u8 = null;

pub fn make_job_rfd() callconv(.C) c_int {
    return 0;
}

pub fn set_blocking(arg_fd: c_int, arg_blocking: c_int) callconv(.C) void {
    var fd = arg_fd;
    _ = &fd;
    var blocking = arg_blocking;
    _ = &blocking;
    var flags: c_int = undefined;
    _ = &flags;
    while (((blk: {
        const tmp = fcntl(fd, @as(c_int, 3));
        flags = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (flags >= @as(c_int, 0)) {
        var r: c_int = undefined;
        _ = &r;
        flags = if (blocking != 0) flags & ~@as(c_int, 2048) else flags | @as(c_int, 2048);
        while (((blk: {
            const tmp = fcntl(fd, @as(c_int, 4), flags);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(c_int, 0)) {
            pfatal_with_name("fcntl(O_NONBLOCK)");
        }
    }
}

pub export fn jobserver_setup(arg_slots: c_int, arg_style: [*c]const u8) c_uint {
    var slots = arg_slots;
    _ = &slots;
    var style = arg_style;
    _ = &style;
    var r: c_int = undefined;
    _ = &r;
    if (!(style != null) or (strcmp(style, "fifo") == @as(c_int, 0))) {
        var tmpdir: [*c]const u8 = get_tmpdir();
        _ = &tmpdir;
        fifo_name = @as([*c]u8, @ptrCast(@alignCast(xmalloc(((strlen(tmpdir) +% (@sizeOf([7]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))))));
        _ = sprintf(fifo_name, "%s/GMfifo%lld", tmpdir, @as(c_longlong, @bitCast(@as(c_longlong, make_pid()))));
        while (((blk: {
            const tmp = mkfifo(fifo_name, @as(__mode_t, @bitCast(@as(c_int, 384))));
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(c_int, 0)) {
            perror_with_name("jobserver mkfifo: ", fifo_name);
            free(@as(?*anyopaque, @ptrCast(fifo_name)));
            fifo_name = null;
        } else {
            while (((blk: {
                const tmp = open(fifo_name, @as(c_int, 0) | @as(c_int, 2048));
                job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] < @as(c_int, 0)) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(fifo_name) +% strlen(strerror(__errno_location().*)), gettext("cannot open jobserver %s: %s"), fifo_name, strerror(__errno_location().*));
            }
            while (((blk: {
                const tmp = open(fifo_name, @as(c_int, 1));
                job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] < @as(c_int, 0)) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(fifo_name) +% strlen(strerror(__errno_location().*)), gettext("cannot open jobserver %s: %s"), fifo_name, strerror(__errno_location().*));
            }
            js_type = @as(c_uint, @bitCast(js_fifo));
        }
    }
    if (js_type == @as(c_uint, @bitCast(js_none))) {
        if ((style != null) and (strcmp(style, "pipe") != @as(c_int, 0))) {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(style), gettext("unknown jobserver auth style '%s'"), style);
        }
        while (((blk: {
            const tmp = pipe(@as([*c]c_int, @ptrCast(@alignCast(&job_fds))));
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r < @as(c_int, 0)) {
            pfatal_with_name(gettext("creating jobs pipe"));
        }
        js_type = @as(c_uint, @bitCast(js_pipe));
    }
    fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))]);
    fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    if (make_job_rfd() < @as(c_int, 0)) {
        pfatal_with_name(gettext("duping jobs pipe"));
    }
    while ((blk: {
        const ref = &slots;
        const tmp = ref.*;
        ref.* -= 1;
        break :blk tmp;
    }) != 0) {
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(write(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))], @as(?*const anyopaque, @ptrCast(&token)), @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))))));
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (r != @as(c_int, 1)) {
            pfatal_with_name(gettext("init jobserver pipe"));
        }
    }
    set_blocking(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))], @as(c_int, 0));
    job_root = 1;
    return 1;
}

pub export fn jobserver_parse_auth(arg_auth: [*c]const u8) c_uint {
    var auth = arg_auth;
    _ = &auth;
    var rfd: c_int = undefined;
    _ = &rfd;
    var wfd: c_int = undefined;
    _ = &wfd;
    if (strncmp(auth, "fifo:", @sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(c_int, 0)) {
        fifo_name = xstrdup(auth + (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
        while (((blk: {
            const tmp = open(fifo_name, @as(c_int, 0));
            job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] < @as(c_int, 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(fifo_name) +% strlen(strerror(__errno_location().*)), gettext("cannot open jobserver %s: %s"), fifo_name, strerror(__errno_location().*));
            return 0;
        }
        while (((blk: {
            const tmp = open(fifo_name, @as(c_int, 1));
            job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] < @as(c_int, 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(fifo_name) +% strlen(strerror(__errno_location().*)), gettext("cannot open jobserver %s: %s"), fifo_name, strerror(__errno_location().*));
            return 0;
        }
        js_type = @as(c_uint, @bitCast(js_fifo));
    } else if (sscanf(auth, "%d,%d", &rfd, &wfd) == @as(c_int, 2)) {
        if ((rfd == -@as(c_int, 2)) or (wfd == -@as(c_int, 2))) return 0;
        if (!(fcntl(rfd, @as(c_int, 1)) != -@as(c_int, 1)) or !(fcntl(wfd, @as(c_int, 1)) != -@as(c_int, 1))) return 0;
        job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] = rfd;
        job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] = wfd;
        js_type = @as(c_uint, @bitCast(js_pipe));
    } else {
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(auth), gettext("invalid --jobserver-auth string '%s'"), auth);
        return 0;
    }
    if (make_job_rfd() < @as(c_int, 0)) {
        if (__errno_location().* != @as(c_int, 9)) {
            pfatal_with_name("jobserver readfd");
        }
        jobserver_clear();
        return 0;
    }
    set_blocking(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))], @as(c_int, 0));
    fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))]);
    fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    return 1;
}

pub export fn jobserver_get_auth() [*c]u8 {
    var auth: [*c]u8 = undefined;
    _ = &auth;
    if (js_type == @as(c_uint, @bitCast(js_fifo))) {
        auth = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(fifo_name) +% (@sizeOf([6]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = sprintf(auth, "fifo:%s", fifo_name);
    } else {
        auth = @as([*c]u8, @ptrCast(@alignCast(xmalloc(((((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2))))))));
        _ = sprintf(auth, "%d,%d", job_fds[@as(c_uint, @intCast(@as(c_int, 0)))], job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    }
    return auth;
}

pub export fn jobserver_get_invalid_auth() [*c]const u8 {
    if (js_type == @as(c_uint, @bitCast(js_fifo))) {
        return null;
    }
    return " --jobserver-auth=-2,-2";
}

pub export fn jobserver_enabled() c_uint {
    return @as(c_uint, @intFromBool(js_type != @as(c_uint, @bitCast(js_none))));
}

pub export fn jobserver_clear() void {
    if (job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] >= @as(c_int, 0)) {
        _ = close(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))]);
    }
    if (job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] >= @as(c_int, 0)) {
        _ = close(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    }
    if (job_rfd >= @as(c_int, 0)) {
        _ = close(job_rfd);
    }
    job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] = blk: {
        const tmp = blk_1: {
            const tmp_2 = -@as(c_int, 1);
            job_rfd = tmp_2;
            break :blk_1 tmp_2;
        };
        job_fds[@as(c_uint, @intCast(@as(c_int, 1)))] = tmp;
        break :blk tmp;
    };
    if (fifo_name != null) {
        if (job_root != 0) {
            var r: c_int = undefined;
            _ = &r;
            while (((blk: {
                const tmp = unlink(fifo_name);
                r = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        }
        if (!(handling_fatal_signal != 0)) {
            free(@as(?*anyopaque, @ptrCast(fifo_name)));
            fifo_name = null;
        }
    }
    js_type = @as(c_uint, @bitCast(js_none));
}

pub export fn jobserver_release(arg_is_fatal: c_int) void {
    var is_fatal = arg_is_fatal;
    _ = &is_fatal;
    var r: c_int = undefined;
    _ = &r;
    while (((blk: {
        const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(write(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))], @as(?*const anyopaque, @ptrCast(&token)), @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))))));
        r = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (r != @as(c_int, 1)) {
        if (is_fatal != 0) {
            pfatal_with_name(gettext("write jobserver"));
        }
        perror_with_name("write", "");
    }
}

// unsigned int
// jobserver_acquire_all ()

pub export fn jobserver_pre_child(arg_recursive: c_int) void {
    var recursive = arg_recursive;
    _ = &recursive;
    if ((recursive != 0) and (js_type == @as(c_uint, @bitCast(js_pipe)))) {
        fd_inherit(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))]);
        fd_inherit(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    }
}

pub export fn jobserver_post_child(arg_recursive: c_int) void {
    var recursive = arg_recursive;
    _ = &recursive;
    if ((recursive != 0) and (js_type == @as(c_uint, @bitCast(js_pipe)))) {
        fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 0)))]);
        fd_noinherit(job_fds[@as(c_uint, @intCast(@as(c_int, 1)))]);
    }
}

pub export fn jobserver_signal() void {
    if (job_rfd >= @as(c_int, 0)) {
        _ = close(job_rfd);
        job_rfd = -@as(c_int, 1);
    }
}

pub export fn jobserver_pre_acquire() void {
    if (((job_rfd < @as(c_int, 0)) and (job_fds[@as(c_uint, @intCast(@as(c_int, 0)))] >= @as(c_int, 0))) and (make_job_rfd() < @as(c_int, 0))) {
        pfatal_with_name(gettext("duping jobs pipe"));
    }
}

// /usr/include/x86_64-linux-gnu/bits/select.h:36:5: warning: TODO implement translation of stmt class GCCAsmStmtClass

// src/posixos.c:459:1: warning: unable to translate function, demoted to extern
pub extern fn jobserver_acquire(arg_timeout: c_int) c_uint;

pub const MUTEX_PREFIX = "fnm:";

pub var osync_handle: c_int = -@as(c_int, 1);

pub var osync_tmpfile: [*c]u8 = null;

pub var sync_root: c_uint = 0;

pub export fn osync_enabled() c_uint {
    return @as(c_uint, @intFromBool(osync_handle >= @as(c_int, 0)));
}

pub export fn osync_setup() void {
    osync_handle = get_tmpfd(&osync_tmpfile);
    fd_noinherit(osync_handle);
    sync_root = 1;
}

pub export fn osync_get_mutex() [*c]u8 {
    var mutex: [*c]u8 = null;
    _ = &mutex;
    if (osync_enabled() != 0) {
        mutex = @as([*c]u8, @ptrCast(@alignCast(xmalloc((strlen(osync_tmpfile) +% (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))));
        _ = sprintf(mutex, "fnm:%s", osync_tmpfile);
    }
    return mutex;
}

pub export fn osync_parse_mutex(arg_mutex: [*c]const u8) c_uint {
    var mutex = arg_mutex;
    _ = &mutex;
    if (strncmp(mutex, "fnm:", @sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(c_int, 0)) {
        @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(mutex), gettext("invalid --sync-mutex string '%s'"), mutex);
        return 0;
    }
    free(@as(?*anyopaque, @ptrCast(osync_tmpfile)));
    osync_tmpfile = xstrdup(mutex + (@sizeOf([5]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))));
    while (((blk: {
        const tmp = open(osync_tmpfile, @as(c_int, 1));
        osync_handle = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (osync_handle < @as(c_int, 0)) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(osync_tmpfile) +% strlen(strerror(__errno_location().*)), gettext("cannot open output sync mutex %s: %s"), osync_tmpfile, strerror(__errno_location().*));
    }
    fd_noinherit(osync_handle);
    return 1;
}

pub export fn osync_clear() void {
    if (osync_handle >= @as(c_int, 0)) {
        _ = close(osync_handle);
        osync_handle = -@as(c_int, 1);
    }
    if ((sync_root != 0) and (osync_tmpfile != null)) {
        var r: c_int = undefined;
        _ = &r;
        while (((blk: {
            const tmp = unlink(osync_tmpfile);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        free(@as(?*anyopaque, @ptrCast(osync_tmpfile)));
        osync_tmpfile = null;
    }
}

pub export fn osync_acquire() c_uint {
    if (osync_enabled() != 0) {
        var fl: struct_flock = undefined;
        _ = &fl;
        fl.l_type = 1;
        fl.l_whence = 0;
        fl.l_start = 0;
        fl.l_len = 1;
        if (fcntl(osync_handle, @as(c_int, 7), &fl) == -@as(c_int, 1)) {
            perror("fcntl()");
            return 0;
        }
    }
    return 1;
}

pub export fn osync_release() void {
    if (osync_enabled() != 0) {
        var fl: struct_flock = undefined;
        _ = &fl;
        fl.l_type = 2;
        fl.l_whence = 0;
        fl.l_start = 0;
        fl.l_len = 1;
        if (fcntl(osync_handle, @as(c_int, 7), &fl) == -@as(c_int, 1)) {
            perror("fcntl()");
        }
    }
}

pub export fn get_bad_stdin() c_int {
    const bad_stdin = struct {
        var static: c_int = -@as(c_int, 1);
    };
    _ = &bad_stdin;
    if (bad_stdin.static == -@as(c_int, 1)) {
        var pd: [2]c_int = undefined;
        _ = &pd;
        if (pipe(@as([*c]c_int, @ptrCast(@alignCast(&pd)))) == @as(c_int, 0)) {
            _ = close(pd[@as(c_uint, @intCast(@as(c_int, 1)))]);
            bad_stdin.static = pd[@as(c_uint, @intCast(@as(c_int, 0)))];
            fd_noinherit(bad_stdin.static);
        }
    }
    return bad_stdin.static;
}

pub export fn fd_inherit(arg_fd: c_int) void {
    var fd = arg_fd;
    _ = &fd;
    var flags: c_int = undefined;
    _ = &flags;
    while (((blk: {
        const tmp = fcntl(fd, @as(c_int, 1));
        flags = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (flags >= @as(c_int, 0)) {
        var r: c_int = undefined;
        _ = &r;
        flags &= ~@as(c_int, 1);
        while (((blk: {
            const tmp = fcntl(fd, @as(c_int, 2), flags);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    }
}

pub export fn fd_noinherit(arg_fd: c_int) void {
    var fd = arg_fd;
    _ = &fd;
    var flags: c_int = undefined;
    _ = &flags;
    while (((blk: {
        const tmp = fcntl(fd, @as(c_int, 1));
        flags = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (flags >= @as(c_int, 0)) {
        var r: c_int = undefined;
        _ = &r;
        flags |= @as(c_int, 1);
        while (((blk: {
            const tmp = fcntl(fd, @as(c_int, 2), flags);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    }
}

pub const FD_CLOEXEC = @as(c_int, 1);

pub export fn fd_set_append(arg_fd: c_int) void {
    var fd = arg_fd;
    _ = &fd;
    var stbuf: struct_stat = undefined;
    _ = &stbuf;
    var flags: c_int = undefined;
    _ = &flags;
    if ((fstat(fd, &stbuf) == @as(c_int, 0)) and ((stbuf.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 32768))))) {
        flags = fcntl(fd, @as(c_int, 3), @as(c_int, 0));
        if (flags >= @as(c_int, 0)) {
            var r: c_int = undefined;
            _ = &r;
            while (((blk: {
                const tmp = fcntl(fd, @as(c_int, 4), flags | @as(c_int, 1024));
                r = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        }
    }
}

pub export fn os_anontmp() c_int {
    var tdir: [*c]const u8 = get_tmpdir();
    _ = &tdir;
    var fd: c_int = -@as(c_int, 1);
    _ = &fd;
    const tmpfile_works = struct {
        var static: c_uint = 1;
    };
    _ = &tmpfile_works;
    if (tmpfile_works.static != 0) {
        while (((blk: {
            const tmp = open(tdir, (@as(c_int, 2) | (@as(c_int, 4194304) | @as(c_int, 65536))) | @as(c_int, 128), @as(c_int, 384));
            fd = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (fd >= @as(c_int, 0)) return fd;
        while (true) {
            if ((@as(c_int, 1) & db_level) != 0) {
                _ = printf(gettext("Cannot open '%s' with O_TMPFILE: %s.\n"), tdir, strerror(__errno_location().*));
                _ = fflush(stdout);
            }
            if (!false) break;
        }
        tmpfile_works.static = 0;
    }
    if ((tdir == @as([*c]const u8, @ptrCast(@alignCast("/tmp")))) or ((@as(c_int, @bitCast(@as(c_uint, tdir.*))) == @as(c_int, @bitCast(@as(c_uint, "/tmp".*)))) and ((@as(c_int, @bitCast(@as(c_uint, tdir.*))) == @as(c_int, '\x00')) or !(strcmp(tdir + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "/tmp" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
        var mask: mode_t = umask(@as(__mode_t, @bitCast(@as(c_int, 63))));
        _ = &mask;
        var tfile: [*c]FILE = undefined;
        _ = &tfile;
        while (true) {
            __errno_location().* = 0;
            tfile = tmpfile();
            if (!((tfile == null) and (__errno_location().* == @as(c_int, 4)))) break;
        }
        if (!(tfile != null)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(strerror(__errno_location().*)), "tmpfile: %s", strerror(__errno_location().*));
            return -@as(c_int, 1);
        }
        _ = umask(mask);
        while (((blk: {
            const tmp = dup(fileno(tfile));
            fd = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (fd < @as(c_int, 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(strerror(__errno_location().*)), "dup: %s", strerror(__errno_location().*));
        }
        _ = fclose(tfile);
    }
    return fd;
}
