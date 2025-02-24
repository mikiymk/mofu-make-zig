const __uint16_t = c_ushort;

const __uint32_t = c_uint;

const __uint64_t = c_ulong;

const __intmax_t = c_long;
const __uintmax_t = c_ulong;
const __dev_t = c_ulong;
const __uid_t = c_uint;
const __gid_t = c_uint;
const __ino_t = c_ulong;

const __mode_t = c_uint;
const __nlink_t = c_ulong;
const __off_t = c_long;
const __off64_t = c_long;

const __time_t = c_long;

const __blksize_t = c_long;
const __blkcnt_t = c_long;

const __syscall_slong_t = c_long;

const __sig_atomic_t = c_int;

const off_t = __off_t;

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

const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};

const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};

const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
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

extern var __environ: [*c][*c]u8;
extern var environ: [*c][*c]u8;

extern var optarg: [*c]u8;
extern var optind: c_int;
extern var opterr: c_int;
extern var optopt: c_int;

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

extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;

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

extern fn malloc(__size: c_ulong) ?*anyopaque;

extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;

extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;

extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;

extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;

extern fn strlen(__s: [*c]const u8) c_ulong;

const intmax_t = __intmax_t;
const uintmax_t = __uintmax_t;

extern fn gettext(__msgid: [*c]const u8) [*c]u8;

const floc = extern struct {
    filenm: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    lineno: c_ulong = @import("std").mem.zeroes(c_ulong),
    offset: c_ulong = @import("std").mem.zeroes(c_ulong),
};

extern fn fatal(flocp: [*c]const floc, length: usize, fmt: [*c]const u8, ...) noreturn;

extern fn make_toui([*c]const u8, [*c][*c]const u8) c_uint;

extern fn writebuf(c_int, ?*const anyopaque, usize) isize;
extern fn readbuf(c_int, ?*anyopaque, usize) isize;

