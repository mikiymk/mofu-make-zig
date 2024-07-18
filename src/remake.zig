const root = @import("root.zig");

const struct_goaldep = root.dep.struct_goaldep;
const struct_dep = root.dep.struct_dep;
const struct_file = root.filedef.struct_file;
const @"error" = root.output.@"error";
const floc = root.makeint.floc;
const us_none = root.filedef.us_none;
const enum_update_status_40 = root.filedef.enum_update_status;
const copy_dep_chain = root.misc.copy_dep_chain;
const start_waiting_jobs = root.job.start_waiting_jobs;
const reap_children = root.job.reap_children;
const command_count = root.main.command_count;
const us_question = root.filedef.us_question;
const us_success = root.filedef.us_success;
const keep_going_flag = root.main.keep_going_flag;
const run_silent = root.main.run_silent;
const message = root.output.message;
const free_ns_chain = root.misc.free_ns_chain;
const struct_nameseq = root.dep.struct_nameseq;
const strerror = root.misc.strerror;
const db_level = root.main.db_level;
const print_spaces = root.misc.print_spaces;
const cs_finished = root.filedef.cs_finished;
const cs_running = root.filedef.cs_running;
const cs_deps_running = root.filedef.cs_deps_running;
const cs_not_started = root.filedef.cs_not_started;
const us_failed = root.filedef.us_failed;
const perror_with_name = root.output.perror_with_name;
const find_next_token = root.misc.find_next_token;
const fatal = root.output.fatal;
const try_implicit_rule = root.implicit.try_implicit_rule;
const default_file = root.main.default_file;
const second_expansion = root.main.second_expansion;
const set_command_state = root.file.set_command_state;
const expand_deps = root.file.expand_deps;
const ar_name = root.ar.ar_name;
const ar_touch = root.ar.ar_touch;
const chop_commands = root.commands.chop_commands;
const execute_file_commands = root.commands.execute_file_commands;
const file_timestamp_cons = root.file.file_timestamp_cons;
const check_symlink_flag = root.main.check_symlink_flag;
const variable_expand = root.expand.variable_expand;
const find_percent = root.read.find_percent;
const variable_buffer_output = root.expand.variable_buffer_output;
const variable_buffer = root.expand.variable_buffer;
const strcache_add = root.strcache.strcache_add;
const vpath_search = root.vpath.vpath_search;
const touch_flag = root.main.touch_flag;
const question_flag = root.main.question_flag;
const just_print_flag = root.main.just_print_flag;
const rebuilding_makefiles = root.main.rebuilding_makefiles;

const printf = root.cstdio.printf;
const fflush = root.cstdio.fflush;
const stdout = root.cstdio.stdout;
const free = root.cstdlib.free;
const open = root.cstdio.open;
const struct_stat = root.cstat.struct_stat;
const fstat = root.cstat.fstat;
const read = root.cunistd.read;
const off_t = root.ctypes.off_t;
const __off_t = root.ctypes.__off_t;
const lseek = root.cunistd.lseek;
const write = root.cunistd.write;
const close = root.cunistd.close;
const stat = root.cstat.stat;
const strlen = root.cstring.strlen;
const strcpy = root.cstring.strcpy;
const lstat = root.cstat.lstat;
const __mode_t = root.ctypes.__mode_t;
const readlink = root.cunistd.readlink;
const strrchr = root.cstring.strrchr;
const xstrdup = root.cpublib.xstrdup;
const xmalloc = root.cpublib.xmalloc;
const xrealloc = root.cpublib.xrealloc;
const sprintf = root.cstdio.sprintf;
const uintmax_t = root.cstdint.uintmax_t;
const gettext = root.cgettext.gettext;
const __errno_location = root.cerrno.__errno_location;

pub const start_updating = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/remake.c:53:9

pub const finish_updating = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/remake.c:55:9

pub inline fn is_updating(_f: anytype) @TypeOf((if (_f.*.double_colon) _f.*.double_colon else _f).*.updating) {
    _ = &_f;
    return (if (_f.*.double_colon) _f.*.double_colon else _f).*.updating;
}

pub extern var commands_started: c_uint;

pub var goal_list: ?*struct_goaldep = @import("std").mem.zeroes(?*struct_goaldep);
pub var goal_dep: ?*struct_dep = @import("std").mem.zeroes(?*struct_dep);

pub var considered: c_uint = 0;

