if (room == rm_title) 
exit;

if pause {
	draw_sprite_tiled(bg_pausebg,0,scroll,scroll)
	draw_set_alpha(0.45)
	draw_rectangle_color(0,0,500,500,c_white,c_white,c_white,c_white,0)
	draw_set_alpha(1)
	draw_sprite(bg_pausemenunoise,pausemenunoise,250,250 +  sine_wave(current_time / 2000, 1, 5, 0))
	draw_sprite(bg_pausemenu,0,250,250)
	draw_sprite(bg_pausemenutext,0,250,250)
	draw_text_scribble(5,5,"[fnt_comicOUTLINEBIG] pls give good number" + string(pausemenunoise))
for (var i = 0; i < array_length(pause_menu); i++)
{
		var pad = 120
		var padx = 45
		var xx = 45
		var yy = 25
		var c = c_gray
		yy = (45 + (pad * i))
		xx = (15 + (padx * i / 3.5))
		var c = selected = i ? "c_white" : "c_gray"
		draw_text_scribble(xx, yy, "[" + string(c) + "]" + "[fnt_comicOUTLINEBIG]" + pause_menu[i])
	}
	
	/*draw_text_scribble(250, 250,"[wave][rainbow][center][fnt_comicOUTLINESMALL]" + string(global.score))
	draw_text_scribble(350, 250,"[wave][rainbow][center][fnt_comicOUTLINESMALL]" + string(moveselect))
	draw_text_scribble(450, 250,"[wave][rainbow][center][fnt_comicOUTLINESMALL]" + string(selected) + string(pause))*/
}
