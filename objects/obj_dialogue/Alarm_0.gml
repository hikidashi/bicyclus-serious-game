if init {
	if char < string_length(dialogues[# INFO.TEXT, page]) {
		var _snd = choose(snd_dialogue);
		audio_play_sound(_snd, 1, 0);
		char++;
		alarm[0] = 3;
	}
}
