if (instance_exists(obj_sound) && global.soundhp <= 0) {
	if (instance_exists(obj_sounddie) && !audio_is_playing(sfx_noisedie)) {
	audio_stop_all();
	scr_sound(sfx_noisedie);
	}
}


