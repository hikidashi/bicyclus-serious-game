if init {
	var _guiw = display_get_gui_width();
	var _guih = display_get_gui_height();

	var _xx = _guiw / 2;
	var _yy = _guih / 3;
	
	if email {
		var _w = c_white;
		var _x0 = _guiw * 0.2;
		var _xf = _guiw * 0.8;
		draw_rectangle_color(_x0, 20, _xf, 350, _w, _w, _w, _w, false);
		
		var _b = c_black;
		var _txt = [
			"Olá, tudo bem?",
			"Parabéns! Você foi aprovado no processo seletivo para participar do programa de trainee da Fábrica de Bicicletas Von Drais. Seja muito bem-vindo!",
			"Seu treinamento iniciará amanhã, às 8 horas. Neste dia, compareça na empresa munido de seus documentos para que possamos apresentar os setores da fábrica onde você atuará.",
			"Atenciosamente, Equipe de Seleção Von Drais."
		];
		draw_text_ext_color(_x0 + 10, 30, _txt[0], 32, _xf - _x0 - 20, _b, _b, _b, _b, 1);
		draw_text_ext_color(_x0 + 10, 30 + 39, _txt[1], 32, _xf - _x0 - 20, _b, _b, _b, _b, 1);
		draw_text_ext_color(_x0 + 10, 30 + 142, _txt[2], 32, _xf - _x0 - 20, _b, _b, _b, _b, 1);
		draw_text_ext_color(_x0 + 10, 30 + 277, _txt[3], 32, _xf - _x0 - 20, _b, _b, _b, _b, 1);
		return;
	}
	
	draw_sprite_ext(spr_pc_ui, 1, _xx, _yy, 3, 3, 0, c_white, 1);
}
