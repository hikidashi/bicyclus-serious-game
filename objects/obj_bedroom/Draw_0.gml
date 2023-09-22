draw_self();

var _paused = global.coroutineRootStruct.GetPaused()

if (!instance_exists(obj_textbox)) {
	if (position_meeting(mouse_x, mouse_y, self)) {
		image_index = 1;
	} else {
		image_index = 0;
	}
}
