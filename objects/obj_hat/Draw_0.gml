draw_self();

if global.scene != -1 and !global.dialogue and position_meeting(mouse_x, mouse_y, self) draw_text_ext_transformed(15, 10, name, string_height(name), string_width(name), 2, 2, 0);