pub fn check_also_make(arg_file_1: ?*const struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var ad: ?*struct_dep = undefined;
    _ = &ad;
    var mtime: uintmax_t = file_1.*.last_mtime;
    _ = &mtime;
    if (mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        mtime = name_mtime(file_1.*.name);
    }
    if (((mtime >= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) and (mtime <= (((((((~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) -% (if (!(@as(uintmax_t, @bitCast(@as(c_long, -@as(c_int, 1)))) <= @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))))) @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) else ~@as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0)))) << @intCast((@sizeOf(uintmax_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) >> @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) << @intCast(if (true) @as(c_int, 30) else @as(c_int, 0))) +% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 2) + @as(c_int, 1))))) +% @as(uintmax_t, @bitCast(@as(c_long, if (true) @as(c_int, 1000000000) else @as(c_int, 1))))) -% @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))))) and (mtime > file_1.*.mtime_before_update)) {
        ad = file_1.*.also_make;
        while (ad != null) : (ad = ad.*.next) if (ad.*.file.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
            @"error"(if (file_1.*.cmds != null) &file_1.*.cmds.*.fileinfo else @as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(ad.*.file.*.name), gettext("warning: pattern recipe did not update peer target '%s'."), ad.*.file.*.name);
        };
    }
}

pub export fn update_goal_chain(arg_goaldeps: ?*struct_goaldep) enum_update_status_40 {
    var goaldeps = arg_goaldeps;
    _ = &goaldeps;
    var last_cmd_count: c_ulong = 0;
    _ = &last_cmd_count;
    var t: c_int = touch_flag;
    _ = &t;
    var q: c_int = question_flag;
    _ = &q;
    var n: c_int = just_print_flag;
    _ = &n;
    var status: enum_update_status_40 = @as(c_uint, @bitCast(us_none));
    _ = &status;
    var goals_orig: ?*struct_dep = copy_dep_chain(@as(?*struct_dep, @ptrCast(goaldeps)));
    _ = &goals_orig;
    var goals: ?*struct_dep = goals_orig;
    _ = &goals;
    goal_list = if (rebuilding_makefiles != 0) goaldeps else null;
    considered +%= 1;
    while (goals != null) {
        var gu: ?*struct_dep = undefined;
        _ = &gu;
        var g: ?*struct_dep = undefined;
        _ = &g;
        var lastgoal: ?*struct_dep = undefined;
        _ = &lastgoal;
        start_waiting_jobs();
        reap_children(@intFromBool(last_cmd_count == command_count), @as(c_int, 0));
        last_cmd_count = command_count;
        lastgoal = null;
        gu = goals;
        while (gu != null) {
            var file_1: ?*struct_file = undefined;
            _ = &file_1;
            var stop: c_int = 0;
            _ = &stop;
            var any_not_updated: c_int = 0;
            _ = &any_not_updated;
            g = if (gu.*.shuf != null) gu.*.shuf else gu;
            goal_dep = g;
            {
                file_1 = if (g.*.file.*.double_colon != null) g.*.file.*.double_colon else g.*.file;
                while (file_1 != @as(?*struct_file, @ptrCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))) : (file_1 = file_1.*.prev) {
                    var ocommands_started: c_uint = undefined;
                    _ = &ocommands_started;
                    var fail: enum_update_status_40 = undefined;
                    _ = &fail;
                    file_1.*.dontcare = @as(c_uint, @intFromBool((@as(c_int, @bitCast(g.*.flags)) & (@as(c_int, 1) << @intCast(2))) != @as(c_int, 0)));
                    while (file_1.*.renamed != null) {
                        file_1 = file_1.*.renamed;
                    }
                    if (rebuilding_makefiles != 0) {
                        if (file_1.*.cmd_target != 0) {
                            touch_flag = t;
                            question_flag = q;
                            just_print_flag = n;
                        } else {
                            touch_flag = blk: {
                                const tmp = blk_1: {
                                    const tmp_2 = @as(c_int, 0);
                                    just_print_flag = tmp_2;
                                    break :blk_1 tmp_2;
                                };
                                question_flag = tmp;
                                break :blk tmp;
                            };
                        }
                    }
                    ocommands_started = commands_started;
                    fail = update_file(file_1, @as(c_uint, @bitCast(if (rebuilding_makefiles != 0) @as(c_int, 1) else @as(c_int, 0))));
                    while (file_1.*.renamed != null) {
                        file_1 = file_1.*.renamed;
                    }
                    if (commands_started > ocommands_started) {
                        g.*.changed = 1;
                    }
                    stop = 0;
                    if (((fail != 0) or (@as(c_int, @bitCast(file_1.*.updated)) != 0)) and (status < @as(c_uint, @bitCast(us_question)))) {
                        if (file_1.*.update_status != 0) {
                            status = file_1.*.update_status;
                            stop = @intFromBool(((question_flag != 0) and !(keep_going_flag != 0)) and !(rebuilding_makefiles != 0));
                        } else {
                            var mtime: uintmax_t = if (rebuilding_makefiles != 0) if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(file_1, @as(c_int, 0)) else file_1.*.last_mtime else if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(file_1, @as(c_int, 1)) else file_1.*.last_mtime;
                            _ = &mtime;
                            while (file_1.*.renamed != null) {
                                file_1 = file_1.*.renamed;
                            }
                            if ((@as(c_int, @bitCast(file_1.*.updated)) != 0) and (mtime != file_1.*.mtime_before_update)) {
                                if (!(rebuilding_makefiles != 0) or (!(just_print_flag != 0) and !(question_flag != 0))) {
                                    status = @as(c_uint, @bitCast(us_success));
                                }
                                if ((rebuilding_makefiles != 0) and (@as(c_int, @bitCast(file_1.*.dontcare)) != 0)) {
                                    stop = 1;
                                }
                            }
                        }
                    }
                    any_not_updated |= !(file_1.*.updated != 0);
                    file_1.*.dontcare = 0;
                    if (stop != 0) break;
                }
            }
            file_1 = g.*.file;
            if ((stop != 0) or !(any_not_updated != 0)) {
                if ((((!(rebuilding_makefiles != 0) and (@as(c_int, @bitCast(file_1.*.update_status)) == us_success)) and !(g.*.changed != 0)) and !(run_silent != 0)) and !(question_flag != 0)) {
                    message(@as(c_int, 1), strlen(file_1.*.name), if ((@as(c_int, @bitCast(file_1.*.phony)) != 0) or (file_1.*.cmds == null)) gettext("Nothing to be done for '%s'.") else gettext("'%s' is up to date."), file_1.*.name);
                }
                if (lastgoal == null) {
                    goals = gu.*.next;
                } else {
                    lastgoal.*.next = gu.*.next;
                }
                gu = if (lastgoal == null) goals else lastgoal.*.next;
                if (stop != 0) break;
            } else {
                lastgoal = gu;
                gu = gu.*.next;
            }
        }
        if (gu == null) {
            considered +%= 1;
        }
    }
    free_ns_chain(@as([*c]struct_nameseq, @ptrCast(@alignCast(goals_orig))));
    if (rebuilding_makefiles != 0) {
        touch_flag = t;
        question_flag = q;
        just_print_flag = n;
    }
    return status;
}

