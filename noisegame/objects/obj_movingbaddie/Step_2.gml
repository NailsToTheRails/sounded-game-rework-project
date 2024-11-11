if (y > room_height)
{
   with instance_create(x,y,obj_baddiedeath) {
			vsp = -12
		image_xscale = other.image_xscale
		sprite_index = other.deadspr
	}
	instance_destroy(self)	
}
