/// @description museik..
// You can write your code in this editor


switch room
{
	case rm_title:
		scr_music(mu_title)
	break
	case rm_bloodsauce:
		scr_music(mu_bloodsauce)
	break
	case rm_test:
        scr_music(mu_test)
        break	
	case rm_hub1:
        scr_music(mu_hub)
        break
	case rm_tutorial:
        scr_music(mu_tutorial)
        break
	case rm_superentrance:
		scr_music(mu_entrance)
	break
	case rm_medievl:
		scr_music(mu_medieval)
	break
	case rm_hardovial:
		scr_music(mu_pizzascare)
	break
	case rm_hardohub:
		scr_music(mu_hardohub)
	break
	default:
		scr_music(mu_hub)
	break
}
