scr_collision_init();
function scr_slope_angle(slope_id)
{
	var angle = 0;
	with slope_id
	{
		if sign(image_xscale) == 1
			angle = point_direction(bbox_left, bbox_bottom, bbox_right, bbox_top);
		if sign(image_xscale) == -1
			angle = -(point_direction(bbox_right, bbox_top, bbox_left, bbox_bottom) - 180);
	}
	return angle;
}
old_y = y;
old_x = x;
_hcarry = 0
_vcarry = 0
mach = 0
grav = GRAVITY_DEFAULT
character = "S" // s = sound | c = chef
state = states.normal
angle = 0
scr_characterspr();
