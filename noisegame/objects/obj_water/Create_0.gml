if (instance_place(x,y-20,obj_water) or instance_place(x,y-5,obj_solid) and !instance_place(x,y,obj_solid)) {
sprite_index = spr_aquanoloop
} else {
sprite_index = spr_aqua
}
depth = 50