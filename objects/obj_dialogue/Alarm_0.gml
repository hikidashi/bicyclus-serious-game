if init {
	var _str = dialogues[# INFO.TEXT, page];
	if char < string_length(_str) {
		var _snd = choose(snd_dialogue);
		audio_play_sound(_snd, 1, 0);
		char += 1;
		
		var _l = string_char_at(_str, char);
		switch _l {
			case ",":
			case ".":
			case "?":
			case "!":
				alarm[0] = 15;
				break;
			default:
				alarm[0] = 4;
		}
	}
}
