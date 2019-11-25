/// @func discord_wbhk_destroy
/// @arg Array

var _array = argument[0];

ds_map_destroy(_array[0]);
ds_map_destroy(_array[1]);

return 0;