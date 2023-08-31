function background(_spr_id) {
	var _back_id = layer_background_get_id(lay_id);
	layer_background_change(_back_id, _spr_id);
}

function dialogue(_text) {
	textbox = instance_create_depth(960, 830, -10000, obj_textbox);
	textbox.texto = _text;
}
