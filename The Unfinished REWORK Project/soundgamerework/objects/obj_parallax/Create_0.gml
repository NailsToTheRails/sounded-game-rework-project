room_just_changed = 0
if instance_number(object_index) >= 2
{
	show_debug_message("PARALLAX: Extra obj_parallax in " + room_get_name(room));
	instance_destroy();
}
depth = -7;

parallax_layers = ["BG_distant", "BG_far", "BG_near", "BG_close", "BG_personal"];
parallax_values = [[0.8, 0.8], [0.7, 0.7], [0.6, 0.6], [0.5, 0.5], [0.4, 0.4]];