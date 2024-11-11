var bg_id = layer_get_id("Background"); 
if (!entered) {
	flyup = sine_wave(current_time / 2000, 1, 5, 0)
	noisewave = sine_wave(current_time / 3000, 1, 8, 0)
layer_vspeed(bg_id, sine_wave(current_time / 4000, 1, 2, 0))
layer_hspeed(bg_id, 5)
} else {
	flyup = approach(flyup,55,0.5)
	noisewave = flyerup
layer_vspeed(bg_id, flyup)
layer_hspeed(bg_id, 5)	
}
if (keyboard_check_pressed(vk_enter) && !entered) {
entered = 1
alarm[0] = 2 * room_speed
}

if (entered = 1) {
flyerup += approach(flyup,55,0.5)
flash = approach(flash,1,0.01)
}