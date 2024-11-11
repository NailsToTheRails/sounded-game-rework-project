scr_input();
if (!dead) {
scr_collision();
// normal movement shit
if (!movelock)
	move = key_right - key_left
scr_movementlock(); //movement lock check (hsp 0 vsp 0)
scr_dothisshitiguess(); // wind & water checker
scr_throwbombinator(); // perry this is my throw bomb inator
soliddebugvisiblier(); // does What it says Fucking Stpuid iIdot PLEASE

global.soundhp = clamp(global.soundhp,0,8)


if (global.soundhp <= 0 && !instance_exists(obj_sounddie) && dead = false) {
visible = false
movelock = true
dead = true
instance_create(x,y,obj_sounddie) 
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
else
	hsp = approach(hsp, 0, 0.5)

if (key_jump && grounded && !movelock) {
	sprite_index = spr_sound_jump
	vsp = jumpheight
}

if (floor(vsp) == 0 && grounded)
{
    image_speed = 0.35
    if (hsp != 0) {
	if (!key_sprint)
        sprite_index = spr_sound_walk
	else
	sprite_index = spr_sound_run
	}
    else
        sprite_index = spr_sound_idle
}

if (vsp > 0 && !grounded)
{
    sprite_index = spr_sound_fall
    image_speed = 0.35
}
} 
else {
	hsp = 0
	vsp = 0
}

         
            