const root = @import("root.zig");
const zigstd = @import("std");

const sigset_t = root.csignal.sigset_t;
const FILE = root.cstdio.FILE;
const printf = root.cstdio.printf;
const ferror = root.cstdio.ferror;
const fputs = root.cstdio.fputs;
const stdout = root.cstdio.stdout;
const stderr = root.cstdio.stderr;
const fprintf = root.cstdio.fprintf;
const fclose = root.cstdio.fclose;
const gettext = root.cgettext.gettext;
const CHAR_MAX = root.climits.CHAR_MAX;
const opterr = root.cunistd.opterr;
const optind = root.cunistd.optind;
const optarg = root.cunistd.optarg;
const unlink = root.cunistd.unlink;
const __errno_location = root.cerrno.__errno_location;
const tolower = root.ctype.tolower;
const strlen = root.cstring.strlen;
const time_t = root.ctypes.time_t;
const uintmax_t = root.cstdint.uintmax_t;
const free = root.cstdlib.free;
const getopt_long = root.cunistd.getopt_long;
const exit = root.cstdlib.exit;
const abort = root.cstdlib.abort;
const xstrdup = root.cpublib.xstrdup;
const xmalloc = root.cpublib.xmalloc;
const xrealloc = root.cpublib.xrealloc;
const strcmp = root.cstring.strcmp;
const atof = root.cstdlib.atof;
const time = root.ctime.time;
const ctime = root.ctime.ctime;
const chdir = root.cunistd.chdir;
const __ctype_b_loc = root.ctype.__ctype_b_loc;
const struct_sigaction = root.csignal.struct_sigaction;
const sigemptyset = root.csignal.sigemptyset;
const sigaddset = root.csignal.sigaddset;
const __sighandler_t = root.csignal.__sighandler_t;
const sigaction = root.csignal.sigaction;
const _ISspace = root.ctype._ISspace;
const _ISalnum = root.ctype._ISalnum;

const enum_variable_origin = root.variable.enum_variable_origin;
const o_default = root.variable.o_default;
const o_command = root.variable.o_command;
const struct_variable = root.variable.struct_variable;
const init_hash_global_variable_set = root.variable.init_hash_global_variable_set;
const struct_option = root.getopt1.struct_option;
const struct_goaldep = root.dep.struct_goaldep;
const struct_file = root.filedef.struct_file;
const strcache_init = root.strcache.strcache_init;
const init_hash_files = root.file.init_hash_files;
const hash_init_directories = root.dir.hash_init_directories;
const hash_init_function_table = root.function.hash_init_function_table;
const fatal = root.output.fatal;
const @"error" = root.output.@"error";
const floc = root.output.floc;
const version_string = root.version.version_string;
const perror_with_name = root.output.perror_with_name;
const jobserver_enabled = root.posixos.jobserver_enabled;
const jobserver_clear = root.posixos.jobserver_clear;
const jobserver_tokens = root.job.jobserver_tokens;
const job_slots_used = root.job.job_slots_used;
const jobserver_release = root.job.jobserver_release;
const jobserver_acquire_all = root.posixos.jobserver_acquire_all;
const remote_description = root.remote_stub.remote_description;
const remote_cleanup = root.remote_stub.remote_cleanup;
const reap_children = root.job.reap_children;
const remove_intermediates = root.file.remove_intermediates;
const handling_fatal_signal = root.commands.handling_fatal_signal;
const make_host = root.version.make_host;
const strcache_add = root.strcache.strcache_add;
const construct_include_path = root.read.construct_include_path;
const make_toui = root.misc.make_toui;
const print_variable_data_base = root.variable.print_variable_data_base;
const print_dir_data_base = root.dir.print_dir_data_base;
const print_rule_data_base = root.rule.print_rule_data_base;
const print_file_data_base = root.file.print_file_data_base;
const print_vpath_data_base = root.vpath.print_vpath_data_base;
const strcache_print_stats = root.strcache.strcache_print_stats;
const verify_file_data_base = root.file.verify_file_data_base;
const output_context = root.output.output_context;
const output_close = root.output.output_close;
const osync_clear = root.posixos.osync_clear;
const tilde_expand = root.read.tilde_expand;
const osync_parse_mutex = root.posixos.osync_parse_mutex;

pub const HAVE_WAIT_NOHANG = "";

pub inline fn short_option(c: anytype) @TypeOf(c <= CHAR_MAX) {
    _ = &c;
    return c <= CHAR_MAX;
}

pub const struct_stringlist = extern struct {
    list: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
    idx: c_uint = @import("std").mem.zeroes(c_uint),
    max: c_uint = @import("std").mem.zeroes(c_uint),
};

pub extern var verify_flag: c_int;

pub var silent_flag: c_int = @import("std").mem.zeroes(c_int);
pub const default_silent_flag: c_int = 0;
pub var silent_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));

pub extern var run_silent: c_int;

pub extern var touch_flag: c_int;

pub extern var just_print_flag: c_int;

pub var db_flags: [*c]struct_stringlist = null;
pub var debug_flag: c_int = 0;

pub extern var db_level: c_int;

pub export var output_sync_option: [*c]u8 = null;

pub extern var env_overrides: c_int;

pub extern var ignore_errors_flag: c_int;

pub extern var print_data_base_flag: c_int;

pub extern var question_flag: c_int;

pub extern var no_builtin_rules_flag: c_int;
pub extern var no_builtin_variables_flag: c_int;

pub extern var keep_going_flag: c_int;
pub const default_keep_going_flag: c_int = 0;
pub var keep_going_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));

pub extern var check_symlink_flag: c_int;

pub var print_directory_flag: c_int = -@as(c_int, 1);
pub const default_print_directory_flag: c_int = -@as(c_int, 1);
pub var print_directory_origin: enum_variable_origin = @as(c_uint, @bitCast(o_default));

pub extern var print_version_flag: c_int;

pub var makefiles: [*c]struct_stringlist = null;

pub extern var job_slots: c_uint;

pub const INVALID_JOB_SLOTS = -@as(c_int, 1);

pub var master_job_slots: c_uint = 0;
pub var arg_job_slots: c_int = -@as(c_int, 1);

pub const default_job_slots: c_int = -@as(c_int, 1);

pub const inf_jobs: c_int = 0;

pub extern var jobserver_auth: [*c]u8;

pub var jobserver_style: [*c]u8 = null;

pub var shuffle_mode: [*c]u8 = null;

pub var sync_mutex: [*c]u8 = null;

pub extern var max_load_average: f64;
pub export var default_load_average: f64 = -1.0;

pub var directories: [*c]struct_stringlist = null;
pub var include_dirs: [*c]struct_stringlist = null;
pub var old_files: [*c]struct_stringlist = null;
pub var new_files: [*c]struct_stringlist = null;
pub var eval_strings: [*c]struct_stringlist = null;
pub var print_usage_flag: c_int = 0;

pub extern var warn_undefined_variables_flag: c_int;

pub var always_make_set: c_int = 0;
pub extern var always_make_flag: c_int;

pub extern var rebuilding_makefiles: c_int;

pub extern var shell_var: struct_variable;

pub extern var cmd_prefix: u8;

pub extern var no_intermediates: c_uint;

pub extern var command_count: c_ulong;

pub var stdin_offset: c_int = -@as(c_int, 1);

pub const usage: [36][*c]const u8 = [36][*c]const u8{
    "Options:\n",
    "  -b, -m                      Ignored for compatibility.\n",
    "  -B, --always-make           Unconditionally make all targets.\n",
    "  -C DIRECTORY, --directory=DIRECTORY\n                              Change to DIRECTORY before doing anything.\n",
    "  -d                          Print lots of debugging information.\n",
    "  --debug[=FLAGS]             Print various types of debugging information.\n",
    "  -e, --environment-overrides\n                              Environment variables override makefiles.\n",
    "  -E STRING, --eval=STRING    Evaluate STRING as a makefile statement.\n",
    "  -f FILE, --file=FILE, --makefile=FILE\n                              Read FILE as a makefile.\n",
    "  -h, --help                  Print this message and exit.\n",
    "  -i, --ignore-errors         Ignore errors from recipes.\n",
    "  -I DIRECTORY, --include-dir=DIRECTORY\n                              Search DIRECTORY for included makefiles.\n",
    "  -j [N], --jobs[=N]          Allow N jobs at once; infinite jobs with no arg.\n",
    "  --jobserver-style=STYLE     Select the style of jobserver to use.\n",
    "  -k, --keep-going            Keep going when some targets can't be made.\n",
    "  -l [N], --load-average[=N], --max-load[=N]\n                              Don't start multiple jobs unless load is below N.\n",
    "  -L, --check-symlink-times   Use the latest mtime between symlinks and target.\n",
    "  -n, --just-print, --dry-run, --recon\n                              Don't actually run any recipe; just print them.\n",
    "  -o FILE, --old-file=FILE, --assume-old=FILE\n                              Consider FILE to be very old and don't remake it.\n",
    "  -O[TYPE], --output-sync[=TYPE]\n                              Synchronize output of parallel jobs by TYPE.\n",
    "  -p, --print-data-base       Print make's internal database.\n",
    "  -q, --question              Run no recipe; exit status says if up to date.\n",
    "  -r, --no-builtin-rules      Disable the built-in implicit rules.\n",
    "  -R, --no-builtin-variables  Disable the built-in variable settings.\n",
    "  --shuffle[={SEED|random|reverse|none}]\n                              Perform shuffle of prerequisites and goals.\n",
    "  -s, --silent, --quiet       Don't echo recipes.\n",
    "  --no-silent                 Echo recipes (disable --silent mode).\n",
    "  -S, --no-keep-going, --stop\n                              Turns off -k.\n",
    "  -t, --touch                 Touch targets instead of remaking them.\n",
    "  --trace                     Print tracing information.\n",
    "  -v, --version               Print the version number of make and exit.\n",
    "  -w, --print-directory       Print the current directory.\n",
    "  --no-print-directory        Turn off -w, even if it was turned on implicitly.\n",
    "  -W FILE, --what-if=FILE, --new-file=FILE, --assume-new=FILE\n                              Consider FILE to be infinitely new.\n",
    "  --warn-undefined-variables  Warn when an undefined variable is referenced.\n",
    null,
};

pub var trace_flag: c_int = 0;

pub const flag: c_int = 0;
pub const flag_off: c_int = 1;
pub const string: c_int = 2;
pub const strlist: c_int = 3;
pub const filename: c_int = 4;
pub const positive_int: c_int = 5;
pub const floating: c_int = 6;
pub const ignore: c_int = 7;
const enum_unnamed_39 = c_uint;
// src/main.c:427:18: warning: struct demoted to opaque type - has bitfield
pub const struct_command_switch = opaque {};

