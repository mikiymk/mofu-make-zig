const root = @import("root.zig");

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

pub fn main(arg_argc: c_int, arg_argv: [*c][*c]u8, arg_envp: [*c][*c]u8) c_int {
    _ = &arg_argc;
    _ = &arg_argv;
    _ = &arg_envp;

    var makefile_status: c_int = root.makeint.MAKE_SUCCESS;
    _ = &makefile_status;
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
