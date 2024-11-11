if (!orbed && !other.dead) {
effect_create_above(ef_firework,x,y,0,c_lime);
effect_create_above(ef_ring,x,y,0,c_lime);
scr_sound(sfx_explode)
other.vsp = -12
orbed = 1
alarm[0] = 0.2 * room_speed
}