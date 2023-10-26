if !init {
	src_dialogues();
	init = true;
	alarm[0] = 1;
}

if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) {
	if char < string_length(dialogues[# INFO.TEXT, page]) {
		char = string_length(dialogues[# INFO.TEXT, page]);
	} else {
		alarm[0] = 1;
		char = 0;
		if page < ds_grid_height(dialogues) - 1 {
			page++;	
		} else {
			global.dialogue = false;
			instance_destroy();	
		}	
	}
}
