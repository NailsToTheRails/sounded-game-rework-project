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
				hsp = approach(hsp, (move * walkspeed * 1.45), 1)	
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
} 
if (!dead) {
scr_collision();
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
scr_movementlock(); //movement lock check (hsp 0 vsp 0)
scr_dothisshitiguess(); // wind & water checker
scr_throwbombinator(); // perry this is my throw bomb inator
soliddebugvisiblier(); // does What it says Fucking Stpuid iIdot PLEASE
} 
else {
	state = states.death
	hsp = 0
	vsp = 0
}

         
            