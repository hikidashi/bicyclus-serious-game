if dialogues[# INFO.NEXT, page] != undefined {
	start_dialogue(dialogues[# INFO.NEXT, page]);
}


switch global.scene {
	case 1:
		with obj_closet {
			if open audio_play_sound(snd_close, 0, false);
			open = false;	
		}
		with obj_desk {
			if open audio_play_sound(snd_close, 0, false);
			open = false;	
		}
		if obj_name == "SLEEPBED1" {
			//room_instance_add(rm_bedroom, 0, 0, obj_transition);
			global.scene = -1;
			with obj_ctrl {
				alarm[1] = 300;
			}
		}
		break;
	case 2:
		if obj_name == "LEAVE2" {
			global.scene = -1;
			//with obj_ctrl {
			//	alarm[1] = 300;
			//}
		}
}
