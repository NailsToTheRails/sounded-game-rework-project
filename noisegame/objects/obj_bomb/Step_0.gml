scr_collision()
lifetime -= 0.2
vsp += 1
if (grounded)
hsp = approach(hsp,0,0.35)
if (lifetime <= 0) {
	scr_sound(sfx_explode)
	instance_create(x,y,obj_explosion);
	var yea = collision_circle(x, y, 64, obj_bombdestroyable, 2, 1)
	instance_destroy(yea);
	with collision_circle(x, y, 64, obj_bombdestroyablenumbered, 2, 1) {
	self.hp -= 1	
	}
	

instance_destroy();	
}
