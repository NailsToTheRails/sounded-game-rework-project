scr_collision();
vsp += 0.5
hsp = -2 * image_xscale
sprite_index = spr
if (place_meeting(x+25*-image_xscale,y,obj_solid) or !place_meeting(x+5*-image_xscale,y+5,obj_solid)) {
image_xscale = -image_xscale	
}
if (place_meeting(x,y,obj_bomb)) {
		obj_bomb.lifetime = 0
		with instance_create(x,y,obj_baddiedeath) {
			vsp = -12
		image_xscale = other.image_xscale
		sprite_index = other.deadspr
	}
	if (chance(5)) {
		with instance_create(x,y,obj_healthpickup) {
		vsp = -5
		hsp = 5 * self.image_xscale
		}
	}
	instance_destroy(self)	
}

