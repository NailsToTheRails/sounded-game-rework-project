if (global.debugtick++ % game_get_speed(gamespeed_fps) == 0) {
	var memory_new = debug_event("DumpMemory", true).totalUsed;
	global.debugmemory_difference = memory_new - global.debugmemory;
	global.debugmemory = memory_new;
}

if (instance_exists(obj_sound)) { 
	if (global.soundhp >= 4) {
		var timer = !instance_exists(obj_timer) ? spr_noiface : spr_noifaceescape
		global.noifacespr = timer	
		} else if (global.soundhp <= 4) {
		global.noifacespr = spr_noifaceohno		
		} else if (global.soundhp <= 0) {
			global.noifacespr = spr_noifacedead	
		}
}

if (global.srank < global.score) {
	global.rank = "S"
	rankindex = 4
} else if (global.srank / 2 < global.score) {
	global.rank = "A"
	rankindex = 3
} else if (global.srank / 3 < global.score) {
	global.rank = "B"
	rankindex = 2
} else if (global.srank / 4 < global.score) {
	global.rank = "C"
	rankindex = 1
} else if (global.srank / 5 < global.score) {
	global.rank = "D"
	rankindex = 0
} else {
	global.rank = "D"
	rankindex = 0	
}