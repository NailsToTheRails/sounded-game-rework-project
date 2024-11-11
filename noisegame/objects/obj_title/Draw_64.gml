// add soundgame title
var titlewave1 = entered = 1 ? flyerup : sine_wave(current_time / 3500, 1, 5, 0)
var titlewave2 = entered = 1 ? flyerup + 450 : 450
draw_sprite(spr_sonudflyingbroskixdxd,image_index,250,noisewave + 300)
draw_sprite(spr_title,0,250,titlewave1 + 10)
draw_text_scribble(250,titlewave2,"[fa_center][wave][rainbow][fnt_comicOUTLINESMALL]Press Enter To Start!")
draw_set_alpha(flash)
draw_rectangle_color(0,0,500,500,c_white,c_white,c_white,c_white,false)
draw_set_alpha(1)