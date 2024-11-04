// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_normal()
{
	if (!grounded) {
	state = states.jump	
	}
	if (keyboard_check(vk_shift))
	{
		state = states.mach
		mach = 1
	}
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	hsp = approach(hsp, move * 6, 0.62)
	if (move != 0)
	{
		image_speed = hsp / 15
		image_xscale = move
		sprite_index = spr_walk

	}
	else {
		sprite_index = spr_idle
		image_speed = 0.35
	}
	if (keyboard_check_pressed(ord("Z")) && grounded)
	{
		vsp = -14
		state = states.jump
		sprite_index = spr_jump
	}
}

function scr_player_jump(){ 
	image_speed = 0.3
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	if (move != 0) {
	image_xscale = move	
	}
	hsp = approach(hsp, move * 6, 0.60)
	if (grounded) {
	state = states.normal
	}
}

function scr_player_machjump() {
		var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	if (instance_place(x+image_xscale,y,obj_solid)) {
	state = states.wallrun	
	}
	switch (mach) {
	case 0: // init
	sprite_index = spr_mach1air
		hsp = 0
		mach = 1
	break
	case 1: // mach 1
	sprite_index = spr_mach1air
		hsp += 0.15 * image_xscale
		hsp = clamp(hsp,-6,6)
		if (hsp = 6 * image_xscale) {
		mach = 2	
		}
		if (grounded) {
			state = states.mach
		}
		if (!keyboard_check(vk_shift) && grounded)
		{
				mach = 0
				state = states.normal
		}
	break
	case 2: // mach 2
	sprite_index = spr_mach2air
		hsp += 0.1 * image_xscale
		hsp = clamp(hsp,-10,10)
			if (hsp = 10 * image_xscale) {
				mach = 3	
			}
				if (hsp = 6 * image_xscale) {
					mach = 1
				}
			if (grounded) {
				state = states.mach
			}
	if (!keyboard_check(vk_shift))
	{
			mach = 0
			state = states.normal
	}
	break
	case 3: // mach 3
	sprite_index = spr_mach3air
		hsp += 0.02 * image_xscale
		hsp = clamp(hsp,-14,14)
		if (!keyboard_check(vk_shift))
		{
				mach = 0
				state = states.normal
		}
		if (grounded) {
				state = states.mach
		}
	break
	}
	if (keyboard_check(vk_down)) {
	vsp = -2
	hsp = 0
	state = states.machdown
	}
}

function scr_player_mach(){
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
	switch (mach) {
	case 0: // init
	sprite_index = spr_mach1
		hsp = 0
		mach = 1
	break
	case 1: // mach 1
	sprite_index = spr_mach1
		hsp += 0.15 * image_xscale
		hsp = clamp(hsp,-6,6)
		if (hsp = 6 * image_xscale) {
		mach = 2	
		}
		if (!keyboard_check(vk_shift))
		{
				mach = 0
				state = states.normal
		}
		if (hsp = 0) {
			mach = 0	
		}
		if (image_xscale == -1 && keyboard_check(vk_right))
			state = states.machturn
		if (image_xscale == 1 && keyboard_check(vk_left))
			state = states.machturn
	break
	case 2: // mach 2
	sprite_index = spr_mach2
		hsp += 0.1 * image_xscale
		hsp = clamp(hsp,-9,9)
			if (hsp = 9 * image_xscale) {
				mach = 3	
			}
			if (hsp = 6 * image_xscale) {
				mach = 1
			}
			if (hsp = 0) {
				mach = 0	
			}
	if (!keyboard_check(vk_shift))
	{
			mach = 0
			state = states.normal
	}
	if (image_xscale == -1 && keyboard_check(vk_right))
		state = states.machturn
	if (image_xscale == 1 && keyboard_check(vk_left))
		state = states.machturn
	break
	case 3: // mach 3
	sprite_index = spr_mach3
		hsp += 0.02 * image_xscale
		hsp = clamp(hsp,-14,14)
		if (hsp = 0) {
		mach = 0	
		}
		if (!keyboard_check(vk_shift))
		{
				mach = 0
				state = states.normal
		}
		if (image_xscale == -1 && keyboard_check(vk_right))
			state = states.machturn
		if (image_xscale == 1 && keyboard_check(vk_left))
			state = states.machturn
	break
	}
	if (!grounded) {
		state = states.machjump
	}
	if (keyboard_check_pressed(ord("Z")) && grounded)
	{
		vsp = -13
		state = states.machjump
	}
}

function scr_player_slide(){
	
}

function scr_player_machturn() {
	sprite_index = spr_machturn
	if (grounded) {
	image_speed = 0.3	
	}
	hsp = approach(hsp, image_xscale * 0, 0.65)
	if (hsp = 0 && grounded && animation_end()) {
	switch (mach) {
			case 0:
			state = states.mach
			hsp = 1 * -image_xscale
			image_xscale = -image_xscale
		break
			case 1:
			state = states.mach
			hsp = 5 * -image_xscale
			image_xscale = -image_xscale
		break
			case 2:
			state = states.mach
			hsp = 9 * -image_xscale
			image_xscale = -image_xscale
		break
			case 3:
			state = states.mach
			hsp = 13 * -image_xscale
			image_xscale = -image_xscale
		break
	}
	}
	if (!grounded && animation_end()) {
	image_speed = 0	
	}
}

function scr_player_wallrun() {
	sprite_index = spr_machturn
	image_speed = 0.3
	if (place_meeting(x+image_xscale,y+5,obj_solid))
    {
		hsp = 0
		vsp = approach(vsp,-14,0.82)
		vsp = clamp(vsp,-14,-7)
	}
	if (!place_meeting(x+image_xscale,y+5,obj_solid))
    {
		vsp = -2
	    state = states.mach
		hsp =  image_xscale * 11 + image_xscale * mach 
    }
	if (keyboard_check_pressed(ord("Z")) && !grounded)
    {
        hsp = -image_xscale * 10 + -image_xscale * mach + -image_xscale * 2.5 
        vsp = -14
		image_xscale = -image_xscale
        state = states.machjump
    }
}

function scr_player_machdown() {
vsp = approach(vsp,  18, 0.95)
hsp = approach(hsp, 0, 0.95)
if (instance_place(x,y+1.2,obj_slope)) {
	var slope = instance_place(x,y+1.2,obj_slope) 
	state = states.mach
	hsp = vsp * -clamp(slope.image_xscale,-1,1) + 2 * -clamp(slope.image_xscale,-1,1)
	image_xscale = -clamp(slope.image_xscale,-1,1)
}
if (instance_place(x,y+1,par_collision)) {
state = states.mach
hsp = vsp * image_xscale
}
}