pub const TEMP_STDIN_OPT = CHAR_MAX + @as(c_int, 10);

// src/main.c:449:5: warning: cannot initialize opaque type

// src/main.c:447:30: warning: unable to translate variable initializer, demoted to extern
pub extern var switches: [40]struct_command_switch;

var long_option_aliases: [9]struct_option = [9]struct_option{
    struct_option{
        .name = "quiet",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 's'),
    },
    struct_option{
        .name = "stop",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'S'),
    },
    struct_option{
        .name = "new-file",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-new",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'W'),
    },
    struct_option{
        .name = "assume-old",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'o'),
    },
    struct_option{
        .name = "max-load",
        .has_arg = @as(c_int, 2),
        .flag = null,
        .val = @as(c_int, 'l'),
    },
    struct_option{
        .name = "dry-run",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "recon",
        .has_arg = @as(c_int, 0),
        .flag = null,
        .val = @as(c_int, 'n'),
    },
    struct_option{
        .name = "makefile",
        .has_arg = @as(c_int, 1),
        .flag = null,
        .val = @as(c_int, 'f'),
    },
};

pub var goals: ?*struct_goaldep = @import("std").mem.zeroes(?*struct_goaldep);
pub var lastgoal: ?*struct_goaldep = @import("std").mem.zeroes(?*struct_goaldep);

pub const struct_command_variable = extern struct {
    next: [*c]struct_command_variable = @import("std").mem.zeroes([*c]struct_command_variable),
    variable: ?*struct_variable = @import("std").mem.zeroes(?*struct_variable),
};

pub var command_variables: [*c]struct_command_variable = @import("std").mem.zeroes([*c]struct_command_variable);

pub extern var program: [*c]const u8;

pub export var directory_before_chdir: [*c]u8 = @import("std").mem.zeroes([*c]u8);

pub extern var starting_directory: [*c]u8;

pub extern var makelevel: c_uint;

pub extern var default_goal_var: ?*struct_variable;

pub extern var default_file: ?*struct_file;

pub extern var posix_pedantic: c_int;

pub extern var second_expansion: c_int;

pub extern var one_shell: c_int;

pub extern var output_sync: c_int;

pub extern var not_parallel: c_int;

pub extern var clock_skew_detected: c_int;

pub const stopchar_map: [*c]c_ushort = @extern([*c]c_ushort, .{
    .name = "stopchar_map",
});

pub const make_sync = @compileError("non-extern variable has opaque type");
// src/main.c:608:15

pub export var fatal_signal_set: sigset_t = @import("std").mem.zeroes(sigset_t);

pub const bsd_signal_ret_t = ?*const fn (c_int) callconv(.C) void;
pub fn bsd_signal(arg_sig: c_int, arg_func: bsd_signal_ret_t) callconv(.C) bsd_signal_ret_t {
    var sig = arg_sig;
    _ = &sig;
    var func = arg_func;
    _ = &func;
    var act: struct_sigaction = undefined;
    _ = &act;
    var oact: struct_sigaction = undefined;
    _ = &oact;
    act.__sigaction_handler.sa_handler = func;
    act.sa_flags = 268435456;
    _ = sigemptyset(&act.sa_mask);
    _ = sigaddset(&act.sa_mask, sig);
    if (sigaction(sig, &act, &oact) != @as(c_int, 0)) return @as(__sighandler_t, @ptrFromInt(-@as(c_int, 1)));
    return oact.__sigaction_handler.sa_handler;
}

pub fn initialize_global_hash_tables() callconv(.C) void {
    init_hash_global_variable_set();
    strcache_init();
    init_hash_files();
    hash_init_directories();
    hash_init_function_table();
}

pub fn initialize_stopchar_map() callconv(.C) void {
    var i: c_int = undefined;
    _ = &i;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '\x00')))] = 1;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '#')))] = 8;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ';')))] = 16;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '=')))] = 32;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ':')))] = 64;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '|')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 256)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '.')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 512) | @as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ',')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 1024)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '(')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '{')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '}')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ')')))] = 128;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '$')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 16384)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '-')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '_')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
    stopchar_map[@as(c_uint, @intCast(@as(c_int, ' ')))] = 2;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '\t')))] = 2;
    stopchar_map[@as(c_uint, @intCast(@as(c_int, '/')))] = @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 32768)))));
    {
        i = 1;
        while (i <= ((@as(c_int, 127) * @as(c_int, 2)) + @as(c_int, 1))) : (i += 1) {
            if (((@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISspace)))))))) != 0) and !((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(c_uint, @intCast(i))]))) & @as(c_int, 2)) != @as(c_int, 0))) {
                stopchar_map[@as(c_uint, @intCast(i))] |= @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 4)))));
            } else if ((@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk __ctype_b_loc().* + @as(usize, @intCast(tmp)) else break :blk __ctype_b_loc().* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) & @as(c_int, @bitCast(@as(c_uint, @as(c_ushort, @bitCast(@as(c_short, @truncate(_ISalnum)))))))) != 0) {
                stopchar_map[@as(c_uint, @intCast(i))] |= @as(c_ushort, @bitCast(@as(c_short, @truncate(@as(c_int, 8192)))));
            }
        }
    }
}

pub fn close_stdout() callconv(.C) void {
    var prev_fail: c_int = ferror(stdout);
    _ = &prev_fail;
    var fclose_fail: c_int = fclose(stdout);
    _ = &fclose_fail;
    if ((prev_fail != 0) or (fclose_fail != 0)) {
        if (fclose_fail != 0) {
            perror_with_name(gettext("write error: stdout"), "");
        } else {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("write error: stdout"));
        }
        exit(@as(c_int, 1));
    }
}

pub fn expand_command_line_file(arg_name: [*c]const u8) callconv(.C) [*c]const u8 {
    var name = arg_name;
    _ = &name;
    var cp: [*c]const u8 = undefined;
    _ = &cp;
    var expanded: [*c]u8 = null;
    _ = &expanded;
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("empty string invalid as file name"));
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '~')) {
        expanded = tilde_expand(name);
        if ((expanded != null) and (@as(c_int, @bitCast(@as(c_uint, expanded[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
            name = expanded;
        }
    }
    while ((@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.')) and (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, '/'))) {
        name += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
        while (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/')) {
            name += 1;
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, name[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
        name = "./";
    }
    cp = strcache_add(name);
    free(@as(?*anyopaque, @ptrCast(expanded)));
    return cp;
}

pub fn debug_signal_handler(arg_sig: c_int) callconv(.C) void {
    var sig = arg_sig;
    _ = &sig;
    db_level = if (db_level != 0) @as(c_int, 0) else @as(c_int, 1);
}

pub fn decode_debug_flags() callconv(.C) void {
    var pp: [*c][*c]const u8 = undefined;
    _ = &pp;
    if (debug_flag != 0) {
        db_level = @as(c_int, 4095);
    }
    if (trace_flag != 0) {
        db_level |= @as(c_int, 16) | @as(c_int, 32);
    }
    if (db_flags != null) {
        pp = db_flags.*.list;
        while (pp.* != null) : (pp += 1) {
            var p: [*c]const u8 = pp.*;
            _ = &p;
            while (true) {
                while (true) {
                    switch (tolower(@as(c_int, @bitCast(@as(c_uint, p[@as(c_uint, @intCast(@as(c_int, 0)))]))))) {
                        @as(c_int, 97) => {
                            db_level |= @as(c_int, 4095);
                            break;
                        },
                        @as(c_int, 98) => {
                            db_level |= @as(c_int, 1);
                            break;
                        },
                        @as(c_int, 105) => {
                            db_level |= @as(c_int, 1) | @as(c_int, 8);
                            break;
                        },
                        @as(c_int, 106) => {
                            db_level |= @as(c_int, 4);
                            break;
                        },
                        @as(c_int, 109) => {
                            db_level |= @as(c_int, 1) | @as(c_int, 256);
                            break;
                        },
                        @as(c_int, 110) => {
                            db_level = 0;
                            break;
                        },
                        @as(c_int, 112) => {
                            db_level |= @as(c_int, 16);
                            break;
                        },
                        @as(c_int, 118) => {
                            db_level |= @as(c_int, 1) | @as(c_int, 2);
                            break;
                        },
                        @as(c_int, 119) => {
                            db_level |= @as(c_int, 32);
                            break;
                        },
                        else => {
                            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(p), gettext("unknown debug level specification '%s'"), p);
                        },
                    }
                    break;
                }
                while (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const ref = &p;
                    ref.* += 1;
                    break :blk ref.*;
                }).*))) != @as(c_int, '\x00')) if ((@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ',')) or (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, ' '))) {
                    p += 1;
                    break;
                };
                if (@as(c_int, @bitCast(@as(c_uint, p.*))) == @as(c_int, '\x00')) break;
            }
        }
    }
    if (db_level != 0) {
        verify_flag = 1;
    }
    if (!(db_level != 0)) {
        debug_flag = 0;
    }
}

