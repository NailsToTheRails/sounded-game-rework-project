//nailsrails made this script and he forgot to remoe this because its his default script content
function scr_init(){
	global.hubindex = rm_hub1
	global.subtermode = 0
	#macro DEBUG (true)
	#macro PLAYTEST (true)
	global.solidview = DEBUG
	scribble_font_bake_outline_8dir_2px("fnt_comicBIG", "fnt_comicOUTLINEBIG", c_black, false)
	scribble_font_bake_outline_8dir_2px("fnt_comic", "fnt_comicOUTLINESMALL", c_black, false)
}

function scr_init_states()
{
	enum states
	{
		normal,
		jump,
		fireass,
		cutscenestate,
		death,
		mach1,
		mach2
	}
}