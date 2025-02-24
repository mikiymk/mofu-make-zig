const std = @import("std");
const root = @import("root.zig");

const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __uintmax_t = c_ulong;

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

extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;

extern fn close(__fd: c_int) c_int;

extern fn read(__fd: c_int, __buf: ?*anyopaque, __nbytes: usize) isize;

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;

extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;

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

extern fn fflush(__stream: [*c]FILE) c_int;

extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;

extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;

extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;

extern fn perror(__s: [*c]const u8) void;
extern fn fileno(__stream: [*c]FILE) c_int;

// /nix/store/1l5gb4773rbqjzv49wb4h9xlmaz2zs5h-zig-0.13.0/lib/zig/libc/include/generic-glibc/bits/timex.h:81:3: warning: struct demoted to opaque type - has bitfield

extern var __tzname: [2][*c]u8;
extern var __daylight: c_int;
extern var __timezone: c_long;
extern var tzname: [2][*c]u8;

extern var daylight: c_int;
extern var timezone: c_long;

extern var getdate_err: c_int;

extern fn __errno_location() [*c]c_int;
extern var program_invocation_name: [*c]u8;
extern var program_invocation_short_name: [*c]u8;

extern fn exit(__status: c_int) noreturn;

extern fn strlen(__s: [*c]const u8) c_ulong;

extern fn strerror(__errnum: c_int) [*c]u8;

const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

// src/output.c:413:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn message(prefix: c_int, len: usize, fmt: [*c]const u8, ...) void;
// src/output.c:444:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn @"error"(flocp: [*c]const floc, len: usize, fmt: [*c]const u8, ...) void;
// src/output.c:476:1: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fatal(flocp: [*c]const floc, len: usize, fmt: [*c]const u8, ...) noreturn;
pub export fn out_of_memory() noreturn {
    _ = writebuf(fileno(stdout), @as(?*const anyopaque, @ptrCast(program)), strlen(program));
    _ = writebuf(fileno(stdout), @as(?*const anyopaque, @ptrCast(": *** virtual memory exhausted\n")), @sizeOf([32]u8) -% 1);
    exit(2);
}

extern fn should_print_dir() c_int;

pub export fn pfatal_with_name(name: [*c]const u8) noreturn {
    const err: [*c]const u8 = strerror(__errno_location().*);
    fatal(@as([*c]floc, @ptrFromInt(0)), strlen(name) +% strlen(err), gettext("%s: %s"), name, err);
}
pub export fn perror_with_name(str: [*c]const u8, name: [*c]const u8) void {
    const err: [*c]const u8 = strerror(__errno_location().*);
    @"error"(@as([*c]floc, @ptrFromInt(0)), (strlen(str) +% strlen(name)) +% strlen(err), gettext("%s%s: %s"), str, name, err);
}

extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;

extern fn get_tmpfd([*c][*c]u8) c_int;

extern fn writebuf(c_int, ?*const anyopaque, usize) isize;

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
extern fn check_io_state() c_uint;

extern fn fd_noinherit(c_int) void;
extern fn fd_set_append(c_int) void;

extern fn osync_clear() void;
extern fn osync_acquire() c_uint;
extern fn osync_release() void;

const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

