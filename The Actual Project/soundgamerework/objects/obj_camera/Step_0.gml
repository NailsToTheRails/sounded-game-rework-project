if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(obj_player))
{
    var target = obj_player
    var cam_width = camera_get_view_width(view_camera[0])
    var cam_height = camera_get_view_height(view_camera[0])
    var cam_x = camera_get_view_x(view_camera[0])
    var cam_y = camera_get_view_y(view_camera[0])
	cam_x += (((((target.x - (cam_width / 2)))) - cam_x))
	cam_y += ((((target.y - (cam_height / 2)) - 80) - cam_y))
    cam_x = clamp(cam_x, 0, (room_width - cam_width))
    cam_y = clamp(cam_y, 0, (room_height - cam_height))
   // camera_zoom(1, 0.00035)
    if (shake_mag != 0)
    {
        cam_x += irandom_range((-shake_mag), shake_mag)
        cam_y += irandom_range((-shake_mag), shake_mag)
    }
    camera_set_view_pos(view_camera[0], lerp(cam_x, camera_get_view_x(view_camera[0]), 0.3), (lerp(cam_y, camera_get_view_y(view_camera[0]), 0.3) + irandom_range((-shake_mag), shake_mag)))
	camera_set_view_size(view_camera[0], 960/targetzoom, 540/targetzoom	)
	
}