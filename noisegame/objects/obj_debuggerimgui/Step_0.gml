if (DEBUG) {
if (ImGui.Begin("Debugger Window Very Important")) {
	if (instance_exists(obj_hud)) {
		ImGui.Text(string("FPS: {0} ({1})\nMemory: {2} MB ({3} KB)\nImGui Version: {4}\nImGui_GM Version: {5}",
		fps,
		fps_real,
		global.debugmemory / 1000000,
		(sign(global.debugmemory_difference) ? "+" : "") + string(global.debugmemory_difference / 1000),
		ImGui.GetVersion(),
		IMGUI_GM_VERSION
	));	
	}
	if (instance_exists(obj_sound)) {
		ImGui.Text(string("SoundHUD: {0}\nSoundHP: {1}\nroomname: {2}\nVSP: {3}\nHSP: {4}\nInvincibility: {5}\nJumpHeight: {6}\nRank: {7}\nSRankReq: {8}\nMove: {9}\nSolidView: {10}",
		sprite_get_name(global.noifacespr),
		global.soundhp,
		room_get_name(room),
		obj_sound.vsp,
		obj_sound.hsp,
		obj_sound.invincible,
		obj_sound.jumpheight,
		global.rank,
		global.srank,
		obj_sound.move,
		global.solidview
	));
	if (ImGui.Button("KILL THE SOUND")) {
		global.soundhp = 0
	}
		global.soundhp = ImGui.SliderInt("sound hp",global.soundhp,0,8);
	// yea
		global.score = ImGui.SliderInt("score",global.score,0,10000);
	}
	if (ImGui.BeginListBox("rooms")) {
		for (var i = 0; i <= room_last; i++) {
			if (room_exists(i)) {
				 var tmpName = room_get_name(i);
				if ImGui.Button(string(tmpName) + " - " + string(i)) {
					room_goto(asset_get_index(tmpName))
				}
			 }
		}
		ImGui.EndListBox();
	}
	ImGui.End();
	/*ImGui.PopStyleColor(0);
	ImGui.PopStyleColor(1);
	ImGui.PopStyleColor(2);
	ImGui.PopStyleColor(3);*/
}
}