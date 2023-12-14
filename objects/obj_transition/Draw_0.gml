var _alarm;
with obj_ctrl {
	_alarm = alarm[1];	
}

draw_set_alpha(1/_alarm)
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 1);
draw_set_alpha(1);
