var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if mouse_check_button_pressed(mb_left) {
	if point_in_rectangle(_mx, _my, 668, 139, 696, 156) {
		init = false;
	}
}