pub fn decode_output_sync_flags() callconv(.C) void {
    if (output_sync_option != null) {
        if (((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "none".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "none" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 0;
        } else if (((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "line".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "line" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 1;
        } else if (((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "target".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "target" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 2;
        } else if (((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, @bitCast(@as(c_uint, "recurse".*)))) and ((@as(c_int, @bitCast(@as(c_uint, output_sync_option.*))) == @as(c_int, '\x00')) or !(strcmp(output_sync_option + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), "recurse" + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) {
            output_sync = 3;
        } else {
            fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(output_sync_option), gettext("unknown output-sync type '%s'"), output_sync_option);
        }
    }
    if (sync_mutex != null) {
        _ = osync_parse_mutex(sync_mutex);
    }
}

pub fn print_usage(arg_bad: c_int) callconv(.C) noreturn {
    var bad = arg_bad;
    _ = &bad;
    var cpp: [*c]const [*c]const u8 = undefined;
    _ = &cpp;
    var usageto: [*c]FILE = undefined;
    _ = &usageto;
    if (print_version_flag != 0) {
        print_version();
        _ = fputs("\n", stdout);
    }
    usageto = if (bad != 0) stderr else stdout;
    _ = fprintf(usageto, gettext("Usage: %s [options] [target] ...\n"), program);
    {
        cpp = @as([*c]const [*c]const u8, @ptrCast(@alignCast(&usage)));
        while (cpp.* != null) : (cpp += 1) {
            _ = fputs(gettext(cpp.*), usageto);
        }
    }
    if (!(remote_description != null) or (@as(c_int, @bitCast(@as(c_uint, remote_description.*))) == @as(c_int, '\x00'))) {
        _ = fprintf(usageto, gettext("\nThis program built for %s\n"), make_host);
    } else {
        _ = fprintf(usageto, gettext("\nThis program built for %s (%s)\n"), make_host, remote_description);
    }
    _ = fprintf(usageto, gettext("Report bugs to <bug-make@gnu.org>\n"));
    die(if (bad != 0) @as(c_int, 2) else @as(c_int, 0));
}

pub extern var batch_mode_shell: c_int;

pub fn reset_jobserver() callconv(.C) void {
    jobserver_clear();
    free(@as(?*anyopaque, @ptrCast(jobserver_auth)));
    jobserver_auth = null;
}

pub export fn temp_stdin_unlink() void {
    if (stdin_offset >= @as(c_int, 0)) {
        var nm: [*c]const u8 = (blk: {
            const tmp = stdin_offset;
            if (tmp >= 0) break :blk makefiles.*.list + @as(usize, @intCast(tmp)) else break :blk makefiles.*.list - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*;
        _ = &nm;
        var r: c_int = 0;
        _ = &r;
        stdin_offset = -@as(c_int, 1);
        while (((blk: {
            const tmp = unlink(nm);
            r = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (((r < @as(c_int, 0)) and (__errno_location().* != @as(c_int, 2))) and !(handling_fatal_signal != 0)) {
            perror_with_name(gettext("unlink (temporary file): "), nm);
        }
    }
}

pub fn main(argc: c_int, argv: [*c][*c]u8, envp: [*c][*c]u8) c_int {
    var makefile_status: c_int = MAKE_SUCCESS;
    var read_files: struct_goaldep = undefined;
    var current_directory: [PATH_MAX + 1]c_char = undefined; // PATH_VAR (current_directory);
    var restarts: c_uint = 0;
    var syncing: c_uint = 0;
    var argv_slots: c_int = undefined; // The jobslot info we got from our parent process.

    initialize_variable_output();

    // Useful for attaching debuggers, etc.
    // SPIN("main-entry");

    if (ANY_SET(check_io_state(), IO_STDOUT_OK))
        atexit(close_stdout);

    output_init(&make_sync);

    initialize_stopchar_map();

    // Needed for OS/2
    // initialize_main(&argc, &argv);

    // Set up gettext/internationalization support.
    setlocale(LC_ALL, "");
    // The cast to void shuts up compiler warnings on systems that disable NLS.
    _ = bindtextdomain(PACKAGE, LOCALEDIR);
    _ = textdomain(PACKAGE);

    sigemptyset(&fatal_signal_set);
    // #define ADD_SIG(sig)    sigaddset (&fatal_signal_set, sig)

    { // TODO: マクロを展開する
        // #define FATAL_SIG(sig)                                                        \
        //   if (bsd_signal (sig, fatal_error_signal) == SIG_IGN)                        \
        //     bsd_signal (sig, SIG_IGN);                                                \
        //   else                                                                        \
        //     ADD_SIG (sig);

        FATAL_SIG(SIGHUP);
        FATAL_SIG(SIGQUIT);
        FATAL_SIG(SIGPIPE);
        FATAL_SIG(SIGINT);
        FATAL_SIG(SIGTERM);
        FATAL_SIG(SIGXCPU);
        FATAL_SIG(SIGXFSZ);

        // #undef  FATAL_SIG
    }

    // Do not ignore the child-death signal.  This must be done before
    // any children could possibly be created; otherwise, the wait
    // functions won't work on systems with the SVR4 ECHILD brain
    // damage, if our invoker is ignoring this signal.

    _ = bsd_signal(SIGCHLD, SIG_DFL);

    output_init(NULL);

    // Figure out where this program lives.

    if (argv[0] == 0) {
        argv[0] = "";
    }
    if (argv[0][0] == '\x00') {
        program = "make";
    } else {
        // !defined(HAVE_DOS_PATHS)
        // !defined(VMS)
        program = strrchr(argv[0], '/');
        if (program == 0) {
            program = argv[0];
        } else {
            program += program;
        }
    }

    initialize_global_hash_tables();

    // Ensure the temp directory is set up: we don't want the first time we use
    // it to be in a forked process.
    get_tmpdir();

    // Figure out where we are.

    if (getcwd(current_directory, GET_PATH_MAX) == 0) {
        perror_with_name("getcwd", "");

        current_directory[0] = '\x00';
        directory_before_chdir = 0;
    } else {
        directory_before_chdir = xstrdup(current_directory);
    }

    // Initialize the special variables.
    define_variable_cname(".VARIABLES", "", o_default, 0).special = 1;
    // define_variable_cname(".TARGETS", "", o_default, 0).special = 1;
    define_variable_cname(".RECIPEPREFIX", "", o_default, 0).?.special = 1;
    define_variable_cname(".SHELLFLAGS", "-c", o_default, 0);
    define_variable_cname(".LOADED", "", o_default, 0);

    // Set up .FEATURES
    // Use a separate variable because define_variable_cname() is a macro and
    // some compilers (MSVC) don't like conditionals in macros.
    {
        const features: [*c]const u8 = "target-specific order-only second-expansion" ++
            " else-if shortest-stem undefine oneshell nocomment" ++
            " grouped-target extra-prereqs notintermediate" ++
            " shell-export" ++
            " archives" ++
            " jobserver" ++
            " jobserver-fifo" ++
            " output-sync" ++
            " check-symlink" ++
            " load" ++
            " maintainer";

        define_variable_cname(".FEATURES", features, o_default, 0);
    }

    // Configure GNU Guile support
    guile_gmake_setup(NILF);

    // Read in variables from the environment.  It is important that this be
    // done before $(MAKE) is figured out so its definitions will not be
    // from the environment.

    {
        var i: c_uint = undefined;

        { // for (i = 0; envp[i] != 0; ++i)
            i = 0;
            while (envp[i] != 0) : (i += 1) {
                var v: *struct_variable = undefined;
                var ep: [*c]u8 = envp[i];
                // By default, export all variables culled from the environment.
                var @"export": enum_variable_export = v_export;
                var len: __size_t = undefined;

                while (!STOP_SET(*ep, MAP_EQUALS | MAP_NUL)) {
                    ep += 1;
                }

                // If there's no equals sign it's a malformed environment.  Ignore.
                if (*ep == '\x00')
                    continue;

                // Length of the variable name, and skip the '='.
                len = (blk: {
                    const tmp = ep;
                    ep += 1;
                    break :blk tmp;
                }) - envp[i];

                // If this is MAKE_RESTARTS, check to see if the "already printed
                // the enter statement" flag is set.
                if (len == 13 and memcmp(envp[i], "MAKE_RESTARTS", CSTRLEN("MAKE_RESTARTS")) == 0) {
                    if (*ep == '-') {
                        OUTPUT_TRACED();
                        ep += 1;
                    }
                    restarts = make_toui(ep, NULL);
                    @"export" = v_noexport;
                }

                v = define_variable(envp[i], len, ep, o_env, 1);

                // POSIX says the value of SHELL set in the makefile won't change the
                // value of SHELL given to subprocesses.
                if (streq(v.name, "SHELL")) {
                    @"export" = v_noexport;
                    shell_var.name = xstrdup("SHELL");
                    shell_var.length = 5;
                    shell_var.value = xstrdup(ep);
                }

                v.@"export" = @"export";
            }
        }
    }

    // Decode the switches.
    if (lookup_variable(STRING_SIZE_TUPLE(GNUMAKEFLAGS_NAME))) {
        decode_env_switches(STRING_SIZE_TUPLE(GNUMAKEFLAGS_NAME), o_command);

        // Clear GNUMAKEFLAGS to avoid duplication.
        define_variable_cname(GNUMAKEFLAGS_NAME, "", o_env, 0);
    }

    // Set MAKEFLAGS's origin to command line: in submakes MAKEFLAGS will carry
    // command line switches.  This causes env variable MAKEFLAGS to beat
    // makefile modifications to MAKEFLAGS.
    decode_env_switches(STRING_SIZE_TUPLE(MAKEFLAGS_NAME), o_command);

    // In output sync mode we need to sync any output generated by reading the
    // makefiles, such as in $(info ...) or stderr from $(shell ...) etc.

    make_sync.syncout = (output_sync == OUTPUT_SYNC_LINE or output_sync == OUTPUT_SYNC_TARGET);
    syncing = make_sync.syncout;
    OUTPUT_SET(&make_sync);

    // Parse the command line options.  Remember the job slots set this way.
    {
        const env_slots: c_int = arg_job_slots;
        arg_job_slots = INVALID_JOB_SLOTS;

        decode_switches(argc, @as([*c][*c]const u8, argv), o_command);
        argv_slots = arg_job_slots;

        if (arg_job_slots == INVALID_JOB_SLOTS)
            arg_job_slots = env_slots;
    }

    if (print_usage_flag)
        print_usage(0);

    // Print version information, and exit.
    if (print_version_flag) {
        print_version();
        die(MAKE_SUCCESS);
    }

    // Now that we know we'll be running, force stdout to be line-buffered.
    setvbuf(stdout, 0, _IOLBF, BUFSIZ);

    // Handle shuffle mode argument.
    if (shuffle_mode) {
        var effective_mode: [*c]const u8 = undefined;
        shuffle_set_mode(shuffle_mode);

        // Write fixed seed back to argument list to propagate mode and
        // fixed seed to child $(MAKE) runs.
        free(shuffle_mode);
        effective_mode = shuffle_get_mode();
        if (effective_mode) {
            shuffle_mode = xstrdup(effective_mode);
        } else {
            shuffle_mode = NULL;
        }
    }

    // Set a variable specifying whether stdout/stdin is hooked to a TTY
    if (isatty(fileno(stdout)))
        if (!lookup_variable(STRING_SIZE_TUPLE("MAKE_TERMOUT"))) {
            const tty: [*c]const u8 = TTYNAME(fileno(stdout));
            define_variable_cname("MAKE_TERMOUT", if (tty) tty else DEFAULT_TTYNAME, o_default, 0).@"export" = v_export;
        };
    if (isatty(fileno(stderr)))
        if (!lookup_variable(STRING_SIZE_TUPLE("MAKE_TERMERR"))) {
            const tty: [*c]const u8 = TTYNAME(fileno(stderr));
            define_variable_cname("MAKE_TERMERR", if (tty) tty else DEFAULT_TTYNAME, o_default, 0).@"export" = v_export;
        };

    // Reset in case the switches changed our minds.
    syncing = (output_sync == OUTPUT_SYNC_LINE or output_sync == OUTPUT_SYNC_TARGET);

    if (make_sync.syncout and !syncing)
        output_close(&make_sync);

    make_sync.syncout = syncing;
    OUTPUT_SET(&make_sync);

    // Figure out the level of recursion.
    {
        const v: *struct_variable = lookup_variable(STRING_SIZE_TUPLE(MAKELEVEL_NAME));
        if (v and v.value[0] != '\x00' and v.value[0] != '-') {
            makelevel = make_toui(v.value, NULL);
        } else {
            makelevel = 0;
        }
    }

    // Set always_make_flag if -B was given and we've not restarted already.
    always_make_flag = always_make_set and (restarts == 0);

    // If -R was given, set -r too (doesn't make sense otherwise!)
    if (no_builtin_variables_flag)
        no_builtin_rules_flag = 1;

    if (ISDB(DB_BASIC)) {
        print_version();

        // Flush stdout so the user doesn't have to wait to see the
        // version information while make thinks about things.
        fflush(stdout);
    }

    // Set the "MAKE_COMMAND" variable to the name we were invoked with.
    // (If it is a relative pathname with a slash, prepend our directory name
    // so the result will run the same program regardless of the current dir.
    // If it is a name with no slash, we can only hope that PATH did not
    // find it in the current directory.)
    if (current_directory[0] != '\x00' and argv[0] != 0 and argv[0][0] != '/' and strchr(argv[0], '/') != 0)
        argv[0] = xstrdup(concat(3, current_directory, "/", argv[0]));

    // We may move, but until we do, here we are.
    starting_directory = current_directory;

    // If there were -C flags, move ourselves about.
    if (directories != 0) {
        var i: c_uint = undefined;
        { // for (i = 0; directories->list[i] != 0; ++i)
            i = 0;
            while (directories.list[i] != 0) : (i += 1) {
                const dir: [*c]const u8 = directories.list[i];
                if (chdir(dir) < 0)
                    pfatal_with_name(dir);
            }
        }
    }

    // If we chdir'ed, figure out where we are now.
    if (directories) {
        if (getcwd(current_directory, GET_PATH_MAX) == 0) {
            perror_with_name("getcwd", "");
            starting_directory = 0;
        } else {
            starting_directory = current_directory;
        }
    }

    define_variable_cname("CURDIR", current_directory, o_file, 0);

    // Construct the list of include directories to search.
    // This will check for existence so it must be done after chdir.
    construct_include_path(if (include_dirs) include_dirs.list else NULL);

    // Validate the arg_job_slots configuration before we define MAKEFLAGS so
    // users get an accurate value in their makefiles.
    // At this point arg_job_slots is the argv setting, if there is one, else
    // the MAKEFLAGS env setting, if there is one.

    blk: {
        if (jobserver_auth) {
            // We're a child in an existing jobserver group.
            if (argv_slots == INVALID_JOB_SLOTS) {
                // There's no -j option on the command line: check authorization.
                if (jobserver_parse_auth(jobserver_auth))
                    // Success!  Use the jobserver.
                    // TODO: gotoの処理
                    // goto job_setup_complete;
                    break :blk;

                // Oops: we have jobserver-auth but it's invalid :(.
                O(@"error", NILF, gettext("warning: jobserver unavailable: using -j1.  Add '+' to parent make rule."));
                arg_job_slots = 1;
            }

            // The user provided a -j setting on the command line so use it: we're
            // the master make of a new jobserver group.
            else if (!restarts)
                ON(@"error", NILF, gettext("warning: -j%d forced in submake: resetting jobserver mode."), argv_slots);

            // We can't use our parent's jobserver, so reset.
            reset_jobserver();
        }
    }

    // job_setup_complete:

    // The extra indirection through $(MAKE_COMMAND) is done
    // for hysterical raisins.

    define_variable_cname("MAKE_COMMAND", argv[0], o_default, 0);
    define_variable_cname("MAKE", "$(MAKE_COMMAND)", o_default, 1);

    if (command_variables != 0) {
        var cv: *struct_command_variable = undefined;
        var v: *struct_variable = undefined;
        var len: __size_t = 0;
        var value: [*c]u8 = undefined;
        var p: [*c]u8 = undefined;

        // Figure out how much space will be taken up by the command-line
        // variable definitions.

        { // for (cv = command_variables; cv != 0; cv = cv->next)
            cv = command_variables;
            while (cv != 0) : (cv = cv.next) {
                v = cv.variable;
                len += 2 * strlen(v.name);
                if (!v.recursive) {
                    len += 1;
                }
                {
                    len += 1;
                }
                len += 2 * strlen(v.value);
                {
                    len += 1;
                }
            }
        }

        // Now allocate a buffer big enough and fill it.
        value = (
        //
            malloc
        // from alloca
        )(len);
        p = value;
        { // for (cv = command_variables; cv != 0; cv = cv->next)
            cv = command_variables;
            while (cv != 0) : (cv = cv.next) {
                v = cv.variable;
                p = quote_for_env(p, v.name);
                if (!v.recursive)
                    (blk: {
                        const tmp = p.*;
                        p += 1;
                        break :blk tmp;
                    }) = ':';
                (blk: {
                    const tmp = p.*;
                    p += 1;
                    break :blk tmp;
                }) = '=';
                p = quote_for_env(p, v.value);
                (blk: {
                    const tmp = p.*;
                    p += 1;
                    break :blk tmp;
                }) = ' ';
            }
        }
        p[-1] = '\x00'; // Kill the final space and terminate.

        // Define an unchangeable variable with a name that no POSIX.2
        // makefile could validly use for its own variable.
        define_variable_cname("-*-command-variables-*-", value, o_automatic, 0);

        // Define the variable; this will not override any user definition.
        // Normally a reference to this variable is written into the value of
        // MAKEFLAGS, allowing the user to override this value to affect the
        // exported value of MAKEFLAGS.  In POSIX-pedantic mode, we cannot
        // allow the user's setting of MAKEOVERRIDES to affect MAKEFLAGS, so
        // a reference to this hidden variable is written instead.
        define_variable_cname("MAKEOVERRIDES", "${-*-command-variables-*-}", o_default, 1);
    }

    // Read any stdin makefiles into temporary files.

    if (makefiles != 0) {
        var i: c_uint = undefined;

        { // for (i = 0; i < makefiles->idx; ++i)
            i = 0;
            while (i < makefiles.idx) : (i += 1) {
                if (makefiles.list[i][0] == '-' and makefiles.list[i][1] == '\x00') {
                    // This makefile is standard input.  Since we may re-exec
                    // and thus re-read the makefiles, we read standard input
                    // into a temporary file and read from that.
                    var outfile: [*c]FILE = undefined;
                    var newnm: [*c]u8 = undefined;

                    if (stdin_offset >= 0)
                        O(fatal, NILF, gettext("Makefile from standard input specified twice"));

                    outfile = get_tmpfile(&newnm);
                    if (!outfile)
                        O(fatal, NILF, gettext("cannot store makefile from stdin to a temporary file"));

                    while (!feof(stdin) and !ferror(stdin)) {
                        const buf: [2048]u8 = undefined;
                        const n: __size_t = fread(buf, 1, @sizeOf(buf), stdin);
                        if (n > 0 and fwrite(buf, 1, n, outfile) != n)
                            OSS(fatal, NILF, gettext("fwrite: temporary file %s: %s"), newnm, strerror(errno));
                    }
                    fclose(outfile);

                    // Replace the name that read_all_makefiles will see with the name
                    // of the temporary file.
                    makefiles.list[i] = strcache_add(newnm);
                    stdin_offset = i;

                    free(newnm);
                }
            }
        }
    }

    // Make sure the temporary file is never considered updated.

    if (stdin_offset >= 0) {
        var f: [*c]struct_file = enter_file(makefiles.list[stdin_offset]);
        f.updated = 1;
        f.update_status = us_success;
        f.command_state = cs_finished;
        // Can't be intermediate, or it'll be removed before make re-exec.
        f.intermediate = 0;
        f.dontcare = 0;
        // Avoid re-exec due to stdin temp file timestamps.
        f.mtime_before_update = f_mtime(f, 0);
        f.last_mtime = f.mtime_before_update;
    }

    // Set up to handle children dying.  This must be done before
    // reading in the makefiles so that 'shell' function calls will work.

    // If we don't have a hanging wait we have to fall back to old, broken
    // functionality here and rely on the signal handler and counting
    // children.

    // If we're using the jobs pipe we need a signal handler so that SIGCHLD is
    // not ignored; we need it to interrupt the read(2) of the jobserver pipe if
    // we're waiting for a token.

    // If none of these are true, we don't need a signal handler at all.
    {}

    // If we have pselect() then we need to block SIGCHLD so it's deferred.
    {
        var block: sigset_t = undefined;
        sigemptyset(&block);
        sigaddset(&block, SIGCHLD);
        if (sigprocmask(SIG_SETMASK, &block, NULL) < 0)
            pfatal_with_name("sigprocmask(SIG_SETMASK, SIGCHLD)");
    }

    // Define the initial list of suffixes for old-style rules.
    set_default_suffixes();

    // Define some internal and special variables.
    define_automatic_variables();

    // Set up the MAKEFLAGS and MFLAGS variables for makefiles to see.
    // Initialize it to be exported but allow the makefile to reset it.
    define_makeflags(0).@"export" = v_export;

    // Define the default variables.
    define_default_variables();

    default_file = enter_file(strcache_add(".DEFAULT"));

    default_goal_var = define_variable_cname(".DEFAULT_GOAL", "", o_file, 0);

    // Evaluate all strings provided with --eval.
    // Also set up the $(-*-eval-flags-*-) variable.

    if (eval_strings) {
        var p: [*c]u8 = undefined;
        var endp: [*c]u8 = undefined;
        var value: [*c]u8 = undefined;
        var i: c_uint = undefined;
        var len: __size_t = (CSTRLEN("--eval=") + 1) * eval_strings.idx;

        { // for (i = 0; i < eval_strings->idx; ++i)

            while (i < eval_strings.idx) : (i += 1) {
                p = xstrdup(eval_strings.list[i]);
                len += 2 * strlen(p);
                eval_buffer(p, NULL);
                free(p);
            }
        }

        value = malloc(len);
        endp = value;
        p = endp;
        { // for (i = 0; i < eval_strings->idx; ++i)

            while (i < eval_strings.idx) : (i += 1) {
                p = stpcpy(p, "--eval=");
                p = quote_for_env(p, eval_strings.list[i]);
                endp = p;
                p += 1;
                endp.* = ' ';
            }
        }
        endp.* = '\x00';

        define_variable_cname("-*-eval-flags-*-", value, o_automatic, 0);
    }

    {
        const old_builtin_rules_flag: c_int = no_builtin_rules_flag;
        const old_builtin_variables_flag: c_int = no_builtin_variables_flag;
        const old_arg_job_slots: c_int = arg_job_slots;

        // Read all the makefiles.
        read_files = read_all_makefiles(if (makefiles == 0) 0 else makefiles.list);

        arg_job_slots = INVALID_JOB_SLOTS;

        // Decode switches again, for variables set by the makefile.
        decode_env_switches(STRING_SIZE_TUPLE(GNUMAKEFLAGS_NAME), o_env);

        // Clear GNUMAKEFLAGS to avoid duplication.
        define_variable_cname(GNUMAKEFLAGS_NAME, "", o_override, 0);

        decode_env_switches(STRING_SIZE_TUPLE(MAKEFLAGS_NAME), o_env);

        // If -j is not set in the makefile, or it was set on the command line,
        // reset to use the previous value.
        if (arg_job_slots == INVALID_JOB_SLOTS or argv_slots != INVALID_JOB_SLOTS) {
            arg_job_slots = old_arg_job_slots;
        } else if (jobserver_auth and arg_job_slots != old_arg_job_slots) {
            // Makefile MAKEFLAGS set -j, but we already have a jobserver.
            // Make us the master of a new jobserver group.
            if (!restarts)
                ON(@"error", NILF, gettext("warning: -j%d forced in makefile: resetting jobserver mode."), arg_job_slots);

            // We can't use our parent's jobserver, so reset.
            reset_jobserver();
        }

        // Reset in case the switches changed our mind.
        syncing = (output_sync == OUTPUT_SYNC_LINE or output_sync == OUTPUT_SYNC_TARGET);

        if (make_sync.syncout and !syncing)
            output_close(&make_sync);

        make_sync.syncout = syncing;
        OUTPUT_SET(&make_sync);

        // If -R was given, set -r too (doesn't make sense otherwise!)
        if (no_builtin_variables_flag)
            no_builtin_rules_flag = 1;

        // If we've disabled builtin rules, get rid of them.
        if (no_builtin_rules_flag and !old_builtin_rules_flag) {
            if (suffix_file.builtin) {
                free_dep_chain(suffix_file.deps);
                suffix_file.deps = 0;
            }
            define_variable_cname("SUFFIXES", "", o_default, 0);
        }

        // If we've disabled builtin variables, get rid of them.
        if (no_builtin_variables_flag and !old_builtin_variables_flag)
            undefine_default_variables();
    }

    // Final jobserver configuration.

    // If we have jobserver_auth then we are a client in an existing jobserver
    // group, that's already been verified OK above.  If we don't have
    // jobserver_auth and jobserver is enabled, then start a new jobserver.

    // arg_job_slots = INVALID_JOB_SLOTS if we don't want -j in MAKEFLAGS

    // arg_job_slots = # of jobs of parallelism

    // job_slots = 0 for no limits on jobs, or when limiting via jobserver.

    // job_slots = 1 for standard non-parallel mode.

    // job_slots >1 for old-style parallelism without jobservers.

    if (jobserver_auth) {
        job_slots = 0;
    } else if (arg_job_slots == INVALID_JOB_SLOTS) {
        job_slots = 1;
    } else {
        job_slots = arg_job_slots;
    }

    // If we have >1 slot at this point, then we're a top-level make.
    // Set up the jobserver.

    // Every make assumes that it always has one job it can run.  For the
    // submakes it's the token they were given by their parent.  For the top
    // make, we just subtract one from the number the user wants.

    if (job_slots > 1 and jobserver_setup(job_slots - 1, jobserver_style)) {
        // Fill in the jobserver_auth for our children.
        jobserver_auth = jobserver_get_auth();

        if (jobserver_auth) {
            // We're using the jobserver so set job_slots to 0.
            master_job_slots = job_slots;
            job_slots = 0;
        }
    }

    // If we're not using parallel jobs, then we don't need output sync.
    // This is so people can enable output sync in GNUMAKEFLAGS or similar, but
    // not have it take effect unless parallel builds are enabled.
    if (syncing and job_slots == 1) {
        OUTPUT_UNSET();
        output_close(&make_sync);
        syncing = 0;
        output_sync = OUTPUT_SYNC_NONE;
    }

    if (syncing) {
        // If there is no mutex we're the base: create one.  Else parse it.
        if (!sync_mutex) {
            osync_setup();
            sync_mutex = osync_get_mutex();
        } else if (!osync_parse_mutex(sync_mutex)) {
            // Parsing failed; continue without output sync.
            osync_clear();
            free(sync_mutex);
            sync_mutex = NULL;
            syncing = 0;
        }
    }

    // #define DB(_l,_x)   do{ if(ISDB(_l)) {printf _x; fflush (stdout);} }while(0)

    if (jobserver_auth) {
        // DB (DB_VERBOSE|DB_JOBS, (_("Using jobserver controller %s\n"), jobserver_auth));
        if (ISDB(DB_VERBOSE | DB_JOBS)) {
            printf(gettext("Using jobserver controller %s\n"), jobserver_auth);
            fflush(stdout);
        }
    }
    if (sync_mutex) {
        // DB (DB_VERBOSE, (_("Using output-sync mutex %s\n"), sync_mutex));
        if (ISDB(DB_VERBOSE)) {
            printf(gettext("Using output-sync mutex %s\n"), sync_mutex);
            fflush(stdout);
        }
    }

    // Set up MAKEFLAGS and MFLAGS again, so they will be right.

    define_makeflags(0);

    // Make each 'struct goaldep' point at the 'struct file' for the file
    // depended on.  Also do magic for special targets.

    snap_deps();

    // Define the file rules for the built-in suffix rules.  These will later
    // be converted into pattern rules.

    install_default_suffix_rules();

    // Convert old-style suffix rules to pattern rules.  It is important to
    // do this before installing the built-in pattern rules below, so that
    // makefile-specified suffix rules take precedence over built-in pattern
    // rules.

    convert_to_pattern();

    // Install the default implicit pattern rules.
    // This used to be done before reading the makefiles.
    // But in that case, built-in pattern rules were in the chain
    // before user-defined ones, so they matched first.

    install_default_implicit_rules();

    // Compute implicit rule limits and do magic for pattern rules.

    snap_implicit_rules();

    // Construct the listings of directories in VPATH lists.

    build_vpath_lists();

    // Mark files given with -o flags as very old and as having been updated
    // already, and files given with -W flags as brand new (time-stamp as far
    // as possible into the future).  If restarts is set we'll do -W later.

    if (old_files != 0) {
        var p: [*c][*c]const u8 = undefined;
        { // for (p = old_files->list; *p != 0; ++p)
            p = old_files.list;
            while (p.* != 0) : (p += 1) {
                var f: *struct_file = enter_file(*p);
                f.mtime_before_update = OLD_MTIME;
                f.last_mtime = f.mtime_before_update;
                f.updated = 1;
                f.update_status = us_success;
                f.command_state = cs_finished;
            }
        }
    }

    if (!restarts and new_files != 0) {
        //       const char **p;
        var p: [*c][*c]const u8 = undefined;
        { // for (p = new_files->list; *p != 0; ++p)
            p = new_files.list;
            while (p.* != 0) : (p += 1) {
                var f: [*c]struct_file = enter_file(*p);
                f.mtime_before_update = NEW_MTIME;
                f.last_mtime = f.mtime_before_update;
            }
        }
    }

    // Initialize the remote job module.
    remote_setup();

    // Dump any output we've collected.

    OUTPUT_UNSET();
    output_close(&make_sync);

    if (shuffle_mode) {
        // DB (DB_BASIC, (_("Enabled shuffle mode: %s\n"), shuffle_mode));
        if (ISDB(DB_BASIC)) {
            printf(gettext("Enabled shuffle mode: %s\n"), shuffle_mode);
            fflush(stdout);
        }
    }

    if (read_files) {
        // Update any makefiles if necessary.

        var makefile_mtimes: [*c]FILE_TIMESTAMP = undefined;
        var skipped_makefiles: [*c]struct_goaldep = NULL;
        var nargv: [*c][*c]const u8 = @as(([*c][*c]const u8), argv);
        var any_failed: c_int = 0;
        var status: enum_update_status_38 = undefined;

        // DB(DB_BASIC, (_("Updating makefiles....\n")));
        if (ISDB(DB_BASIC)) {
            printf(gettext("Updating makefiles....\n"));
            fflush(stdout);
        }

        // Count the makefiles, and reverse the order so that we attempt to
        // rebuild them in the order they were read.
        {
            var num_mkfiles: c_uint = 0;
            var d: [*c]struct_goaldep = read_files;
            read_files = NULL;

            while (d != NULL) {
                var t: [*c]struct_goaldep = d;
                d = d.next;
                t.next = read_files;
                read_files = t;
                num_mkfiles += 1;
            }

            makefile_mtimes = malloc(num_mkfiles * @sizeOf(FILE_TIMESTAMP));
        }

        // Remove any makefiles we don't want to try to update.  Record the
        // current modtimes of the others so we can compare them later.
        {
            var d: [*c]struct_goaldep = read_files;
            var last: [*c]struct_goaldep = NULL;
            var mm_idx: c_uint = 0;

            while (d != 0) {
                var skip: c_int = 0;
                var f: [*c]struct_file = d.file;

                // Check for makefiles that are either phony or a :: target with
                // commands, but no dependencies.  These will always be remade,
                // which will cause an infinite restart loop, so don't try to
                // remake it (this will only happen if your makefiles are written
                // exceptionally stupidly; but if you work for Athena, that's how
                // you write your makefiles.)

                if (f.phony) {
                    skip = 1;
                } else { // for (f = f->double_colon; f != NULL; f = f->prev)
                    f = f.double_colon;
                    while (f != NULL) : (f = f.prev) {
                        if (f.deps == NULL and f.cmds != NULL) {
                            skip = 1;
                            break;
                        }
                    }
                }

                if (!skip) {
                    makefile_mtimes[mm_idx] = file_mtime_no_search(d.file);
                    mm_idx += 1;
                    last = d;
                    d = d.next;
                } else {
                    // DB (DB_VERBOSE,
                    //     (_("Makefile '%s' might loop; not remaking it.\n"),
                    //      f.name));
                    if (ISDB(DB_VERBOSE)) {
                        printf(gettext("Makefile '%s' might loop; not remaking it.\n"), f.name);
                        fflush(stdout);
                    }

                    if (last) {
                        last.next = d.next;
                    } else {
                        read_files = d.next;
                    }
                    if (d.@"error" and !(d.flags & RM_DONTCARE)) {
                        // This file won't be rebuilt, was not found, and we care,
                        // so remember it to report later.
                        d.next = skipped_makefiles;
                        skipped_makefiles = d;
                        any_failed = 1;
                    } else free_goaldep(d);

                    d = if (last) last.next else read_files;
                }
            }
        }

        // Set up 'MAKEFLAGS' specially while remaking makefiles.
        define_makeflags(1);

        {
            const orig_db_level: c_int = db_level;

            if (!(ISDB(DB_MAKEFILES))) {
                db_level = DB_NONE;
            }

            rebuilding_makefiles = 1;
            status = update_goal_chain(read_files);
            rebuilding_makefiles = 0;

            db_level = orig_db_level;
        }

        // Report errors for makefiles that needed to be remade but were not.
        while (skipped_makefiles != NULL) {
            var d: [*c]struct_goaldep = skipped_makefiles;
            const err: [*c]const u8 = strerror(d.@"error");

            OSS(@"error", &d.floc, gettext("%s: %s"), dep_name(d), err);

            skipped_makefiles = skipped_makefiles.next;
            free_goaldep(d);
        }

        // If we couldn't build something we need but otherwise we succeeded,
        // reset the status.
        if (any_failed and status == us_success)
            status = us_none;

        switch (status) {
            us_question =>
            // The only way this can happen is if the user specified -q and asked
            // for one of the makefiles to be remade as a target on the command
            // line.  Since we're not actually updating anything with -q we can
            // treat this as "did nothing".
            {},

            us_none => {
                // Reload any unloaded shared objects.  Do not re-exec to have
                // that shared object loaded: a re-exec would cause an infinite
                // loop, because the shared object was not updated.
                var d: [*c]struct_goaldep = undefined;

                {
                    d = read_files;
                    while (d != null) : (d = d.next) {
                        if (d.file.unloaded) {
                            var f: [*c]struct_file = d.file;
                            // Load the file.  0 means failure.
                            if (load_file(&d.floc, f, 0) == 0)
                                OS(fatal, &d.floc, gettext("%s: failed to load"), f.name);
                            f.unloaded = 0;
                            f.loaded = 1;
                        }
                    }
                }
            },

            us_failed =>
            // Failed to update.  Figure out if we care.
            {
                // Nonzero if any makefile was successfully remade.
                var any_remade: c_int = 0;
                var i: c_uint = undefined;
                var d: [*c]struct_goaldep = undefined;

                {
                    i = 0;
                    d = read_files;
                    while (d != null) : ({
                        i += 1;
                        d = d.next;
                    }) {
                        if (d.file.updated) {
                            // This makefile was updated.
                            if (d.file.update_status == us_success) {
                                // It was successfully updated.
                                any_remade |= (file_mtime_no_search(d.file) != makefile_mtimes[i]);
                            } else if (!(d.flags & RM_DONTCARE)) {
                                var mtime: FILE_TIMESTAMP = undefined;
                                // The update failed and this makefile was not
                                // from the MAKEFILES variable, so we care.
                                OS(@"error", &d.floc, gettext("Failed to remake makefile '%s'."), d.file.name);
                                mtime = file_mtime_no_search(d.file);
                                any_remade |= (mtime != NONEXISTENT_MTIME and mtime != makefile_mtimes[i]);
                                makefile_status = MAKE_FAILURE;
                                any_failed = 1;
                            }
                        }

                        // This makefile was not found at all.
                        else if (!(d.flags & RM_DONTCARE)) {
                            const dnm: [*c]const u8 = dep_name(d);

                            // This is a makefile we care about.  See how much.
                            if (d.flags & RM_INCLUDED) {
                                // An included makefile.  We don't need to die, but we
                                // do want to complain.
                                OS(@"error", &d.floc, gettext("Included makefile '%s' was not found."), dnm);
                            } else {
                                // A normal makefile.  We must die later.
                                OS(@"error", NILF, gettext("Makefile '%s' was not found"), dnm);
                                any_failed = 1;
                            }
                        }
                    }
                }

                if (any_remade) {
                    // TODO: goto
                    // goto re_exec;
                }
            },

            us_success => {
                // TODO: goto
                // re_exec:
                // Updated successfully.  Re-exec ourselves.

                remove_intermediates(0);

                if (print_data_base_flag)
                    print_data_base();

                clean_jobserver(0);

                if (makefiles != 0) {

                    //  Makefile names might have changed due to expansion.
                    //  It's possible we'll need one extra argument:
                    //    make -Rf-
                    //  will expand to:
                    //    make -R --temp-stdin=<tmpfile>
                    //  so allocate more space.
                    var mfidx: c_int = 0;
                    var av: [*c][*c]u8 = argv;
                    var nv: [*c][*c]const u8 = undefined;

                    nargv = malloc(@sizeOf([*c]u8) * (argc + 1 + 1));
                    nv = nargv;
                    nv.* = av.*;
                    nv += 1;
                    av += 1;

                    { // for (; *av; ++av, ++nv)
                        while (av.* != 0) : ({
                            av += 1;
                            nv += 1;
                        }) {
                            var f: [*c]u8 = undefined;
                            const a: [*c]u8 = *av;
                            const mf: [*c]const u8 = makefiles.list[mfidx];

                            assert(strlen(a) > 0);

                            nv.* = a;

                            // Not an option: we handled option args earlier.
                            if (a[0] != '-')
                                continue;

                            // See if this option specifies a filename.  If so we need
                            // to replace it with the value from makefiles->list.

                            // To simplify, we'll replace all possible versions of this
                            // flag with a simple "-f<name>".

                            // Handle long options.
                            if (a[1] == '-') {
                                if (strcmp(a, "--file") == 0 or strcmp(a, "--makefile") == 0) { // Skip the next arg as we'll combine them.
                                    av += 1;
                                } else if (!strneq(a, "--file=", 7) and !strneq(a, "--makefile=", 11)) {
                                    continue;
                                }

                                if (mfidx == stdin_offset) {
                                    const na: [*c]u8 = malloc(CSTRLEN("--temp-stdin=") + strlen(mf) + 1);
                                    sprintf(na, "--temp-stdin=%s", mf);
                                    nv.* = na;
                                } else {
                                    const na: [*c]u8 = malloc(strlen(mf) + 3);
                                    sprintf(na, "-f%s", mf);
                                    nv.* = na;
                                }

                                mfidx += 1;
                                continue;
                            }

                            // Handle short options.  If 'f' is the last option, it may
                            // be followed by <name>.
                            f = strchr(a, 'f');
                            if (!f)
                                continue;

                            // If there's an extra argument option skip it.
                            if (f[1] == '\x00')
                                av += 1;

                            if (mfidx == stdin_offset) {
                                const al: __size_t = f - a;
                                var na: [*c]u8 = undefined;

                                if (al > 1) {
                                    // Preserve the prior options.
                                    na = malloc(al + 1);
                                    memcpy(na, a, al);
                                    na[al] = '\x00';
                                    nv.* = na;
                                    nv += 1;
                                }

                                // Remove the "f" and any subsequent content.
                                na = malloc(CSTRLEN("--temp-stdin=") + strlen(mf) + 1);
                                sprintf(na, "--temp-stdin=%s", mf);
                                nv.* = na;
                            } else if (f[1] == '\x00') {
                                // -f <name> or -xyzf <name>.  Replace the name.
                                nv += 1;
                                nv.* = mf;
                            } else {
                                // -f<name> or -xyzf<name>.
                                const al: __size_t = f - a + 1;
                                const ml: __size_t = strlen(mf) + 1;
                                const na: [*c]u8 = malloc(al + ml);
                                memcpy(na, a, al);
                                memcpy(na + al, mf, ml);
                                nv.* = na;
                            }

                            mfidx += 1;
                        }
                    }

                    nv.* = NULL;
                }

                if (directories != 0 and directories.idx > 0) {
                    var bad: c_int = 1;
                    if (directory_before_chdir != 0) {
                        if (chdir(directory_before_chdir) < 0)
                            perror_with_name("chdir", "")
                        else
                            bad = 0;
                    }
                    if (bad)
                        O(fatal, NILF, gettext("Couldn't change back to original directory"));
                }

                restarts += 1;

                if (ISDB(DB_BASIC)) {
                    var p: [*c][*c]const u8 = undefined;
                    printf(gettext("Re-executing[%u]:"), restarts);
                    { // for (p = nargv; *p != 0; ++p)
                        p = nargv;
                        while (p.* != 0) : (p += 1) printf(" %s", *p);
                    }
                    putchar('\n');
                    fflush(stdout);
                }

                {
                    var p: [*c][*c]u8 = undefined;
                    { // for (p = environ; *p != 0; ++p)
                        p = environ;
                        while (p.* != 0) : (p += 1) {
                            if (strneq(*p, MAKELEVEL_NAME ++ "=", MAKELEVEL_LENGTH + 1)) {
                                p.* = malloc(40);
                                sprintf(*p, "%s=%u", MAKELEVEL_NAME, makelevel);
                            } else if (strneq(*p, "MAKE_RESTARTS=", CSTRLEN("MAKE_RESTARTS="))) {
                                p.* = malloc(40);
                                sprintf(*p, "MAKE_RESTARTS=%s%u", if (OUTPUT_IS_TRACED()) "-" else "", restarts);
                                restarts = 0;
                            }
                        }
                    }
                }

                // If we didn't set the restarts variable yet, add it.
                if (restarts) {
                    const b: [*c]u8 = malloc(40);
                    sprintf(b, "MAKE_RESTARTS=%s%u", if (OUTPUT_IS_TRACED()) "-" else "", restarts);
                    putenv(b);
                }

                fflush(stdout);
                fflush(stderr);

                osync_clear();

                // The exec'd "child" will be another make, of course.
                jobserver_pre_child(1);

                exec_command(@as([*c][*c]u8, nargv), environ);
                jobserver_post_child(1);

                temp_stdin_unlink();

                _exit(127);
            },
        }

        if (any_failed)
            die(MAKE_FAILURE);
    }

    // Set up 'MAKEFLAGS' again for the normal targets.
    define_makeflags(0);

    // Set always_make_flag if -B was given.
    always_make_flag = always_make_set;

    // If restarts is set we haven't set up -W files yet, so do that now.
    if (restarts and new_files != 0) {
        var p: [*c][*c]const u8 = undefined;

        { // for (p = new_files->list; *p != 0; ++p)
            p = new_files.list;
            while (p.* != 0) : (p += 1) {
                var f: [*c]struct_file = enter_file(*p);
                f.mtime_before_update = NEW_MTIME;
                f.last_mtime = f.mtime_before_update;
            }
        }
    }

    temp_stdin_unlink();

    // If there were no command-line goals, use the default.
    if (goals == 0) {
        var p: [*c]u8 = undefined;

        if (default_goal_var.recursive) {
            p = variable_expand(default_goal_var.value);
        } else {
            p = variable_buffer_output(variable_buffer, default_goal_var.value, strlen(default_goal_var.value));
            p.* = '\x00';
            p = variable_buffer;
        }

        if (*p != '\x00') {
            var f: [*c]struct_file = lookup_file(p);

            // If .DEFAULT_GOAL is a non-existent target, enter it into the
            // table and let the standard logic sort it out.
            if (f == 0) {
                var ns: [*c]struct_nameseq = undefined;

                ns = PARSE_SIMPLE_SEQ(&p, struct_nameseq);
                if (ns) {
                    // .DEFAULT_GOAL should contain one target.
                    if (ns.next != 0)
                        O(fatal, NILF, gettext(".DEFAULT_GOAL contains more than one target"));

                    f = enter_file(strcache_add(ns.name));

                    ns.name = 0; // It was reused by enter_file().
                    free_ns_chain(ns);
                }
            }

            if (f) {
                goals = alloc_goaldep();
                goals.file = f;
            }
        }
    } else lastgoal.next = 0;

    if (!goals) {
        const v: [*c]struct_variable = lookup_variable(STRING_SIZE_TUPLE("MAKEFILE_LIST"));
        if (v and v.value and v.value[0] != '\x00')
            O(fatal, NILF, gettext("No targets"));

        O(fatal, NILF, gettext("No targets specified and no makefile found"));
    }

    // Shuffle prerequisites to catch makefiles with incomplete depends.

    shuffle_goaldeps_recursive(goals);

    // Update the goals.

    DB(DB_BASIC, (gettext("Updating goal targets....\n")));

    {
        switch (update_goal_chain(goals)) {
            us_none => {
                // Nothing happened.
            },
            us_success => {
                // Keep the previous result.
            },
            us_question => {
                // We are under -q and would run some commands.
                makefile_status = MAKE_TROUBLE;
            },
            us_failed => {
                // Updating failed.  POSIX.2 specifies exit status >1 for this;
                makefile_status = MAKE_FAILURE;
            },
        }

        // If we detected some clock skew, generate one last warning
        if (clock_skew_detected)
            O(@"error", NILF, gettext("warning:  Clock skew detected.  Your build may be incomplete."));

        // Exit.
        die(makefile_status);
    }

    // NOTREACHED
    exit(MAKE_SUCCESS);
}

pub var options: [121]u8 = @import("std").mem.zeroes([121]u8);
pub var long_options: [49]struct_option = @import("std").mem.zeroes([49]struct_option);

pub fn init_switches() callconv(.C) void {
    var p: [*c]u8 = undefined;
    _ = &p;
    var c: c_uint = undefined;
    _ = &c;
    var i: c_uint = undefined;
    _ = &i;
    if (@as(c_int, @bitCast(@as(c_uint, options[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) return;
    p = @as([*c]u8, @ptrCast(@alignCast(&options)));
    (blk: {
        const ref = &p;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }).* = '-';
    {
        i = 0;
        while (switches[i].c != @as(c_int, '\x00')) : (i +%= 1) {
            long_options[i].name = @as([*c]u8, @ptrCast(@volatileCast(@constCast(if (switches[i].long_name == null) "" else switches[i].long_name))));
            long_options[i].flag = null;
            long_options[i].val = switches[i].c;
            if (switches[i].c <= @as(c_int, 127)) {
                (blk: {
                    const ref = &p;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk tmp;
                }).* = @as(u8, @bitCast(@as(i8, @truncate(switches[i].c))));
            }
            while (true) {
                switch (switches[i].type) {
                    @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 7))) => {
                        long_options[i].has_arg = 0;
                        break;
                    },
                    @as(c_uint, @bitCast(@as(c_int, 2))), @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 4))), @as(c_uint, @bitCast(@as(c_int, 5))), @as(c_uint, @bitCast(@as(c_int, 6))) => {
                        if (switches[i].c <= @as(c_int, 127)) {
                            (blk: {
                                const ref = &p;
                                const tmp = ref.*;
                                ref.* += 1;
                                break :blk tmp;
                            }).* = ':';
                        }
                        if (switches[i].noarg_value != null) {
                            if (switches[i].c <= @as(c_int, 127)) {
                                (blk: {
                                    const ref = &p;
                                    const tmp = ref.*;
                                    ref.* += 1;
                                    break :blk tmp;
                                }).* = ':';
                            }
                            long_options[i].has_arg = 2;
                        } else {
                            long_options[i].has_arg = 1;
                        }
                        break;
                    },
                    else => {},
                }
                break;
            }
        }
    }
    p.* = '\x00';
    {
        c = 0;
        while (@as(c_ulong, @bitCast(@as(c_ulong, c))) < (@sizeOf([9]struct_option) / @sizeOf(struct_option))) : (c +%= 1) {
            long_options[
                blk: {
                    const ref = &i;
                    const tmp = ref.*;
                    ref.* +%= 1;
                    break :blk tmp;
                }
            ] = long_option_aliases[c];
        }
    }
    long_options[i].name = null;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/main.c:3019:1: warning: unable to translate function, demoted to extern
pub extern fn handle_non_switch_argument(arg_arg: [*c]const u8, arg_origin: enum_variable_origin) callconv(.C) void;

pub export fn reset_makeflags(arg_origin: enum_variable_origin) void {
    var origin = arg_origin;
    _ = &origin;
    decode_env_switches("MAKEFLAGS", @sizeOf([10]u8) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), origin);
    construct_include_path(if (include_dirs != null) include_dirs.*.list else null);
    _ = define_makeflags(rebuilding_makefiles);
}

pub fn decode_switches(arg_argc: c_int, arg_argv: [*c][*c]const u8, arg_origin: enum_variable_origin) callconv(.C) void {
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    var origin = arg_origin;
    _ = &origin;
    var bad: c_int = 0;
    _ = &bad;
    var cs: ?*struct_command_switch = undefined;
    _ = &cs;
    var sl: [*c]struct_stringlist = undefined;
    _ = &sl;
    var c: c_int = undefined;
    _ = &c;
    init_switches();
    opterr = @intFromBool(origin == @as(c_uint, @bitCast(o_command)));
    optind = 0;
    while (optind < argc) {
        var coptarg: [*c]const u8 = undefined;
        _ = &coptarg;
        c = getopt_long(argc, @as([*c]const [*c]u8, @ptrCast(@alignCast(argv))), @as([*c]u8, @ptrCast(@alignCast(&options))), @as([*c]struct_option, @ptrCast(@alignCast(&long_options))), null);
        coptarg = optarg;
        if (c == -@as(c_int, 1)) break else if (c == @as(c_int, 1)) {
            handle_non_switch_argument(coptarg, origin);
        } else if (c == @as(c_int, '?')) {
            bad = 1;
        } else {
            cs = @as(?*struct_command_switch, @ptrCast(&switches));
            while (cs.*.c != @as(c_int, '\x00')) : (cs += 1) if (cs.*.c == c) {
                var doit: c_int = @intFromBool((origin == @as(c_uint, @bitCast(o_command))) or ((@as(c_int, @bitCast(cs.*.env)) != 0) and ((cs.*.origin == @as([*c]enum_variable_origin, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (origin >= cs.*.origin.*))));
                _ = &doit;
                if (doit != 0) {
                    cs.*.specified = 1;
                }
                while (true) {
                    switch (cs.*.type) {
                        else => {
                            abort();
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 7))) => break,
                        @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))) => {
                            if (doit != 0) {
                                @as([*c]c_int, @ptrCast(@alignCast(cs.*.value_ptr))).* = @intFromBool(cs.*.type == @as(c_uint, @bitCast(flag)));
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 2))), @as(c_uint, @bitCast(@as(c_int, 3))), @as(c_uint, @bitCast(@as(c_int, 4))) => {
                            if (!(doit != 0)) break;
                            if (!(coptarg != null)) {
                                coptarg = @as([*c]const u8, @ptrCast(@alignCast(cs.*.noarg_value)));
                            } else if (@as(c_int, @bitCast(@as(c_uint, coptarg.*))) == @as(c_int, '\x00')) {
                                var opt: [2]u8 = "c"[0..1].* ++ [1]u8{0} ** 1;
                                _ = &opt;
                                var op: [*c]const u8 = @as([*c]u8, @ptrCast(@alignCast(&opt)));
                                _ = &op;
                                if (cs.*.c <= @as(c_int, 127)) {
                                    opt[@as(c_uint, @intCast(@as(c_int, 0)))] = @as(u8, @bitCast(@as(i8, @truncate(cs.*.c))));
                                } else {
                                    op = cs.*.long_name;
                                }
                                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(op), gettext("the '%s%s' option requires a non-empty string argument"), if (cs.*.c <= @as(c_int, 127)) "-" else "--", op);
                                bad = 1;
                                break;
                            }
                            if (cs.*.type == @as(c_uint, @bitCast(string))) {
                                var val: [*c][*c]u8 = @as([*c][*c]u8, @ptrCast(@alignCast(cs.*.value_ptr)));
                                _ = &val;
                                free(@as(?*anyopaque, @ptrCast(val.*)));
                                val.* = xstrdup(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                                break;
                            }
                            sl = @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).*;
                            if (sl == null) {
                                sl = @as([*c]struct_stringlist, @ptrCast(@alignCast(xmalloc(@sizeOf(struct_stringlist)))));
                                sl.*.max = 5;
                                sl.*.idx = 0;
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xmalloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 5)))) *% @sizeOf([*c]u8)))));
                                @as([*c][*c]struct_stringlist, @ptrCast(@alignCast(cs.*.value_ptr))).* = sl;
                            } else if (sl.*.idx == (sl.*.max -% @as(c_uint, @bitCast(@as(c_int, 1))))) {
                                sl.*.max +%= @as(c_uint, @bitCast(@as(c_int, 5)));
                                sl.*.list = @as([*c][*c]const u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(sl.*.list)), @as(c_ulong, @bitCast(@as(c_ulong, sl.*.max))) *% @sizeOf([*c]u8)))));
                            }
                            if (cs.*.c != @as(c_int, 'f')) {
                                var k: c_uint = undefined;
                                _ = &k;
                                {
                                    k = 0;
                                    while (k < sl.*.idx) : (k +%= 1) if ((sl.*.list[k] == coptarg) or ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, @bitCast(@as(c_uint, coptarg.*)))) and ((@as(c_int, @bitCast(@as(c_uint, sl.*.list[k].*))) == @as(c_int, '\x00')) or !(strcmp(sl.*.list[k] + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), coptarg + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))))) != 0)))) break;
                                }
                                if (k < sl.*.idx) break;
                            }
                            if (cs.*.type == @as(c_uint, @bitCast(strlist))) {
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = xstrdup(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            } else if (cs.*.c == (@as(c_int, 127) + @as(c_int, 10))) {
                                if (stdin_offset > @as(c_int, 0)) {
                                    fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), "INTERNAL: multiple --temp-stdin options provided!");
                                }
                                stdin_offset = @as(c_int, @bitCast(sl.*.idx));
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = strcache_add(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            } else {
                                sl.*.list[
                                    blk: {
                                        const ref = &sl.*.idx;
                                        const tmp = ref.*;
                                        ref.* +%= 1;
                                        break :blk tmp;
                                    }
                                ] = expand_command_line_file(coptarg);
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            sl.*.list[sl.*.idx] = null;
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 5))) => {
                            if ((coptarg == null) and (argc > optind)) {
                                var cp: [*c]const u8 = undefined;
                                _ = &cp;
                                {
                                    cp = (blk: {
                                        const tmp = optind;
                                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*;
                                    while ((@as(c_uint, @bitCast(@as(c_uint, cp[@as(c_uint, @intCast(@as(c_int, 0)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) : (cp += 1) {}
                                }
                                if (@as(c_int, @bitCast(@as(c_uint, cp[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00')) {
                                    coptarg = (blk: {
                                        const tmp = blk_1: {
                                            const ref = &optind;
                                            const tmp_2 = ref.*;
                                            ref.* += 1;
                                            break :blk_1 tmp_2;
                                        };
                                        if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                    }).*;
                                }
                            }
                            if (!(doit != 0)) break;
                            if (coptarg != null) {
                                var err: [*c]const u8 = undefined;
                                _ = &err;
                                var i: c_uint = make_toui(coptarg, &err);
                                _ = &i;
                                if ((err != null) or (i == @as(c_uint, @bitCast(@as(c_int, 0))))) {
                                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), gettext("the '-%c' option requires a positive integer argument"), cs.*.c);
                                    bad = 1;
                                } else {
                                    @as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* = i;
                                    if (cs.*.origin != null) {
                                        cs.*.origin.* = origin;
                                    }
                                }
                            } else {
                                @as([*c]c_uint, @ptrCast(@alignCast(cs.*.value_ptr))).* = @as([*c]c_uint, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*;
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                        @as(c_uint, @bitCast(@as(c_int, 6))) => {
                            if (((coptarg == null) and (optind < argc)) and (((@as(c_uint, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[@as(c_uint, @intCast(@as(c_int, 0)))]))) -% @as(c_uint, @bitCast(@as(c_int, '0')))) <= @as(c_uint, @bitCast(@as(c_int, 9)))) or (@as(c_int, @bitCast(@as(c_uint, (blk: {
                                const tmp = optind;
                                if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '.')))) {
                                coptarg = (blk: {
                                    const tmp = blk_1: {
                                        const ref = &optind;
                                        const tmp_2 = ref.*;
                                        ref.* += 1;
                                        break :blk_1 tmp_2;
                                    };
                                    if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                                }).*;
                            }
                            if (doit != 0) {
                                @as([*c]f64, @ptrCast(@alignCast(cs.*.value_ptr))).* = if (coptarg != null) atof(coptarg) else @as([*c]f64, @ptrCast(@volatileCast(@constCast(cs.*.noarg_value)))).*;
                                if (cs.*.origin != null) {
                                    cs.*.origin.* = origin;
                                }
                            }
                            break;
                        },
                    }
                    break;
                }
                break;
            };
        }
    }
    while (optind < argc) {
        handle_non_switch_argument((blk: {
            const tmp = blk_1: {
                const ref = &optind;
                const tmp_2 = ref.*;
                ref.* += 1;
                break :blk_1 tmp_2;
            };
            if (tmp >= 0) break :blk argv + @as(usize, @intCast(tmp)) else break :blk argv - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*, origin);
    }
    if ((bad != 0) and (origin == @as(c_uint, @bitCast(o_command)))) {
        print_usage(bad);
    }
    decode_debug_flags();
    decode_output_sync_flags();
    run_silent = silent_flag;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/main.c:3380:1: warning: unable to translate function, demoted to extern
pub extern fn decode_env_switches(arg_envar: [*c]const u8, arg_len: usize, arg_origin: enum_variable_origin) callconv(.C) void;

pub fn quote_for_env(arg_out: [*c]u8, arg_in: [*c]const u8) callconv(.C) [*c]u8 {
    var out = arg_out;
    _ = &out;
    var in = arg_in;
    _ = &in;
    while (@as(c_int, @bitCast(@as(c_uint, in.*))) != @as(c_int, '\x00')) {
        if (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '$')) {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '$';
        } else if (((@as(c_int, @bitCast(@as(c_uint, stopchar_map[@as(u8, @bitCast(in.*))]))) & @as(c_int, 2)) != @as(c_int, 0)) or (@as(c_int, @bitCast(@as(c_uint, in.*))) == @as(c_int, '\\'))) {
            (blk: {
                const ref = &out;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).* = '\\';
        }
        (blk: {
            const ref = &out;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).* = (blk: {
            const ref = &in;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
    }
    return out;
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/main.c:3471:1: warning: unable to translate function, demoted to extern
pub extern fn define_makeflags(arg_makefile: c_int) ?*struct_variable;

pub export fn should_print_dir() c_int {
    if (print_directory_flag >= @as(c_int, 0)) return print_directory_flag;
    return @intFromBool(!(silent_flag != 0) and ((makelevel > @as(c_uint, @bitCast(@as(c_int, 0)))) or (directories != @as([*c]struct_stringlist, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))));
}

pub fn print_version() callconv(.C) void {
    const printed_version = struct {
        var static: c_int = 0;
    };
    _ = &printed_version;
    var precede: [*c]const u8 = if (print_data_base_flag != 0) "# " else "";
    _ = &precede;
    if (printed_version.static != 0) return;
    _ = printf("%sGNU Make %s\n", precede, version_string);
    if (!(remote_description != null) or (@as(c_int, @bitCast(@as(c_uint, remote_description.*))) == @as(c_int, '\x00'))) {
        _ = printf(gettext("%sBuilt for %s\n"), precede, make_host);
    } else {
        _ = printf(gettext("%sBuilt for %s (%s)\n"), precede, make_host, remote_description);
    }
    _ = printf("%sCopyright (C) 1988-2023 Free Software Foundation, Inc.\n", precede);
    _ = printf(gettext("%sLicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>\n%sThis is free software: you are free to change and redistribute it.\n%sThere is NO WARRANTY, to the extent permitted by law.\n"), precede, precede, precede);
    printed_version.static = 1;
}

pub fn print_data_base() callconv(.C) void {
    var when: time_t = time(@as([*c]time_t, @ptrFromInt(@as(c_int, 0))));
    _ = &when;
    print_version();
    _ = printf(gettext("\n# Make data base, printed on %s"), ctime(&when));
    print_variable_data_base();
    print_dir_data_base();
    print_rule_data_base();
    print_file_data_base();
    print_vpath_data_base();
    strcache_print_stats("#");
    when = time(@as([*c]time_t, @ptrFromInt(@as(c_int, 0))));
    _ = printf(gettext("\n# Finished Make data base on %s\n"), ctime(&when));
}

pub fn clean_jobserver(arg_status: c_int) callconv(.C) void {
    var status = arg_status;
    _ = &status;
    if ((jobserver_enabled() != 0) and (jobserver_tokens != 0)) {
        if (status != @as(c_int, 2)) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), ((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3)))), "INTERNAL: Exiting with %u jobserver tokens (should be 0)!", jobserver_tokens);
        } else while ((blk: {
            const ref = &jobserver_tokens;
            ref.* -%= 1;
            break :blk ref.*;
        }) != 0) {
            jobserver_release(@as(c_int, 0));
        }
    }
    if (master_job_slots != 0) {
        var tokens: c_uint = @as(c_uint, @bitCast(@as(c_int, 1))) +% jobserver_acquire_all();
        _ = &tokens;
        if (tokens != master_job_slots) {
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), (((@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 53)))) *% @sizeOf(uintmax_t)) / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 22))))) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 3))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))), "INTERNAL: Exiting with %u jobserver tokens available; should be %u!", tokens, master_job_slots);
        }
        reset_jobserver();
    }
}

pub export fn die(arg_status: c_int) noreturn {
    var status = arg_status;
    _ = &status;
    const dying = struct {
        var static: u8 = 0;
    };
    _ = &dying;
    if (!(dying.static != 0)) {
        var err: c_int = undefined;
        _ = &err;
        dying.static = 1;
        if (print_version_flag != 0) {
            print_version();
        }
        temp_stdin_unlink();
        err = @intFromBool(status != @as(c_int, 0));
        while (job_slots_used > @as(c_uint, @bitCast(@as(c_int, 0)))) {
            reap_children(@as(c_int, 1), err);
        }
        remote_cleanup();
        remove_intermediates(@as(c_int, 0));
        if (print_data_base_flag != 0) {
            print_data_base();
        }
        if (verify_flag != 0) {
            verify_file_data_base();
        }
        clean_jobserver(status);
        if (output_context != null) {
            output_close(output_context);
            if (output_context != (&make_sync)) {
                output_close(&make_sync);
            }
            while (true) {
                output_context = null;
                if (!false) break;
            }
        }
        output_close(null);
        osync_clear();
        if (directory_before_chdir != null) {
            var _x: c_int = undefined;
            _ = &_x;
            _x = chdir(directory_before_chdir);
        }
    }
    exit(status);
}
