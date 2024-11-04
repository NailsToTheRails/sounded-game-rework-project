scr_collision()

switch (state)
{
	case states.normal: scr_player_normal() break
	case states.jump: scr_player_jump() break
	case states.mach: scr_player_mach() break
	case states.machjump: scr_player_machjump() break
	case states.slide: scr_player_slide() break
	case states.machturn: scr_player_machturn() break
	case states.wallrun: scr_player_wallrun() break
	case states.machdown: scr_player_machdown() break
} 