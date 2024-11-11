// Shit this was made by dist by the way .
// I Borrowed it (WIth Permission!!)
room_just_changed = 0
if instance_number(object_index) >= 2
{
	show_debug_message("PARALLAX: Extra obj_parallax in " + room_get_name(room));
	instance_destroy();
}
scrollx = 0
depth = -7;

parallax_layers = ["Background_distant", "Background_far", "Background_near", "Background_close", "Background_personal", "Background_cloud"];
parallax_values = [[0.8, 0.8], [0.7, 0.7], [0.6, 0.6], [0.5, 0.5], [0.4, 0.4], [0.8 , 0.8], [0.8 , 0.8]];