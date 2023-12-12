if init {
	var _str = dialogues[# INFO.TEXT, page];
	if char < string_length(_str) {
		var _snd = choose(snd_pen_01, snd_pen_02, snd_pen_03, snd_pen_04, snd_pen_05, snd_pen_06, snd_pen_07, snd_pen_08, snd_pen_09, snd_pen_10, snd_pen_11, snd_pen_12, snd_pen_13);
		audio_play_sound(_snd, 1, 0, 0.25);
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
