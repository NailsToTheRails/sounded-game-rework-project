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