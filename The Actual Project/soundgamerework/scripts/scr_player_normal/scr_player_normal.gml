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
	if (keyboard_check_pressed(vk_down)) {
	vsp = 0
	hsp = 0
	state = states.machdownprep
	image_index = 0	
	exit;
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
	if (keyboard_check(vk_down) && grounded) {
		state = states.slide
	}
}

function scr_player_slide(){
	mask_index = spr_sound_slideingmask
	sprite_index = spr_machslide
	var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
		switch (mach) {
	case 0: // init
		hsp = 2
		mach = 1
	break
	case 1: // mach 1
		hsp += 0.15 * image_xscale
		hsp = clamp(hsp,-6,6)
	break
	case 2: // mach 2
	hsp += 0.2 * image_xscale
	hsp = clamp(hsp,-10,10)
	break
	case 3: // mach 3
	hsp += 0.25 * image_xscale
	hsp = clamp(hsp,-14,14)
	break
	}
	if (!keyboard_check(vk_down) && !instance_place(x,y-15,obj_solid) && grounded)
	{
		mask_index = spr_sound_mask
		state = states.mach
	}
	if (keyboard_check_pressed(ord("Z")) && grounded && !instance_place(x,y-15,obj_solid))
	{
		mask_index = spr_sound_mask
		vsp = -12
		state = states.machjump
	}
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

function scr_player_machdownprep() 
{
    var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
    if (sprite_index != spr_divebomb) 
    {
      sprite_index = spr_divebomb
      image_speed = 0.3
      image_index = 0    
    } 
    else 
    {
      vsp = approach(vsp, 0, 0.45)    
      hsp = approach(hsp, 0, 0.95)
      if (image_index > 2) && (image_index < 4) {
          vsp += -1.5
      }
      if (animation_end())
      {
        sprite_index = spr_diveingbomb 
        state = states.machdown  
        exit;
      }
    }
}

function scr_player_machdown() {
var move = (keyboard_check(vk_right) - keyboard_check(vk_left))
image_speed = 0.35
if (sprite_index == spr_diveingbomb) {
    vsp = approach(vsp,  18, 0.75)
    hsp = approach(hsp, move * 1, 0.55)
	if keyboard_check_pressed(ord("X")) {
		hsp = 10 * image_xscale
		state = states.machjump
	}
    if place_meeting(x, y + 2, obj_slope)
    {
        state = states.mach 
        sprite_index = spr_mach3
        image_index = 0
        with instance_place(x, y + 2, obj_slope)
        {
            other.image_xscale = -clamp(self.image_xscale,-1,1)
            other.hsp = clamp(7 + (image_xscale / 2) + (other.vsp / 1.5), 10, 14) * -image_xscale
        }
        //movespeed = clamp(7 + (vsp / 3), 7, 14)
        exit;
    }
    if (instance_place(x,y+1,par_collision)) {
        if move != 0
            image_xscale = move 
        state = states.mach
        hsp = 10 * move
    }
}
}