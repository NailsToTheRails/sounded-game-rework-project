function string_contains(_str, _substr) 
{
    return string_pos(_substr, _str) > 0;
}

function animation_hit_frame(frame) {	// The frame to check for
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);	
}

function animation_end() {
	return animation_hit_frame(image_number - 1);
}