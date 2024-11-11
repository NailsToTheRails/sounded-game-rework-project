if (image_index >= 20) {
naked = true
	if (place_meeting(x,y,obj_bomb)) {
		obj_bomb.lifetime = 0
		with instance_create(x,y,obj_baddiedeath) {
			mrstick = 1
			nakeymrstick = 1
		}
		instance_destroy(self)	
	}
} else {
naked = false
	if (place_meeting(x,y,obj_bomb)) {
		obj_bomb.lifetime = 0
		with instance_create(x,y,obj_baddiedeath) {
			mrstick = 1
			nakeymrstick = 0
		}
		instance_destroy(self)	
	}
}