pub export fn show_goal_error() void {
    var goal: ?*struct_goaldep = undefined;
    _ = &goal;
    if ((@as(c_int, @bitCast(goal_dep.*.flags)) & ((@as(c_int, 1) << @intCast(1)) | (@as(c_int, 1) << @intCast(2)))) != (@as(c_int, 1) << @intCast(1))) return;
    {
        goal = goal_list;
        while (goal != null) : (goal = goal.*.next) if (goal_dep.*.file == goal.*.file) {
            if (goal.*.@"error" != 0) {
                @"error"(&goal.*.floc, strlen(goal.*.file.*.name) +% strlen(strerror(goal.*.@"error")), "%s: %s", goal.*.file.*.name, strerror(goal.*.@"error"));
                goal.*.@"error" = 0;
            }
            return;
        };
    }
}

pub fn update_file(arg_file_1: ?*struct_file, arg_depth: c_uint) callconv(.C) enum_update_status_40 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    var status: enum_update_status_40 = @as(c_uint, @bitCast(us_success));
    _ = &status;
    var f: ?*struct_file = undefined;
    _ = &f;
    f = if (file_1.*.double_colon != null) file_1.*.double_colon else file_1;
    if (f.*.considered == considered) {
        if (!((((@as(c_int, @bitCast(f.*.updated)) != 0) and (@as(c_int, @bitCast(f.*.update_status)) > us_none)) and !(f.*.dontcare != 0)) and (@as(c_int, @bitCast(f.*.no_diag)) != 0))) {
            while (true) {
                if ((@as(c_int, 2) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Pruning file '%s'.\n"), file_1.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            return @as(c_uint, @bitCast(if (@as(c_int, @bitCast(f.*.command_state)) == cs_finished) @as(c_int, @bitCast(f.*.update_status)) else us_success));
        }
    }
    while (f != null) : (f = f.*.prev) {
        var new: enum_update_status_40 = undefined;
        _ = &new;
        f.*.considered = considered;
        new = update_file_1(f, depth);
        while (f.*.renamed != null) {
            f = f.*.renamed;
        }
        if ((new != 0) and !(keep_going_flag != 0)) return new;
        if ((@as(c_int, @bitCast(f.*.command_state)) == cs_running) or (@as(c_int, @bitCast(f.*.command_state)) == cs_deps_running)) return @as(c_uint, @bitCast(us_success));
        if (new > status) {
            status = new;
        }
    }
    return status;
}

pub fn complain(arg_file_1: ?*struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    var d: ?*struct_dep = undefined;
    _ = &d;
    {
        d = file_1.*.deps;
        while (d != null) : (d = d.*.next) {
            if (((@as(c_int, @bitCast(d.*.file.*.updated)) != 0) and (@as(c_int, @bitCast(d.*.file.*.update_status)) > us_none)) and (@as(c_int, @bitCast(file_1.*.no_diag)) != 0)) {
                complain(d.*.file);
                break;
            }
        }
    }
    if (d == null) {
        show_goal_error();
        if (file_1.*.parent != null) {
            var l: usize = (strlen(file_1.*.name) +% strlen(file_1.*.parent.*.name)) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))));
            _ = &l;
            var m: [*c]const u8 = gettext("%sNo rule to make target '%s', needed by '%s'%s");
            _ = &m;
            if (!(keep_going_flag != 0)) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), l, m, "", file_1.*.name, file_1.*.parent.*.name, "");
            }
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), l, m, "*** ", file_1.*.name, file_1.*.parent.*.name, ".");
        } else {
            var l: usize = strlen(file_1.*.name) +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))));
            _ = &l;
            var m: [*c]const u8 = gettext("%sNo rule to make target '%s'%s");
            _ = &m;
            if (!(keep_going_flag != 0)) {
                fatal(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), l, m, "", file_1.*.name, "");
            }
            @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), l, m, "*** ", file_1.*.name, ".");
        }
        file_1.*.no_diag = 0;
    }
}

