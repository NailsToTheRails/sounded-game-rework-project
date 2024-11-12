/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_sound)) {
var _score = global.score;
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
var spr_w = sprite_get_width(spr_rankbarfill);
var spr_h = sprite_get_height(spr_rankbarfill);
var spr_xo = sprite_get_xoffset(spr_rankbarfill);
var spr_yo = sprite_get_yoffset(spr_rankbarfill);
var perc = 0;
	switch global.rank
	{
		case "S":
			perc = 1;
			break;
		case "A":
			perc = _score / (_score - global.srank / 3) / (global.srank / 2 - global.srank / 3);
			break;
		case "B":
			perc = _score / (_score - global.srank / 4) / (global.srank / 3 - global.srank / 4);
			break;
		case "C":
			perc = _score / (_score - global.srank / 5) / (global.srank / 4 - global.srank / 5);
			break;
		default:
			perc = _score / global.srank / 5;
	}
	var t = spr_w * perc;
	var top = spr_w - t;
draw_sprite(spr_rankbar,rankindex,366,10);
draw_sprite_part(spr_rankbarfill, rankindex, top, 0, spr_w - top, spr_h, 366 + top, 10);
draw_text_scribble(425,25,"[fnt_comicOUTLINESMALL][fa_center]rank: " + string(global.rank));
}
