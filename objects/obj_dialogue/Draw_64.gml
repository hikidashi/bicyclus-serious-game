if init {
	var _guiw = display_get_gui_width();
	var _guih = display_get_gui_height();

	var _xx = 0;
	var _yy = _guih - 200;
	var _c = c_black;

	var _spr = dialogues[# INFO.IMGE, page];
	var _txt = string_copy(dialogues[# INFO.TEXT, page], 0, char);

	draw_set_font(fnt_dialogue);

	if dialogues[# INFO.SIDE, page] == 0 {
		draw_rectangle_color(_xx + 200, _yy, _guiw, _guih, _c, _c, _c, _c, false);
		draw_text(_xx + 16, _yy - 32, dialogues[# INFO.NAME, page]);
		draw_text_ext(_xx + 232, _yy + 32, _txt, 30, _guiw - 264);
		draw_sprite_ext(_spr, 0, 100, _guih, -3, 3, 0, c_white, 1);
	}
	else if dialogues[# INFO.SIDE, page] == 1 {
		draw_rectangle_color(_xx, _yy, _guiw - 200, _guih, _c, _c, _c, _c, false);
		var _stgw = string_width(dialogues[# INFO.NAME, page]);
		draw_text(_guiw - 16 - _stgw, _yy - 32, dialogues[# INFO.NAME, page]);
		draw_text_ext(_xx + 32, _yy + 32, _txt, 30, _guiw - 264);
		draw_sprite_ext(_spr, 0, _guiw - 100, _guih, 3, 3, 0, c_white, 1);
	}
	else {
		draw_rectangle_color(_xx, _yy, _guiw, _guih, _c, _c, _c, _c, false);
		draw_text(_xx, _yy - 32, dialogues[# INFO.NAME, page]);
		draw_text_ext(_xx + 32, _yy + 32, _txt, 30, _guiw - 64);
	}
	
	if op_draw {
		var _opx = _xx + 32;
		var _opy = _yy - 48;
		var _op_sep = 48;
		var _op_borderx = 6;
		var _op_bordery = 6;
		
		op_sel += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
		op_sel = clamp(op_sel, 0, op_num - 1);
		
		for (var _i = 0; _i < op_num; _i++) {
			var _strw = string_width(op[_i]);
			draw_sprite_ext(spr_op_bg, 0, _opx, _opy - _op_sep * _i, (_strw + _op_borderx * 2) / 16, 1, 0, c_white, 1);
			draw_text(_opx + _op_borderx, _opy - _op_sep * _i + _op_bordery, op[_i]);
			
			if op_sel == _i {
				draw_sprite(spr_op_sel, 0, _xx + 8, _opy - _op_sep * _i + 8);
			}
		}
		
		if global.keypress {
			var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogue);
			_dialogue.obj_name = op_ans[op_sel];
			
			instance_destroy();
		}
	}
}
