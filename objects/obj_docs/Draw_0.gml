var _closet_open;
with obj_desk {
	_closet_open = image_index == 2;
}

if _closet_open draw_self();

if !global.dialogue and position_meeting(mouse_x, mouse_y, self) draw_text_ext_transformed(15, 10, name, string_height(name), string_width(name), 2, 2, 0);
