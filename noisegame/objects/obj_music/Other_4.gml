/// @description museik..
// You can write your code in this editor


switch room
{
	case rm_title:
		scr_music(mu_title)
		index = mu_title
	break
	case rm_bloodsauce:
		scr_music(mu_bloodsauce)
		index = mu_bloodsauce
	break
	case rm_test:
        scr_music(mu_test)
		index = mu_test
        break	
	case rm_hub1:
        scr_music(mu_hub)
		index = mu_hub
        break
	case rm_tutorial:
        scr_music(mu_tutorial)
		index = mu_tutorial
        break
	case rm_superentrance:
		scr_music(mu_entrance)
		index = mu_entrance
	break
	case rm_medievl:
		scr_music(mu_medieval)
		index = mu_medieval
	break
	case rm_hardovial:
		scr_music(mu_pizzascare)
		index = mu_pizzascare
	break
	case rm_hardohub:
		scr_music(mu_hardohub)
		index = mu_hardohub
	break
	case rm_subtertest:
	scr_music(mu_sub_inst)
	index = mu_sub_inst
	break
	default:
		scr_music(mu_hub)
		index = mu_hub
	break
}
