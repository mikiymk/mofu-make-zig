pub extern fn xmalloc(usize) ?*anyopaque;
pub extern fn xcalloc(usize) ?*anyopaque;
pub extern fn xrealloc(?*anyopaque, usize) ?*anyopaque;
pub extern fn xstrdup([*c]const u8) [*c]u8;
pub extern fn xstrndup([*c]const u8, usize) [*c]u8;
