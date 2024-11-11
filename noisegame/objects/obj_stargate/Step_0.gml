// add collision code here im too lazy
scr_input();
ini_open("savedata.ini")
lvlscore = ini_read_real("Scores", level, 0);
lvlrank = ini_read_string("Ranks", level, "D");
ini_close();
if (!instance_exists(obj_sounddie)) {
if (place_meeting(x,y,obj_sound)) {
	if (instance_exists(obj_hud)) {
				collided = 1
			global.tvmessage = "[rainbow]" + string(levelname)
			obj_hud.showmessage = true	
	}
	if (key_up) {
		if (instance_exists(obj_hud)) {
			global.level = level
			collided = 0
			obj_hud.showmessage = false
			global.tvmessage = ""
		}		
			room_goto(roomname)	
			global.hubindex = hub
	}
} else if (!place_meeting(x,y,obj_sound) && collided) {
	collided = 0
obj_hud.showmessage = false	
}
}