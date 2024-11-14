if (instance_exists(obj_sound) && global.soundhp <= 0) {
	if (instance_exists(obj_sounddie) && !audio_is_playing(sfx_noisedie)) {
	audio_stop_all();
	scr_sound(sfx_noisedie);
	}
}

if (instance_exists(obj_sound) && global.soundhp != 0 && global.soundhp <= 3) {
	audio_sound_pitch(index, sine);
	dmg = global.soundhp * 1000
} else {
audio_sound_pitch(index, 1);	
}
sine = clamp(sine_wave(current_time/dmg,1,1,1.2),0.7,1.4)

if (instance_exists(obj_subterfuge)) {
	if (!audio_is_playing(mu_sub_inst)) {
	audio_stop_all();
	scr_music(mu_sub_inst);
	}
}

