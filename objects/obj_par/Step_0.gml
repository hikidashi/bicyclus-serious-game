if position_meeting(mouse_x, mouse_y, self) and global.dialogo == false {
	if (mouse_check_button_pressed(mb_left)) {
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.obj_nome = self.nome;
	}
}