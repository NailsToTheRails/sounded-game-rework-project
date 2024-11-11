function scr_movementlock() 
{
	if (movelock) {
	hsp = 0
	vsp = 0
	}
}

function scr_throwbombinator()
{
if (key_bomb) {
with instance_create(x,y,obj_bomb) {
	image_xscale = other.image_xscale
self.hsp = 10 * image_xscale	
self.vsp -= 10 + -other.vsp / 1.5
}
}	
}

function soliddebugvisiblier()
{
if (DEBUG) {
if (keyboard_check_released(ord("P")) && global.solidview = false) {
		global.solidview = true
	} else if (keyboard_check_released(ord("P")) && global.solidview = true) {
		global.solidview = false
}	
}	
}

function scr_dothisshitiguess() 
{
if (place_meeting(x,y,obj_windsection) && instance_place(x,y,obj_windsection).wind = 1) {
	vsp += 0.5
	grav = 0.1
	jumpheight = 0
	walkspeed = 5
	if (move = key_right) {
		walkspeed = 3.5
	}
	if (move = key_left || hsp = 0 || move = 0) {
		hsp += -1
	}
} 
else if (place_meeting(x,y,obj_water)) {
	vsp += 0.2
	grav = 0.3
	walkspeed = 5
if (!key_sprint) {
	jumpheight = -10
} 
else {
	jumpheight = -7
}
	water = 1
} 
else {
	vsp += 0.5
	grav = 0.1
if (!key_sprint) {
	jumpheight = -13
} else {
	jumpheight = -10
}
	walkspeed = 5
	water = 0
}	
}