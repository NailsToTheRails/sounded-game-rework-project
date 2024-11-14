scr_input();
level = global.level	
if (!instance_exists(obj_sounddie)) {
if (place_meeting(x,y,obj_sound)) {
	if (!locked) {
		global.tvmessage = "[rainbow]YOU CAN GO IN!"
	} else {
		global.tvmessage = "[c_red][wave]YOU CANNOT GO IN YET!"
	}
	if (instance_exists(obj_hud)) {
			obj_hud.showmessage = true	
	}
		if (key_up) {
			ini_open("savedata.ini")
			ini_write_real("Scores", level, global.score);
			ini_write_string("Ranks", level, global.rank);
			ini_close();
			room_goto(global.hubindex)	
		}
} else {
	if (instance_exists(obj_hud)) {
		obj_hud.showmessage = false
	}
	global.tvmessage = ""
}
}