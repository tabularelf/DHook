/// @func discord_wbhk_embeds_fields_add
/// @arg list
/// @arg name
/// @arg value
/// @arg [inline]

var _list = argument[0];
var _name = argument[1];
var _value = argument[2];
var _inline = "false";

var _field = ds_map_create();

if (argument_count > 3) {
	_inline = argument[3];
	if (is_real(_inline)) {
		switch(_inline) {
			case true: _inline = "true";  break;
			case false: _inline = "false"; break;
		}
	}
}

_field[? "name"] = _name;
_field[? "value"] = _value;
_field[? "inline"] = _inline;

var _pos = ds_list_size(_list);

_list[| _pos] = _field;
ds_list_mark_as_map(_list,_pos);
