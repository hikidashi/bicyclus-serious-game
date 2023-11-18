if init {
	var _guiw = display_get_gui_width();
	var _guih = display_get_gui_height();

	var _xx = _guiw / 2;
	var _yy = _guih / 3;
	
	draw_sprite_ext(spr_pc_ui, sprite, _xx, _yy, 3, 3, 0, c_white, 1);
}
