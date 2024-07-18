pub extern fn gettext(__msgid: [*c]const u8) [*c]u8;
pub extern fn dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
pub extern fn __dgettext(__domainname: [*c]const u8, __msgid: [*c]const u8) [*c]u8;
pub extern fn dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
pub extern fn __dcgettext(__domainname: [*c]const u8, __msgid: [*c]const u8, __category: c_int) [*c]u8;
pub extern fn ngettext(__msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn dngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn dcngettext(__domainname: [*c]const u8, __msgid1: [*c]const u8, __msgid2: [*c]const u8, __n: c_ulong, __category: c_int) [*c]u8;
