mytex_x -= 0.5;
mytex_y -= 0.5;
if (showtext) {
	customy = lerp(customy,125,0.08)
	showtextcd = 5
	alpha = lerp(alpha,1.1,0.3)
} else {
	showtextcd --
	customy = lerp(customy,50,0.1)
	alpha = lerp(alpha,0,0.3)
}
if (place_meeting(x,y,obj_sound)) {
	showtext = true	
} else {
	showtext = false	
}