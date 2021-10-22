/// @func dhook_enable_tts
/// @arg array
/// @arg bool

var _array = argument[0];
var _bool = argument[1];

var _map = _array[1];

if (is_real(_bool)) {
	switch(_bool) {
		case true: _bool = "true";  break;
		case false: _bool = "false"; break;
	}
}

_map[? "tts"] = _bool;