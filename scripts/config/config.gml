function character(_name, _sprite) {
	return {
		name: _name,
		sprite: _sprite,
		index: 0
	}
}

function scene(_room_id) {
	room_goto(_room_id);	
}

function background(_spr_id) {
	var _back_id = layer_background_get_id(global.lay_id);
	layer_background_change(_back_id, _spr_id);
}

function dialogue(_text, _char) {
	textbox = instance_create_depth(35, 830, -10000, obj_textbox);
	textbox.texto = _text;
	if (_char) {
		textbox.name = _char.name;
		char = instance_create_depth(1920, 1080, -10000, obj_char, _char);
	}
}
