if inicializar == true {
	var _guiw = display_get_gui_width();
	var _guih = display_get_gui_height();

	var _xx = 0;
	var _yy = _guih - 200;
	var _c = c_black
	var _spr = texto_grid[# INFOS.RETRATO, pagina];

	draw_set_font(fnt_dialogo);

	if texto_grid[# INFOS.LADO, pagina] == 0 {
		draw_rectangle_color(_xx + 200, _yy, _guiw, _guih, _c, _c, _c, _c, false);
		draw_text(_xx + 16, _yy - 32, texto_grid[# INFOS.NOME, pagina]);
		draw_text_ext(_xx + 232, _yy + 32, texto_grid[# INFOS.TEXTO, pagina], 30, _guiw - 264);
		draw_sprite_ext(_spr, 0, 100, _guih, -3, 3, 0, c_white, 1);
	} else {
		draw_rectangle_color(_xx, _yy, _guiw - 200, _guih, _c, _c, _c, _c, false);
		var _stgw = string_width(texto_grid[# INFOS.NOME, pagina]);
		draw_text(_guiw - 16 - _stgw, _yy - 32, texto_grid[# INFOS.NOME, pagina]);
		draw_text_ext(_xx + 32, _yy + 32, texto_grid[# INFOS.TEXTO, pagina], 30, _guiw - 264);
		draw_sprite_ext(_spr, 0, _guiw - 100, _guih, 3, 3, 0, c_white, 1);
	}
}
