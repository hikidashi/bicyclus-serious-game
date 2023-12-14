if !global.dialogue and global.scene != -1 {
	if !open audio_play_sound(snd_open, 0, false);
	open = true;	
}

switch global.scene {
	case 1:
		start_dialogue("drawer1");
		break;
}
