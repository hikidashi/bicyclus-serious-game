switch global.scene {
	case 1:
		if !audio_is_playing(snd_cricket) audio_play_sound(snd_cricket, 0, true);
		start_dialogue("start");
		break;
}
