if instance_exists(obj_dialogue) {
	global.dialogue = true;	
}

global.keypress = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

switch global.scene {
	case 1:
		if !audio_is_playing(snd_cricket) {
			audio_play_sound(snd_cricket, 0, true);
		}
		break;
}
