if (!orbed && !other.dead) {
effect_create_above(ef_firework,x,y,0,#FF60FF);
effect_create_above(ef_ring,x,y,0,c_fuchsia);
scr_sound(sfx_explode)
orbed = 1
with instance_create(x,y+32,obj_movingorbplatform) {
image_xscale = other.platformsize
}
alarm[0] = 2 * room_speed
}