if (!orbed && !other.dead) {
effect_create_above(ef_firework,x,y,0,c_yellow);
effect_create_above(ef_ring,x,y,0,c_red);
scr_sound(sfx_explode)
other.vsp = -22
orbed = 1
alarm[0] = 0.2 * room_speed
}