pub export fn output_init(out: [*c]struct_output) void {
    if (out != null) {
        out.*.out = blk: {
            const tmp = -1;
            out.*.err = tmp;
            break :blk tmp;
        };
        out.*.syncout = @as(c_uint, @intFromBool(!!(output_sync != 0)));
        return;
    }
    fd_set_append(fileno(stdout));
    fd_set_append(fileno(stderr));
}
pub export fn output_close(out: [*c]struct_output) void {
    if (!(out != null)) {
        if (stdio_traced != 0) {
            _ = log_working_directory(0);
        }
        return;
    }
    output_dump(out);
    if (out.*.out >= 0) {
        _ = close(out.*.out);
    }
    if ((out.*.err >= 0) and (out.*.err != out.*.out)) {
        _ = close(out.*.err);
    }
    output_init(out);
}
pub export fn output_start() void {
    if ((output_context != null) and (output_context.*.syncout != 0)) if (!((output_context.*.out >= 0) or (output_context.*.err >= 0))) {
        setup_tmpfile(output_context);
    };
    if ((output_sync == 0) or (output_sync == 3)) if (!(stdio_traced != 0) and (should_print_dir() != 0)) {
        stdio_traced = @as(c_uint, @bitCast(log_working_directory(1)));
    };
}
pub export fn outputs(is_err: c_int, msg: [*c]const u8) void {
    if (!(msg != null) or (@as(c_int, @bitCast(@as(c_uint, msg.*))) == @as(c_int, '\x00'))) return;
    output_start();
    _outputs(output_context, is_err, msg);
}
pub export fn output_dump(out: [*c]struct_output) void {
    const outfd_not_empty: c_int = @intFromBool((out.*.out != -1) and (lseek(out.*.out, @as(__off_t, 0), 2) > @as(__off_t, 0)));
    const errfd_not_empty: c_int = @intFromBool((out.*.err != -1) and (lseek(out.*.err, @as(__off_t, 0), 2) > @as(__off_t, 0)));
    if ((outfd_not_empty != 0) or (errfd_not_empty != 0)) {
        var traced: c_int = 0;
        _ = &traced;
        if (!(osync_acquire() != 0)) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("warning: Cannot acquire output lock, disabling output sync."));
            osync_clear();
        }
        if ((output_sync != 3) and (should_print_dir() != 0)) {
            traced = log_working_directory(1);
        }
        if (outfd_not_empty != 0) {
            pump_from_tmp(out.*.out, stdout);
        }
        if ((errfd_not_empty != 0) and (out.*.err != out.*.out)) {
            pump_from_tmp(out.*.err, stderr);
        }
        if (traced != 0) {
            _ = log_working_directory(0);
        }
        osync_release();
        if (out.*.out != -1) {
            var e: c_int = undefined;
            _ = &e;
            _ = lseek(out.*.out, @as(__off_t, 0), 0);
            while (((blk: {
                const tmp = ftruncate(out.*.out, @as(__off_t, 0));
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
        }
        if ((out.*.err != -1) and (out.*.err != out.*.out)) {
            var e: c_int = undefined;
            _ = &e;
            _ = lseek(out.*.err, @as(__off_t, 0), 0);
            while (((blk: {
                const tmp = ftruncate(out.*.err, @as(__off_t, 0));
                e = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
        }
    }
}

fn _outputs(out: [*c]struct_output, is_err: c_int, msg: [*c]const u8) callconv(.C) void {
    var f: [*c]FILE = undefined;
    if ((out != null) and (out.*.syncout != 0)) {
        var fd: c_int = if (is_err != 0) out.*.err else out.*.out;
        _ = &fd;
        if (fd != -1) {
            var len: usize = strlen(msg);
            _ = &len;
            var r: c_int = undefined;
            _ = &r;
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(lseek(fd, @as(__off_t, 0), 2)))));
                r = tmp;
                break :blk tmp;
            }) == -1) and (__errno_location().* == 4)) {}
            _ = writebuf(fd, @as(?*const anyopaque, @ptrCast(msg)), len);
            return;
        }
    }
    f = if (is_err != 0) stderr else stdout;
    _ = fputs(msg, f);
    _ = fflush(f);
}
fn log_working_directory(entering: c_int) callconv(.C) c_int {
    const buf = struct {
        var static: [*c]u8 = null;
    };
    _ = &buf;
    const len = struct {
        var static: usize = 0;
    };
    _ = &len;
    var need: usize = undefined;
    _ = &need;
    var fmt: [*c]const u8 = undefined;
    _ = &fmt;
    var p: [*c]u8 = undefined;
    _ = &p;
    need = ((strlen(program) +% (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, 3))) +% @as(c_ulong, 2)) +% @as(c_ulong, 1);
    if (starting_directory != null) {
        need +%= @as(usize, @bitCast(strlen(starting_directory)));
    }
    if (makelevel == @as(c_uint, 0)) if (starting_directory == null) if (entering != 0) {
        fmt = gettext("%s: Entering an unknown directory\n");
    } else {
        fmt = gettext("%s: Leaving an unknown directory\n");
    } else if (entering != 0) {
        fmt = gettext("%s: Entering directory '%s'\n");
    } else {
        fmt = gettext("%s: Leaving directory '%s'\n");
    } else if (starting_directory == null) if (entering != 0) {
        fmt = gettext("%s[%u]: Entering an unknown directory\n");
    } else {
        fmt = gettext("%s[%u]: Leaving an unknown directory\n");
    } else if (entering != 0) {
        fmt = gettext("%s[%u]: Entering directory '%s'\n");
    } else {
        fmt = gettext("%s[%u]: Leaving directory '%s'\n");
    }
    need +%= @as(usize, @bitCast(strlen(fmt)));
    if (need > len.static) {
        buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), need))));
        len.static = need;
    }
    p = buf.static;
    if (print_data_base_flag != 0) {
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = '#';
        (blk: {
            const ref = &p;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = ' ';
    }
    if (makelevel == @as(c_uint, 0)) if (starting_directory == null) {
        _ = sprintf(p, fmt, program);
    } else {
        _ = sprintf(p, fmt, program, starting_directory);
    } else if (starting_directory == null) {
        _ = sprintf(p, fmt, program, makelevel);
    } else {
        _ = sprintf(p, fmt, program, makelevel, starting_directory);
    }
    _outputs(null, 0, buf.static);
    return 1;
}
fn pump_from_tmp(from: c_int, to: [*c]FILE) callconv(.C) void {
    const buffer = struct {
        var static: [8192]u8 = @import("std").mem.zeroes([8192]u8);
    };
    _ = &buffer;
    if (lseek(from, @as(__off_t, 0), 0) == @as(__off_t, @bitCast(@as(c_long, -1)))) {
        perror("lseek()");
    }
    while (true) {
        var len: c_int = undefined;
        _ = &len;
        while (((blk: {
            const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(from, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @sizeOf([8192]u8))))));
            len = tmp;
            break :blk tmp;
        }) == -1) and (__errno_location().* == 4)) {}
        if (len < 0) {
            perror("read()");
        }
        if (len <= 0) break;
        if (fwrite(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @as(c_ulong, @bitCast(@as(c_long, len))), @as(c_ulong, 1), to) < @as(c_ulong, 1)) {
            perror("fwrite()");
            break;
        }
        _ = fflush(to);
    }
}
pub export fn output_tmpfd() c_int {
    const fd: c_int = get_tmpfd(null);
    fd_set_append(fd);
    return fd;
}
fn setup_tmpfile(out: [*c]struct_output) callconv(.C) void {
    const in_setup = struct {
        var static: c_uint = 0;
    };
    _ = &in_setup;
    var io_state: c_uint = undefined;
    _ = &io_state;
    if (in_setup.static != 0) return;
    in_setup.static = 1;
    io_state = check_io_state();
    if (!((io_state & @as(c_uint, @bitCast(8 | @as(c_int, 16)))) != @as(c_uint, 0))) {
        perror_with_name("output-sync suppressed: ", "stderr");
        {
            @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("cannot open output-sync lock file, suppressing output-sync."));
            output_close(out);
            output_sync = 0;
            osync_clear();
            in_setup.static = 0;
        }
    }
    if ((io_state & @as(c_uint, 8)) != @as(c_uint, 0)) {
        var fd: c_int = output_tmpfd();
        _ = &fd;
        if (fd < 0) {
            @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("cannot open output-sync lock file, suppressing output-sync."));
            output_close(out);
            output_sync = 0;
            osync_clear();
            in_setup.static = 0;
        }
        fd_noinherit(fd);
        out.*.out = fd;
    }
    if ((io_state & @as(c_uint, @bitCast(@as(c_int, 16)))) != @as(c_uint, 0)) {
        if ((out.*.out != -1) and ((io_state & @as(c_uint, 2)) != @as(c_uint, 0))) {
            out.*.err = out.*.out;
        } else {
            var fd: c_int = output_tmpfd();
            _ = &fd;
            if (fd < 0) {
                @"error"(@as([*c]floc, @ptrFromInt(0)), @as(usize, 0), gettext("cannot open output-sync lock file, suppressing output-sync."));
                output_close(out);
                output_sync = 0;
                osync_clear();
                in_setup.static = 0;
            }
            fd_noinherit(fd);
            out.*.err = fd;
        }
    }
    in_setup.static = 0;
    return;
}
const struct_fmtstring = extern struct {
    buffer: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    size: usize = @import("std").mem.zeroes(usize),
};
var fmtbuf: struct_fmtstring = struct_fmtstring{
    .buffer = null,
    .size = @as(usize, 0),
};
fn get_buffer(arg_need: usize) callconv(.C) [*c]u8 {
    var need = arg_need;
    _ = &need;
    if (need > fmtbuf.size) {
        fmtbuf.size +%= need *% @as(usize, 2);
        fmtbuf.buffer = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(fmtbuf.buffer)), fmtbuf.size))));
    }
    fmtbuf.buffer[need -% @as(usize, 1)] = '\x00';
    return fmtbuf.buffer;
}
