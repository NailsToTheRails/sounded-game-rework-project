scr_input();
scroll++;
if (room == rm_title) 
exit;
if (!pause) {
instance_activate_all()	
}
if ((!pause) && key_start)
{
	scroll = 0
	pausemenunoise = random_range(0,3)
	pause = true
}
if (pause)
{
	instance_deactivate_all(true)
	moveselect = ((-key_up2) + key_down2)
	selected += moveselect
	selected = clamp(selected, 0, (array_length(pause_menu) - 1))
		if (moveselect != 0 && selected >= 0 && selected <= 2)
		scr_sound(sfx_step)
		if key_jump
		{
			switch selected
		{
			case 0:
			selected = 0
			pause = 0
			scroll = 0
				break
			case 1:
			selected = 0
			pause = 0
			room_goto(room)
			instance_create(x,y,obj_parallax)
			instance_create(x,y,obj_music)
			if (DEBUG)
			instance_create(x,y,obj_debuggerimgui)
			break
			case 2:
				selected = 0
				pause = 0
				scroll = 0
				alarm[0] = 2
			break
		}

	}
}