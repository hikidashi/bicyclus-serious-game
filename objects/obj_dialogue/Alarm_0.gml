if init {
	var _str = dialogues[# INFO.TEXT, page];
	if char < string_length(_str) {
		var _snd = choose(Pen_v6_wav, Pen_v7_wav, Pen_v8_wav, Pen_v9_wav, Pen_v10_wav, Pen_v11_wav, Pen_v12_wav, Pen_v13_wav, Pen_v14_wav, Pen_v15_wav, Pen_v16_wav, Pen_v17_wav, Pen_v18_wav);
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
