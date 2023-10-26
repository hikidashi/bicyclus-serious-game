if instance_exists(obj_dialogue) {
	global.dialogue = true;	
}

global.keypress = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);
