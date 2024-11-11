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
hsp_carry = 0
vsp_carry = 0
hsp = 0
vsp = 0
mach = 0
mach2 = 0
grav = GRAVITY_DEFAULT
character = "S" // s = sound | c = chef
movementhsp = 0
state = states.normal
angle = 0
scr_characterspr();
scr_collide();