// src/remake.c:453:14: warning: local variable has opaque type

// src/remake.c:446:1: warning: unable to translate function, demoted to extern
pub extern fn update_file_1(arg_file_1: ?*struct_file, arg_depth: c_uint) callconv(.C) enum_update_status_40;

// src/remake.c:964:15: warning: TODO implement translation of stmt class GotoStmtClass

// src/remake.c:939:1: warning: unable to translate function, demoted to extern
pub extern fn notice_finished_file(arg_file_1: ?*struct_file) void;

pub fn check_dep(arg_file_1: ?*struct_file, arg_depth: c_uint, arg_this_mtime: uintmax_t, arg_must_make_ptr: [*c]c_int) callconv(.C) enum_update_status_40 {
    var file_1 = arg_file_1;
    _ = &file_1;
    var depth = arg_depth;
    _ = &depth;
    var this_mtime = arg_this_mtime;
    _ = &this_mtime;
    var must_make_ptr = arg_must_make_ptr;
    _ = &must_make_ptr;
    var ofile: ?*struct_file = undefined;
    _ = &ofile;
    var d: ?*struct_dep = undefined;
    _ = &d;
    var dep_status: enum_update_status_40 = @as(c_uint, @bitCast(us_success));
    _ = &dep_status;
    _ = blk: {
        const tmp = @as(c_uint, @bitCast(@as(c_int, 1)));
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    ofile = file_1;
    if ((@as(c_int, @bitCast(file_1.*.phony)) != 0) or !(file_1.*.intermediate != 0)) {
        var mtime: uintmax_t = undefined;
        _ = &mtime;
        dep_status = update_file(file_1, depth);
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        mtime = if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(file_1, @as(c_int, 1)) else file_1.*.last_mtime;
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        if ((mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) or (mtime > this_mtime)) {
            must_make_ptr.* = 1;
        }
    } else {
        var mtime: uintmax_t = undefined;
        _ = &mtime;
        if ((!(file_1.*.phony != 0) and (file_1.*.cmds == null)) and !(file_1.*.tried_implicit != 0)) {
            _ = try_implicit_rule(file_1, depth);
            file_1.*.tried_implicit = 1;
        }
        if ((((file_1.*.cmds == null) and !(file_1.*.is_target != 0)) and (default_file != null)) and (default_file.*.cmds != null)) {
            while (true) {
                if ((@as(c_int, 8) & db_level) != 0) {
                    print_spaces(depth);
                    _ = printf(gettext("Using default commands for '%s'.\n"), file_1.*.name);
                    _ = fflush(stdout);
                }
                if (!false) break;
            }
            file_1.*.cmds = default_file.*.cmds;
        }
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        mtime = if (file_1.*.last_mtime == @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 0))))) f_mtime(file_1, @as(c_int, 1)) else file_1.*.last_mtime;
        while (file_1.*.renamed != null) {
            file_1 = file_1.*.renamed;
        }
        if ((mtime != @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) and (mtime > this_mtime)) {
            must_make_ptr.* = 1;
        } else {
            var ld: ?*struct_dep = undefined;
            _ = &ld;
            var deps_running: c_int = 0;
            _ = &deps_running;
            if (@as(c_int, @bitCast(file_1.*.command_state)) != cs_running) {
                if (@as(c_int, @bitCast(file_1.*.command_state)) == cs_deps_running) {
                    file_1.*.considered = 0;
                }
                set_command_state(file_1, @as(c_uint, @bitCast(cs_not_started)));
            }
            ld = null;
            if (second_expansion != 0) {
                expand_deps(file_1);
            }
            d = file_1.*.deps;
            while (d != null) {
                var new: enum_update_status_40 = undefined;
                _ = &new;
                var maybe_make: c_int = undefined;
                _ = &maybe_make;
                if ((if (d.*.file.*.double_colon != null) d.*.file.*.double_colon else d.*.file).*.updating != 0) {
                    @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(file_1.*.name) +% strlen(d.*.file.*.name), gettext("Circular %s <- %s dependency dropped."), file_1.*.name, d.*.file.*.name);
                    if (ld == null) {
                        file_1.*.deps = d.*.next;
                        free(@as(?*anyopaque, @ptrCast(d)));
                        d = file_1.*.deps;
                    } else {
                        ld.*.next = d.*.next;
                        free(@as(?*anyopaque, @ptrCast(d)));
                        d = ld.*.next;
                    }
                    continue;
                }
                d.*.file.*.parent = file_1;
                maybe_make = must_make_ptr.*;
                new = check_dep(d.*.file, depth +% @as(c_uint, @bitCast(@as(c_int, 1))), this_mtime, &maybe_make);
                if (new > dep_status) {
                    dep_status = new;
                }
                if (!(d.*.ignore_mtime != 0)) {
                    must_make_ptr.* = maybe_make;
                }
                while (d.*.file.*.renamed != null) {
                    d.*.file = d.*.file.*.renamed;
                }
                if ((dep_status != 0) and !(keep_going_flag != 0)) break;
                if ((@as(c_int, @bitCast(d.*.file.*.command_state)) == cs_running) or (@as(c_int, @bitCast(d.*.file.*.command_state)) == cs_deps_running)) {
                    deps_running = 1;
                }
                ld = d;
                d = d.*.next;
            }
            if (deps_running != 0) {
                set_command_state(file_1, @as(c_uint, @bitCast(cs_deps_running)));
            }
        }
    }
    _ = blk: {
        const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
        (if (file_1.*.double_colon != null) file_1.*.double_colon else file_1).*.updating = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = @as(c_uint, @bitCast(@as(c_int, 0)));
        (if (ofile.*.double_colon != null) ofile.*.double_colon else ofile).*.updating = tmp;
        break :blk tmp;
    };
    return dep_status;
}

