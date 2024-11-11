/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_sound)) {
draw_set_font(fnt_comic)
if (showmessage) {
	draw_set_halign(fa_middle)
	draw_text_scribble(250,450,"[fnt_comicOUTLINESMALL][wheel]" + string(global.tvmessage))
	draw_set_halign(fa_left)
}


if (instance_exists(obj_timer)) {
	var drawcolor = global.time >= 30 ? "[c_white]" : "[c_red]"
	draw_set_halign(fa_middle)
	draw_text_scribble(camera_get_view_width(view_camera[0])/2,30,"[fnt_comicOUTLINEBIG][wheel]" + drawcolor + string(global.time) + "'[fnt_comicOUTLINESMALL]" + string(global.miliseconds));
	draw_set_halign(fa_left)
}
draw_sprite(global.noifacespr,0,70,59)
if (room = rm_hub1) 	
exit;
draw_sprite(spr_combotv,combospr,352,367)
draw_sprite(spr_hpbar,global.soundhp,61,438)
draw_text_scribble(50,410,"[wave][fnt_comicOUTLINEBIG]" + string(global.soundhp))
draw_text_scribble(415,420,"[fnt_comicOUTLINEBIG][fa_center]" + string(global.score))
draw_sprite(spr_rankbar,rankindex,366,10)
draw_text_scribble(425,25,"[fnt_comicOUTLINESMALL][fa_center]rank: " + string(global.rank))
}
