// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_characterspr(){
	switch (character) {
		case "S":
		spr_idle = spr_sound_idle
		spr_walk = spr_sound_walk
		spr_jump = spr_sound_jump
		spr_fall = spr_sound_fall
		spr_ouch = spr_sound_hurt
		spr_died = spr_sound_died
		spr_mach1 = spr_sound_run
		spr_mach2 = spr_sound_run
		spr_mach3 = spr_sound_walk
		spr_mach1air = spr_sound_fall
		spr_mach2air = spr_sound_fall
		spr_mach3air = spr_sound_fall
		spr_machturn = spr_sound_machturn
		spr_machturnfall = spr_sound_fall
		break;
	}
}