//nailsrails made this script and he forgot to remoe this because its his default script content
function scr_soundhurt(){
	if (!invincible && !dead) {
	scr_sound(sfx_noisehurt)
	global.soundhp -= 1
	invincible = 1
	alarm[0] = 3.5 * room_speed
	}
}