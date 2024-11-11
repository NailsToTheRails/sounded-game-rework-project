if (!timedup) {
global.time -= 1
global.miliseconds = 999
alarm[0] = room_speed * 1
scr_sound(sfx_tick)
} else if (!timedup) {
global.time -= 1
alarm[0] = room_speed * 60
}
if (global.time <= -1) {
	if (instance_exists(obj_sound)) {
	scr_sound(sfx_explode)
	instance_create(obj_sound.x,obj_sound.y,obj_explosion)
	}
	timedup = true
	global.time = 0
	global.soundhp = 0
}