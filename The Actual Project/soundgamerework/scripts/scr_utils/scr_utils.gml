function string_contains(_str, _substr) 
{
    return string_pos(_substr, _str) > 0;
}

function animation_end(_frame=image_index) {
	    if (_frame + image_speed >= image_number)
        return true 
    else 
        return false
}

function scr_sound3D(sound, x, y)
{
    return audio_play_sound_at(sound, -x, y, 1000, 1000, 0, 3, false, 0, audio_sound_get_gain(sound) * 1);
}