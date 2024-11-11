if (place_meeting(x,y,obj_bomb)) {
		obj_bomb.lifetime = 0
		with instance_create(x,y,obj_baddiedeath) {
			vsp = -12
		image_xscale = other.image_xscale
		sprite_index = spr_baddiedead
	}
	if (chance(5)) {
		with instance_create(x,y,obj_healthpickup) {
		vsp = -5
		hsp = 5 * self.image_xscale
		}
	}
	instance_destroy(self)	
}
