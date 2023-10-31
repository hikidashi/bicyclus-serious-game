if position_meeting(mouse_x, mouse_y, self) and !global.dialogue {
	if mouse_check_button_pressed(mb_left) {
		var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogue);
		_dialogue.obj_name = self.name;
	}
}