pub const TOUCH_ERROR = @compileError("unable to translate C expr: unexpected token 'do'");
// src/remake.c:1220:9

pub fn touch_file(arg_file_1: ?*struct_file) callconv(.C) enum_update_status_40 {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (!(run_silent != 0)) {
        message(@as(c_int, 0), strlen(file_1.*.name), "touch %s", file_1.*.name);
    }
    if (just_print_flag != 0) return @as(c_uint, @bitCast(us_success));
    if (ar_name(file_1.*.name) != 0) return @as(c_uint, @bitCast(if (ar_touch(file_1.*.name) != 0) us_failed else us_success)) else {
        var fd: c_int = undefined;
        _ = &fd;
        while (((blk: {
            const tmp = open(file_1.*.name, @as(c_int, 2) | @as(c_int, 64), @as(c_int, 438));
            fd = tmp;
            break :blk tmp;
        }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
        if (fd < @as(c_int, 0)) {
            while (true) {
                perror_with_name("touch: open: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            }
        } else {
            var statbuf: struct_stat = undefined;
            _ = &statbuf;
            var buf: u8 = 'x';
            _ = &buf;
            var e: c_int = undefined;
            _ = &e;
            while (((blk: {
                const tmp = fstat(fd, &statbuf);
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (e < @as(c_int, 0)) while (true) {
                perror_with_name("touch: fstat: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(read(fd, @as(?*anyopaque, @ptrCast(&buf)), @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))))));
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (e < @as(c_int, 0)) while (true) {
                perror_with_name("touch: read: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            {
                var o: off_t = undefined;
                _ = &o;
                while (((blk: {
                    const tmp = lseek(fd, @as(c_long, 0), @as(c_int, 0));
                    o = tmp;
                    break :blk tmp;
                }) == @as(off_t, @bitCast(@as(c_long, -@as(c_int, 1))))) and (__errno_location().* == @as(c_int, 4))) {}
                if (o < @as(c_long, 0)) while (true) {
                    perror_with_name("touch: lseek: ", file_1.*.name);
                    return @as(c_uint, @bitCast(us_failed));
                };
            }
            while (((blk: {
                const tmp = @as(c_int, @bitCast(@as(c_int, @truncate(write(fd, @as(?*const anyopaque, @ptrCast(&buf)), @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))))));
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (e < @as(c_int, 0)) while (true) {
                perror_with_name("touch: write: ", file_1.*.name);
                return @as(c_uint, @bitCast(us_failed));
            };
            if (statbuf.st_size == @as(__off_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
                _ = close(fd);
                while (((blk: {
                    const tmp = open(file_1.*.name, @as(c_int, 2) | @as(c_int, 512), @as(c_int, 438));
                    fd = tmp;
                    break :blk tmp;
                }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
                if (fd < @as(c_int, 0)) while (true) {
                    perror_with_name("touch: open: ", file_1.*.name);
                    return @as(c_uint, @bitCast(us_failed));
                };
            }
            _ = close(fd);
        }
    }
    return @as(c_uint, @bitCast(us_success));
}

pub fn remake_file(arg_file_1: ?*struct_file) callconv(.C) void {
    var file_1 = arg_file_1;
    _ = &file_1;
    if (file_1.*.cmds == null) {
        if (file_1.*.phony != 0) {
            file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        } else if (file_1.*.is_target != 0) {
            file_1.*.update_status = @as(c_uint, @bitCast(us_success));
        } else {
            if (!(rebuilding_makefiles != 0) or !(file_1.*.dontcare != 0)) {
                complain(file_1);
            }
            file_1.*.update_status = @as(c_uint, @bitCast(us_failed));
        }
    } else {
        chop_commands(file_1.*.cmds);
        if (!(touch_flag != 0) or (@as(c_int, @bitCast(file_1.*.cmds.*.any_recurse)) != 0)) {
            execute_file_commands(file_1);
            return;
        }
        file_1.*.update_status = @as(c_uint, @bitCast(us_success));
    }
    notice_finished_file(file_1);
}

// /usr/include/alloca.h:35:23: warning: TODO implement function '__builtin_alloca' in std.zig.c_builtins

// src/remake.c:1334:1: warning: unable to translate function, demoted to extern
pub extern fn f_mtime(arg_file_1: ?*struct_file, arg_search: c_int) uintmax_t;

pub fn name_mtime(arg_name: [*c]const u8) callconv(.C) uintmax_t {
    var name = arg_name;
    _ = &name;
    var mtime: uintmax_t = undefined;
    _ = &mtime;
    var st: struct_stat = undefined;
    _ = &st;
    var e: c_int = undefined;
    _ = &e;
    while (((blk: {
        const tmp = stat(name, &st);
        e = tmp;
        break :blk tmp;
    }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
    if (e == @as(c_int, 0)) {
        mtime = file_timestamp_cons(name, st.st_mtim.tv_sec, st.st_mtim.tv_nsec);
    } else if ((__errno_location().* == @as(c_int, 2)) or (__errno_location().* == @as(c_int, 20))) {
        mtime = 1;
    } else {
        perror_with_name("stat: ", name);
        return 1;
    }
    if ((check_symlink_flag != 0) and (strlen(name) <= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4096)))))) {
        var lpath: [4097]u8 = undefined;
        _ = &lpath;
        _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&lpath))), name);
        while (true) {
            var ltime: uintmax_t = undefined;
            _ = &ltime;
            var lbuf: [4097]u8 = undefined;
            _ = &lbuf;
            var llen: c_long = undefined;
            _ = &llen;
            var p: [*c]u8 = undefined;
            _ = &p;
            while (((blk: {
                const tmp = lstat(@as([*c]u8, @ptrCast(@alignCast(&lpath))), &st);
                e = tmp;
                break :blk tmp;
            }) == -@as(c_int, 1)) and (__errno_location().* == @as(c_int, 4))) {}
            if (e != 0) {
                if ((__errno_location().* != @as(c_int, 2)) and (__errno_location().* != @as(c_int, 20))) {
                    perror_with_name("lstat: ", @as([*c]u8, @ptrCast(@alignCast(&lpath))));
                }
                break;
            }
            if (!((st.st_mode & @as(__mode_t, @bitCast(@as(c_int, 61440)))) == @as(__mode_t, @bitCast(@as(c_int, 40960))))) break;
            ltime = file_timestamp_cons(@as([*c]u8, @ptrCast(@alignCast(&lpath))), st.st_mtim.tv_sec, st.st_mtim.tv_nsec);
            if (ltime > mtime) {
                mtime = ltime;
            }
            while (((blk: {
                const tmp = readlink(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))), @as(usize, @bitCast(@as(c_long, @as(c_int, 4096) - @as(c_int, 1)))));
                llen = tmp;
                break :blk tmp;
            }) == @as(c_long, @bitCast(@as(c_long, -@as(c_int, 1))))) and (__errno_location().* == @as(c_int, 4))) {}
            if (llen < @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) {
                perror_with_name("readlink: ", @as([*c]u8, @ptrCast(@alignCast(&lpath))));
                break;
            }
            lbuf[@as(c_ulong, @intCast(llen))] = '\x00';
            if ((@as(c_int, @bitCast(@as(c_uint, lbuf[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '/')) or ((blk: {
                const tmp = strrchr(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as(c_int, '/'));
                p = tmp;
                break :blk tmp;
            }) == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                _ = strcpy(@as([*c]u8, @ptrCast(@alignCast(&lpath))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))));
            } else if (((@divExact(@as(c_long, @bitCast(@intFromPtr(p) -% @intFromPtr(@as([*c]u8, @ptrCast(@alignCast(&lpath)))))), @sizeOf(u8)) + llen) + @as(c_long, @bitCast(@as(c_long, @as(c_int, 2))))) > @as(c_long, @bitCast(@as(c_long, @as(c_int, 4096))))) break else {
                _ = strcpy(p + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), @as([*c]u8, @ptrCast(@alignCast(&lbuf))));
            }
        }
    }
    return mtime;
}

pub fn library_search(arg_lib: [*c]const u8, arg_mtime_ptr: [*c]uintmax_t) callconv(.C) [*c]const u8 {
    var lib = arg_lib;
    _ = &lib;
    var mtime_ptr = arg_mtime_ptr;
    _ = &mtime_ptr;
    const dirs = struct {
        var static: [4][*c]const u8 = [4][*c]const u8{
            "/lib",
            "/usr/lib",
            "/usr/local/lib",
            null,
        };
    };
    _ = &dirs;
    var file_1: [*c]const u8 = null;
    _ = &file_1;
    var libpatterns: [*c]u8 = undefined;
    _ = &libpatterns;
    var mtime: uintmax_t = undefined;
    _ = &mtime;
    var p: [*c]u8 = undefined;
    _ = &p;
    var p2: [*c]const u8 = undefined;
    _ = &p2;
    var len: usize = undefined;
    _ = &len;
    var liblen: usize = undefined;
    _ = &liblen;
    var best_vpath: c_uint = 0;
    _ = &best_vpath;
    var best_path: c_uint = 0;
    _ = &best_path;
    var dp: [*c][*c]const u8 = undefined;
    _ = &dp;
    libpatterns = xstrdup(variable_expand("$(.LIBPATTERNS)"));
    lib += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))));
    liblen = strlen(lib);
    p2 = libpatterns;
    while ((blk: {
        const tmp = find_next_token(&p2, &len);
        p = tmp;
        break :blk tmp;
    }) != null) {
        const buf = struct {
            var static: [*c]u8 = null;
        };
        _ = &buf;
        const buflen = struct {
            var static: usize = 0;
        };
        _ = &buflen;
        const libdir_maxlen = struct {
            var static: usize = 0;
        };
        _ = &libdir_maxlen;
        const std_dirs = struct {
            var static: c_uint = 0;
        };
        _ = &std_dirs;
        var libbuf: [*c]u8 = undefined;
        _ = &libbuf;
        {
            var c: u8 = p[len];
            _ = &c;
            var p3: [*c]u8 = undefined;
            _ = &p3;
            var p4: [*c]u8 = undefined;
            _ = &p4;
            p[len] = '\x00';
            p3 = find_percent(p);
            if (!(p3 != null)) {
                @"error"(@as([*c]floc, @ptrFromInt(@as(c_int, 0))), strlen(p), gettext(".LIBPATTERNS element '%s' is not a pattern"), p);
                p[len] = c;
                continue;
            }
            p4 = variable_buffer_output(variable_buffer, p, @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p3) -% @intFromPtr(p))), @sizeOf(u8)))));
            p4 = variable_buffer_output(p4, lib, liblen);
            p4 = variable_buffer_output(p4, p3 + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1))))), len -% @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(p3) -% @intFromPtr(p))), @sizeOf(u8)))));
            p[len] = c;
            libbuf = variable_buffer;
        }
        mtime = name_mtime(libbuf);
        if (mtime != @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
            if (mtime_ptr != null) {
                mtime_ptr.* = mtime;
            }
            file_1 = strcache_add(libbuf);
            break;
        }
        {
            var vpath_index: c_uint = undefined;
            _ = &vpath_index;
            var path_index: c_uint = undefined;
            _ = &path_index;
            var f: [*c]const u8 = vpath_search(libbuf, if (mtime_ptr != null) &mtime else null, &vpath_index, &path_index);
            _ = &f;
            if (f != null) {
                if (((file_1 == null) or (vpath_index < best_vpath)) or ((vpath_index == best_vpath) and (path_index < best_path))) {
                    file_1 = f;
                    best_vpath = vpath_index;
                    best_path = path_index;
                    if (mtime_ptr != null) {
                        mtime_ptr.* = mtime;
                    }
                }
            }
        }
        if (!(buflen.static != 0)) {
            {
                dp = @as([*c][*c]const u8, @ptrCast(@alignCast(&dirs.static)));
                while (dp.* != null) : (dp += 1) {
                    var l: usize = strlen(dp.*);
                    _ = &l;
                    if (l > libdir_maxlen.static) {
                        libdir_maxlen.static = l;
                    }
                    std_dirs.static +%= 1;
                }
            }
            buflen.static = strlen(libbuf);
            buf.static = @as([*c]u8, @ptrCast(@alignCast(xmalloc((libdir_maxlen.static +% buflen.static) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))))));
        } else if (buflen.static < strlen(libbuf)) {
            buflen.static = strlen(libbuf);
            buf.static = @as([*c]u8, @ptrCast(@alignCast(xrealloc(@as(?*anyopaque, @ptrCast(buf.static)), (libdir_maxlen.static +% buflen.static) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))))));
        }
        {
            var vpath_index: c_uint = ~@as(c_uint, @bitCast(@as(c_int, 0))) -% std_dirs.static;
            _ = &vpath_index;
            {
                dp = @as([*c][*c]const u8, @ptrCast(@alignCast(&dirs.static)));
                while (dp.* != null) : (dp += 1) {
                    _ = sprintf(buf.static, "%s/%s", dp.*, libbuf);
                    mtime = name_mtime(buf.static);
                    if (mtime != @as(uintmax_t, @bitCast(@as(c_long, @as(c_int, 1))))) {
                        if ((file_1 == null) or (vpath_index < best_vpath)) {
                            file_1 = strcache_add(buf.static);
                            best_vpath = vpath_index;
                            if (mtime_ptr != null) {
                                mtime_ptr.* = mtime;
                            }
                        }
                    }
                    vpath_index +%= 1;
                }
            }
        }
    }
    free(@as(?*anyopaque, @ptrCast(libpatterns)));
    return file_1;
}
