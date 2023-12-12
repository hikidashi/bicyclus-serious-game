if !global.dialogue {
	if !open {
		if position_meeting(mouse_x, mouse_y, self) {
			image_index = 1;
		}
		else {
			image_index = 0;
		}
	}
	else {
		image_index = 2;
	}
}
