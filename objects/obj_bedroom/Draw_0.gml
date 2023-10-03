draw_self();

_paused = global.coroutineRootStruct.GetPaused();

if (!instance_exists(obj_textbox)) {
	if (position_meeting(mouse_x, mouse_y, self)) {
		if (_paused) image_index = 1;
	} else {
		image_index = 0;
	}
}
