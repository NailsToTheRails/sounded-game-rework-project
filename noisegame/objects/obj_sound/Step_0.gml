scr_input();
switch (state)
{
	case states.normal: 
		if (!grounded)
		state = states.jump
		if (move != 0)
		{
			image_xscale = move
			if (!key_sprint) {
			sprite_index = spr_sound_walk
				hsp = approach(hsp, (move * walkspeed), 1)
			} else {
			sprite_index = spr_sound_run
			    machlevel = 1
				state = states.mach1
			}
		}
		else {
			sprite_index = spr_sound_idle
				hsp = approach(hsp, 0, 0.5)
		}
			
		if (key_jump && grounded && !movelock) {
			sprite_index = spr_sound_jump
			vsp = jumpheight
			state = states.jump
		}
	break
	case states.jump:
		if (vsp > 0 && !grounded)
		{
			sprite_index = spr_sound_fall
			image_speed = 0.35
		} else {
			sprite_index = spr_sound_jump	
		}
		if (move != 0)
		{
			image_xscale = move
			if (!key_sprint) {
				hsp = approach(hsp, (move * walkspeed), 1)
			} else {
				hsp = approach(hsp, (move * walkspeed * 1.45), 1)	
			}
		}
		else {
				hsp = approach(hsp, 0, 0.5)
		}
		if (grounded)
		state = states.normal
	break
	case states.fireass:
	sprite_index = spr_sound_hurt
	if (move != 0)
	{
			image_xscale = move
			hsp = lerp(hsp, (move * 5), 0.4)
	} else
	hsp = approach(hsp, 0, 0.5)
	if (grounded)
		state = states.normal
	break
	case states.cutscenestate:
	// DO CUTSCENE WORK. IT SHOULD BE A CASE IN A CASE. CUTSCENE VAR.
	break
	case states.death:
	// Do 0
	break
	case states.mach1:
	{
	if keyboard_check(key_sprint) & machlevel = 1
	sprite_index = spr_sound_run
	if (walkspeed <= 8)
	   walkspeed += 0.075;
	else if (walkspeed >= 8)
    if (walkspeed >= 8)
	   machlevel = 2
	   state = states.mach2
    if keyboard_check_released(vk_shift)
	   state = states.normal
	}
	break
	case states.mach2:
    {
    if keyboard_check(key_sprint) & machlevel = 2
	   walkspeed = approach(walkspeed, 14, 0.04)
	else if keyboard_check_released(key_sprint)
	   machlevel = 1
	   state = states.normal
    }          
}   
if (!dead) {
scr_collision();
scr_throwbombinator();
scr_movementlock();
soliddebugvisiblier();
scr_dothisshitiguess();
// normal movement shit
if (!movelock)
	move = key_right - key_left

if (global.soundhp <= 0 && !instance_exists(obj_sounddie) && dead = false) {
visible = false
movelock = true
dead = true
instance_create(x,y,obj_sounddie) 
}

global.soundhp = clamp(global.soundhp,0,8)
}  else {
	state = states.death
	hsp = 0
	vsp = 0
}