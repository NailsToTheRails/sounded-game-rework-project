function scr_music(argument0)
{
if (!audio_is_playing(argument0))
{
    audio_stop_all()
    audio_play_sound(argument0, 0, true)
}
}

function string_contains(_str, _substr) 
{
    return string_pos(_substr, _str) > 0;
}

function scr_sound(argument0)
{
    audio_play_sound(argument0, 1, false)
}

function instance_create(x, y, obj, var_struct = {})
{
	return instance_create_depth(x, y, 0, obj, var_struct);
}

function draw_set_blend_mode()
{
	gpu_set_blendmode(argument0);
}

function scr_current_time()
{
    return current_time;
}


function Wave(argument0, argument1, argument2, argument3, argument4 = -4)
{
    var a4, t;
    
    a4 = (argument1 - argument0) * 0.5;
    t = scr_current_time();
    
    if (argument4 != -4)
        t = argument4;
    
    return argument0 + a4 + (sin((((t * 0.001) + (argument2 * argument3)) / argument2) * (2 * pi)) * a4);
}


//stolen from a gms2 site

function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}