const ar_member_func_t = ?*const fn (c_int, [*c]const u8, c_int, c_long, c_long, c_long, intmax_t, c_int, c_int, c_uint, ?*const anyopaque) callconv(.C) intmax_t;
const struct_ar_hdr = extern struct {
    ar_name: [16]u8 = @import("std").mem.zeroes([16]u8),
    ar_date: [12]u8 = @import("std").mem.zeroes([12]u8),
    ar_uid: [6]u8 = @import("std").mem.zeroes([6]u8),
    ar_gid: [6]u8 = @import("std").mem.zeroes([6]u8),
    ar_mode: [8]u8 = @import("std").mem.zeroes([8]u8),
    ar_size: [10]u8 = @import("std").mem.zeroes([10]u8),
    ar_fmag: [2]u8 = @import("std").mem.zeroes([2]u8),
};
export fn ar_scan(arg_archive: [*c]const u8, arg_function: ar_member_func_t, arg_arg: ?*const anyopaque) intmax_t {
    var archive = arg_archive;
    _ = &archive;
    var function = arg_function;
    _ = &function;
    var arg = arg_arg;
    _ = &arg;
    var namemap: [*c]u8 = null;
    _ = &namemap;
    var namemap_size: c_uint = 0;
    _ = &namemap_size;
    var desc: c_int = open(archive, 0, 0);
    _ = &desc;
    if (desc < 0) return @as(intmax_t, @bitCast(@as(c_long, -1)));
    {
        var buf: [8]u8 = undefined;
        _ = &buf;
        var nread: c_int = undefined;
        _ = &nread;
        nread = @as(c_int, @bitCast(@as(c_int, @truncate(readbuf(desc, @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(usize, 8))))));
        if ((nread != 8) or (memcmp(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buf))))), @as(?*const anyopaque, @ptrCast("!<arch>\n")), @as(c_ulong, 8)) != 0)) {
            _ = close(desc);
            return @as(intmax_t, @bitCast(@as(c_long, -2)));
        }
    }
    {
        var member_offset: c_long = 8;
        _ = &member_offset;
        while (true) {
            var nread: isize = undefined;
            _ = &nread;
            var member_header: struct_ar_hdr = undefined;
            _ = &member_header;
            var namebuf: [17]u8 = undefined;
            _ = &namebuf;
            var name: [*c]u8 = undefined;
            _ = &name;
            var is_namemap: c_int = undefined;
            _ = &is_namemap;
            var long_name: c_int = 0;
            _ = &long_name;
            var eltsize: c_long = undefined;
            _ = &eltsize;
            var eltmode: c_uint = undefined;
            _ = &eltmode;
            var eltdate: intmax_t = undefined;
            _ = &eltdate;
            var eltuid: c_int = undefined;
            _ = &eltuid;
            var eltgid: c_int = undefined;
            _ = &eltgid;
            var fnval: intmax_t = undefined;
            _ = &fnval;
            var o: off_t = undefined;
            _ = &o;
            _ = memset(@as(?*anyopaque, @ptrCast(&member_header)), @as(c_int, '\x00'), @sizeOf(struct_ar_hdr));
            while (((blk: {
                const tmp = lseek(desc, member_offset, 0);
                o = tmp;
                break :blk tmp;
            }) == @as(off_t, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
            if (o < @as(off_t, 0)) {
                _ = close(desc);
                return @as(intmax_t, @bitCast(@as(c_long, -2)));
            }
            nread = readbuf(desc, @as(?*anyopaque, @ptrCast(&member_header)), @sizeOf(struct_ar_hdr));
            if (nread == @as(isize, 0)) break;
            if ((@as(c_ulong, @bitCast(nread)) != @sizeOf(struct_ar_hdr)) or ((memcmp(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_fmag))))), @as(?*const anyopaque, @ptrCast("`\n")), @as(c_ulong, 2)) != 0) and true)) {
                _ = close(desc);
                return @as(intmax_t, @bitCast(@as(c_long, -2)));
            }
            name = @as([*c]u8, @ptrCast(@alignCast(&namebuf)));
            _ = memcpy(@as(?*anyopaque, @ptrCast(name)), @as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_name))))), @sizeOf([16]u8));
            {
                var p: [*c]u8 = name + @sizeOf([16]u8);
                _ = &p;
                while (true) {
                    p.* = '\x00';
                    if (!((p > name) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const ref = &p;
                        ref.* -= 1;
                        break :blk ref.*;
                    }).*))) == @as(c_int, ' ')))) break;
                }
                is_namemap = @intFromBool(!(strcmp(name, "//") != 0) or !(strcmp(name, "ARFILENAMES/") != 0));
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '/')) {
                    p.* = '\x00';
                }
                if ((!(is_namemap != 0) and ((@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, ' ')) or (@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '/')))) and (namemap != null)) {
                    var err: [*c]const u8 = undefined;
                    _ = &err;
                    var name_off: c_uint = make_toui(name + @as(usize, @bitCast(@as(isize, @intCast(1)))), &err);
                    _ = &name_off;
                    var name_len: usize = undefined;
                    _ = &name_len;
                    if ((err != null) or (name_off >= namemap_size)) {
                        _ = close(desc);
                        return @as(intmax_t, @bitCast(@as(c_long, -2)));
                    }
                    name = namemap + name_off;
                    name_len = strlen(name);
                    if (name_len < @as(usize, 1)) {
                        _ = close(desc);
                        return @as(intmax_t, @bitCast(@as(c_long, -2)));
                    }
                    long_name = 1;
                } else if (((@as(c_int, @bitCast(@as(c_uint, name[0]))) == @as(c_int, '#')) and (@as(c_int, @bitCast(@as(c_uint, name[1]))) == @as(c_int, '1'))) and (@as(c_int, @bitCast(@as(c_uint, name[2]))) == @as(c_int, '/'))) {
                    var err: [*c]const u8 = undefined;
                    _ = &err;
                    var name_len: c_uint = make_toui(name + @as(usize, @bitCast(@as(isize, @intCast(3)))), &err);
                    _ = &name_len;
                    if (((err != null) or (name_len == @as(c_uint, 0))) or (name_len >= @as(c_uint, @bitCast(if (@as(c_int, 4096) < @as(c_int, 2147483647)) @as(c_int, 4096) else @as(c_int, 2147483647))))) {
                        _ = close(desc);
                        return @as(intmax_t, @bitCast(@as(c_long, -2)));
                    }
                    name = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_ulong, name_len +% @as(c_uint, 1))))))));
                    nread = readbuf(desc, @as(?*anyopaque, @ptrCast(name)), @as(usize, @bitCast(@as(c_ulong, name_len))));
                    if ((nread < @as(isize, 0)) or (@as(c_uint, @bitCast(@as(c_int, @truncate(nread)))) != name_len)) {
                        _ = close(desc);
                        return @as(intmax_t, @bitCast(@as(c_long, -2)));
                    }
                    name[name_len] = '\x00';
                    long_name = 1;
                }
            }
            eltmode = @as(c_uint, @bitCast(@as(c_uint, @truncate(parse_int(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_mode))), @sizeOf([8]u8), 8, @as(uintmax_t, @bitCast(@as(c_ulong, if (!!(@as(c_uint, 0) < @as(c_uint, @bitCast(-1)))) @as(c_uint, @bitCast(-1)) else (((@as(c_uint, 1) << @intCast((@sizeOf(c_uint) *% @as(c_ulong, 8)) -% @as(c_ulong, 2))) -% @as(c_uint, 1)) *% @as(c_uint, 2)) +% @as(c_uint, 1)))), "mode", archive, name)))));
            eltsize = @as(c_long, @bitCast(parse_int(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_size))), @sizeOf([10]u8), @as(c_int, 10), @as(uintmax_t, @bitCast(if (!!(@as(c_long, 0) < @as(c_long, @bitCast(@as(c_long, -1))))) @as(c_long, @bitCast(@as(c_long, -1))) else (((@as(c_long, 1) << @intCast((@sizeOf(c_long) *% @as(c_ulong, 8)) -% @as(c_ulong, 2))) - @as(c_long, 1)) * @as(c_long, 2)) + @as(c_long, 1))), "size", archive, name)));
            eltdate = @as(intmax_t, @bitCast(parse_int(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_date))), @sizeOf([12]u8), @as(c_int, 10), @as(uintmax_t, @bitCast(if (!!(@as(intmax_t, 0) < @as(intmax_t, @bitCast(@as(c_long, -1))))) @as(intmax_t, @bitCast(@as(c_long, -1))) else (((@as(intmax_t, 1) << @intCast((@sizeOf(intmax_t) *% @as(c_ulong, 8)) -% @as(c_ulong, 2))) - @as(intmax_t, 1)) * @as(intmax_t, 2)) + @as(intmax_t, 1))), "date", archive, name)));
            eltuid = @as(c_int, @bitCast(@as(c_uint, @truncate(parse_int(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_uid))), @sizeOf([6]u8), @as(c_int, 10), @as(uintmax_t, @bitCast(@as(c_long, if (!!(0 < -1)) -1 else (((1 << @intCast((@sizeOf(c_int) *% @as(c_ulong, 8)) -% @as(c_ulong, 2))) - 1) * 2) + 1))), "uid", archive, name)))));
            eltgid = @as(c_int, @bitCast(@as(c_uint, @truncate(parse_int(@as([*c]u8, @ptrCast(@alignCast(&member_header.ar_gid))), @sizeOf([6]u8), @as(c_int, 10), @as(uintmax_t, @bitCast(@as(c_long, if (!!(0 < -1)) -1 else (((1 << @intCast((@sizeOf(c_int) *% @as(c_ulong, 8)) -% @as(c_ulong, 2))) - 1) * 2) + 1))), "gid", archive, name)))));
            fnval = function.?(desc, name, @intFromBool(!(long_name != 0)), member_offset, @as(c_long, @bitCast(@as(c_ulong, @bitCast(member_offset)) +% @sizeOf(struct_ar_hdr))), eltsize, eltdate, eltuid, eltgid, eltmode, arg);
            if (fnval != 0) {
                _ = close(desc);
                return fnval;
            }
            if (is_namemap != 0) {
                var clear: [*c]u8 = undefined;
                _ = &clear;
                var limit: [*c]u8 = undefined;
                _ = &limit;
                if (eltsize > @as(c_long, @bitCast(@as(c_long, @as(c_int, 2147483647))))) {
                    _ = close(desc);
                    return @as(intmax_t, @bitCast(@as(c_long, -2)));
                }
                namemap = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(eltsize + @as(c_long, 1)))))));
                nread = readbuf(desc, @as(?*anyopaque, @ptrCast(namemap)), @as(usize, @bitCast(eltsize)));
                if (nread != eltsize) {
                    _ = close(desc);
                    return @as(intmax_t, @bitCast(@as(c_long, -2)));
                }
                namemap_size = @as(c_uint, @bitCast(@as(c_int, @truncate(eltsize))));
                limit = namemap + @as(usize, @bitCast(@as(isize, @intCast(eltsize))));
                {
                    clear = namemap;
                    while (clear < limit) : (clear += 1) {
                        if (@as(c_int, @bitCast(@as(c_uint, clear.*))) == @as(c_int, '\n')) {
                            clear.* = '\x00';
                            if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = -1;
                                if (tmp >= 0) break :blk clear + @as(usize, @intCast(tmp)) else break :blk clear - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*))) == @as(c_int, '/')) {
                                (blk: {
                                    const tmp = -1;
                                    if (tmp >= 0) break :blk clear + @as(usize, @intCast(tmp)) else break :blk clear - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                }).* = '\x00';
                            }
                        }
                    }
                }
                limit.* = '\x00';
                is_namemap = 0;
            }
            member_offset += @as(c_long, @bitCast(@sizeOf(struct_ar_hdr) +% @as(c_ulong, @bitCast(eltsize))));
            if (@import("std").zig.c_translation.signedRemainder(member_offset, @as(c_long, 2)) != @as(c_long, 0)) {
                member_offset += 1;
            }
        }
    }
    _ = close(desc);
    return 0;
}
export fn ar_name_equal(arg_name: [*c]const u8, arg_mem: [*c]const u8, arg_truncated: c_int) c_int {
    var name = arg_name;
    _ = &name;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var p: [*c]const u8 = undefined;
    _ = &p;
    p = strrchr(name, @as(c_int, '/'));
    if (p != null) {
        name = p + @as(usize, @bitCast(@as(isize, @intCast(1))));
    }
    if (truncated != 0) {
        var hdr: struct_ar_hdr = undefined;
        _ = &hdr;
        return @intFromBool(strncmp(name, mem, @sizeOf([16]u8) -% @as(c_ulong, 1)) == 0);
    }
    return @intFromBool(!(strcmp(name, mem) != 0));
}
export fn ar_member_touch(arg_arname: [*c]const u8, arg_memname: [*c]const u8) c_int {
    var arname = arg_arname;
    _ = &arname;
    var memname = arg_memname;
    _ = &memname;
    var pos: intmax_t = ar_scan(arname, &ar_member_pos, @as(?*const anyopaque, @ptrCast(memname)));
    _ = &pos;
    var opos: off_t = undefined;
    _ = &opos;
    var fd: c_int = undefined;
    _ = &fd;
    var ar_hdr_1: struct_ar_hdr = undefined;
    _ = &ar_hdr_1;
    var o: off_t = undefined;
    _ = &o;
    var r: c_int = undefined;
    _ = &r;
    var datelen: c_int = undefined;
    _ = &datelen;
    var statbuf: struct_stat = undefined;
    _ = &statbuf;
    if (pos < @as(intmax_t, 0)) return @as(c_int, @bitCast(@as(c_int, @truncate(pos))));
    if (!(pos != 0)) return 1;
    opos = @as(off_t, @bitCast(pos));
    while (((blk: {
        const tmp = open(arname, 2, @as(c_int, 438));
        fd = tmp;
        break :blk tmp;
    }) == -1) and (__errno_location().* == 4)) {}
    if (fd < 0) return -3;
    while (((blk: {
        const tmp = lseek(fd, opos, 0);
        o = tmp;
        break :blk tmp;
    }) == @as(off_t, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
    if (o < @as(off_t, 0)) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    r = @as(c_int, @bitCast(@as(c_int, @truncate(readbuf(fd, @as(?*anyopaque, @ptrCast(&ar_hdr_1)), @sizeOf(struct_ar_hdr))))));
    if (@as(c_ulong, @bitCast(@as(c_long, r))) != @sizeOf(struct_ar_hdr)) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    while (((blk: {
        const tmp = fstat(fd, &statbuf);
        r = tmp;
        break :blk tmp;
    }) == -1) and (__errno_location().* == 4)) {}
    if (r < 0) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    datelen = snprintf(@as([*c]u8, @ptrCast(@alignCast(&ar_hdr_1.ar_date))), @sizeOf([12]u8), "%ld", @as(intmax_t, @bitCast(statbuf.st_mtim.tv_sec)));
    if (!((0 <= datelen) and (datelen < @as(c_int, @bitCast(@as(c_uint, @truncate(@sizeOf([12]u8)))))))) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    _ = memset(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&ar_hdr_1.ar_date))) + @as(usize, @bitCast(@as(isize, @intCast(datelen)))))), @as(c_int, ' '), @sizeOf([12]u8) -% @as(c_ulong, @bitCast(@as(c_long, datelen))));
    while (((blk: {
        const tmp = lseek(fd, opos, 0);
        o = tmp;
        break :blk tmp;
    }) == @as(off_t, @bitCast(@as(c_long, -1)))) and (__errno_location().* == 4)) {}
    if (o < @as(off_t, 0)) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    r = @as(c_int, @bitCast(@as(c_int, @truncate(writebuf(fd, @as(?*const anyopaque, @ptrCast(&ar_hdr_1)), @sizeOf(struct_ar_hdr))))));
    if (@as(c_ulong, @bitCast(@as(c_long, r))) != @sizeOf(struct_ar_hdr)) {
        r = __errno_location().*;
        _ = close(fd);
        __errno_location().* = r;
        return -3;
    }
    _ = close(fd);
    return 0;
}

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

extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;

const struct_output = extern struct {
    out: c_int = @import("std").mem.zeroes(c_int),
    err: c_int = @import("std").mem.zeroes(c_int),
    syncout: c_uint = @import("std").mem.zeroes(c_uint),
};
extern var output_context: [*c]struct_output;
extern var stdio_traced: c_uint;

fn parse_int(arg_ptr: [*c]const u8, len: usize, base: c_int, arg_max: uintmax_t, arg_type: [*c]const u8, arg_archive: [*c]const u8, arg_name: [*c]const u8) callconv(.C) uintmax_t {
    var ptr = arg_ptr;
    _ = &ptr;
    _ = &len;
    _ = &base;
    var max = arg_max;
    _ = &max;
    var @"type" = arg_type;
    _ = &@"type";
    var archive = arg_archive;
    _ = &archive;
    var name = arg_name;
    _ = &name;
    const ep: [*c]const u8 = ptr + len;
    _ = &ep;
    const maxchar: c_int = (@as(c_int, '0') + base) - 1;
    _ = &maxchar;
    var val: uintmax_t = 0;
    _ = &val;
    while ((ptr < ep) and (@as(c_int, @bitCast(@as(c_uint, ptr.*))) == @as(c_int, ' '))) {
        ptr += 1;
    }
    while ((ptr < ep) and (@as(c_int, @bitCast(@as(c_uint, ptr.*))) != @as(c_int, ' '))) {
        var nv: uintmax_t = undefined;
        _ = &nv;
        if ((@as(c_int, @bitCast(@as(c_uint, ptr.*))) < @as(c_int, '0')) or (@as(c_int, @bitCast(@as(c_uint, ptr.*))) > maxchar)) {
            fatal(@as([*c]floc, @ptrFromInt(0)), (strlen(@"type") +% strlen(archive)) +% strlen(name), gettext("Invalid %s for archive %s member %s"), @"type", archive, name);
        }
        nv = (val *% @as(uintmax_t, @bitCast(@as(c_long, base)))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, ptr.*))) - @as(c_int, '0'))));
        if ((nv < val) or (nv > max)) {
            fatal(@as([*c]floc, @ptrFromInt(0)), (strlen(@"type") +% strlen(archive)) +% strlen(name), gettext("Invalid %s for archive %s member %s"), @"type", archive, name);
        }
        val = nv;
        ptr += 1;
    }
    return val;
}
fn ar_member_pos(arg_desc: c_int, arg_mem: [*c]const u8, arg_truncated: c_int, arg_hdrpos: c_long, arg_datapos: c_long, arg_size: c_long, arg_date: intmax_t, arg_uid: c_int, arg_gid: c_int, arg_mode: c_uint, arg_name: ?*const anyopaque) callconv(.C) intmax_t {
    var desc = arg_desc;
    _ = &desc;
    var mem = arg_mem;
    _ = &mem;
    var truncated = arg_truncated;
    _ = &truncated;
    var hdrpos = arg_hdrpos;
    _ = &hdrpos;
    var datapos = arg_datapos;
    _ = &datapos;
    var size = arg_size;
    _ = &size;
    var date = arg_date;
    _ = &date;
    var uid = arg_uid;
    _ = &uid;
    var gid = arg_gid;
    _ = &gid;
    var mode = arg_mode;
    _ = &mode;
    var name = arg_name;
    _ = &name;
    if (!(ar_name_equal(@as([*c]const u8, @ptrCast(@alignCast(name))), mem, truncated) != 0)) return 0;
    return hdrpos;
}
