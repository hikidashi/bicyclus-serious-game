if !init {
	src_dialogues();
	init = true;
	alarm[0] = 1;
}

if char < string_length(dialogues[# INFO.TEXT, page]) {
	if global.keypress {
		char = string_length(dialogues[# INFO.TEXT, page]);
	}
} else {
	if page < ds_grid_height(dialogues) - 1 {
		if global.keypress {	
			alarm[0] = 1;
			char = 0;
			page++;
		}
	} else {
		if op_num != 0 {
			op_draw = true;
		} else {
			if global.keypress {
				global.dialogue = false;
				instance_destroy();
			}
		}
	}	
}
