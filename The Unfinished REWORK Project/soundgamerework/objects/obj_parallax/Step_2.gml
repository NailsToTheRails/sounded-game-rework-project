var parallax_debug = false

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])
var _lay = layer_get_all()

for (var _i = 0; _i < array_length(_lay); _i++)
{
	//show_debug_message(string_contains(layer_get_name(_lay[_i]), parallax_layers[_i]))
	var _result = 0
	for (var _j = 0; _j < array_length(parallax_layers); _j++)
	{
		if string_contains(layer_get_name(_lay[_i]), parallax_layers[_j])
		{
			_result = 1
			break;
		}
	}
	if parallax_values[_i] != 0
	{
		if _result
		{
			layer_x(_lay[_i], lerp(0, cam_x, parallax_values[_j][0]))
			layer_y(_lay[_i], lerp(0, cam_y, parallax_values[_j][1]))
		}
		if string_contains(layer_get_name(_lay[_i]), "lockx")
		layer_x(_lay[_i], cam_x)
		if string_contains(layer_get_name(_lay[_i]), "locky") 
		layer_y(_lay[_i], cam_y)
	}
}

layer_x(layer_get_id("BG_still"), cam_x)
layer_y(layer_get_id("BG_still"), cam_y)

if room_just_changed && parallax_debug //global.debug.console_prints.parallax
{
	show_debug_message("PARALLAX DEBUG INFO:")

	for (var _k = 0; _k < array_length(_lay); _k++)
	{
		var _debug_print = layer_background_get_id(_lay[_k])
		if _debug_print != -1 
		{
			var _layer_name = layer_get_name(_lay[_k])
			var _layer_pos = [layer_get_x(_lay[_k]), layer_get_y(_lay[_k])]
			show_debug_message("LAYER NAME: {0}", _layer_name)
			show_debug_message("\"{0}\" SPRITE: {1}", _layer_name, sprite_get_name( layer_background_get_sprite(_debug_print) ))
			show_debug_message("LAYER POSITION: {0}, {1}", _layer_pos[0], _layer_pos[1])
		}
	}
	room_just_changed = 0
}