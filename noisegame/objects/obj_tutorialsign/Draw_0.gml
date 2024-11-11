draw_self()

	if (!showtext && !showtextcd)
{
	if (surface_exists(mysurf))
		surface_free(mysurf);
	if (surface_exists(mycut))
		surface_free(mycut);
	exit;
}

if (showtext || showtextcd) {

	var height = string_height_scribble(text)/20
	var textheight = string_height_scribble_ext("[fnt_comicOUTLINESMALL]" + text, 350);
	var tgty = max(height, 600);
	
	

if (!surface_exists(mysurf))
	mysurf = surface_create(x+500, y+500);
if (!surface_exists(mycut))
	mycut = surface_create(x+500, y+500);
if (surface_exists(mycut))
{
	surface_set_target(mycut);
	draw_set_color(c_white);
	draw_rectangle(x+500, y+500, x-room_width, y-room_height, false);
	draw_set_blend_mode(3);
	draw_sprite_ext(dialogbox, 0, x, y - customy, 8.5, 2.5, 0, c_white, alpha);
	draw_set_blend_mode(bm_normal);
	surface_reset_target();
}
if (surface_exists(mysurf))
{
	surface_set_target(mysurf);
	draw_set_color(c_white);
	draw_sprite_tiled(dialogbg, 0, mytex_x, mytex_y);
	draw_set_blend_mode(3);
	draw_surface(mycut, 0, 0);
	draw_set_blend_mode(bm_normal);
	draw_sprite_ext(dialogbox, 1, x, y - customy, 8.5, 2.5, 0, c_white, alpha);
	surface_reset_target();
	draw_surface(mysurf, 0, 0);
}
	draw_set_halign(0);
	draw_set_valign(0);
	draw_set_color(c_black);
	//draw_sprite_ext(spr_dialogbox,0,x,y-115,8.5,height,0,c_white,1)
	scribble("[fa_center][fnt_comicOUTLINESMALL][wheel]" + text).wrap(400, 350, 400).blend(c_white,alpha).draw(x,y-customy-100,typist)
	draw_set_color(c_white);
	//draw_text_scribble_ext(x,y-200,"[fa_center][fnt_comicOUTLINESMALL][wave]" + text,400)	
}
