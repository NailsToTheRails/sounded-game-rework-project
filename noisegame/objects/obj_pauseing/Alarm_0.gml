	instance_activate_all();
	if (room == rm_hub1 || room = rm_hardohub)
				{
				room_goto(rm_title)
				}
				else
				{
				switch global.hubindex
					{
					case rm_hub1:
						room_goto(rm_hub1)
							break
					/*	case 2:
						//hub 2
							break
						case 3:
						//hub 3
							break	*/
					case rm_hardohub:
						room_goto(rm_hardohub)
							break
					default:
						room_goto(rm_hub1)	
							break
					}
				}