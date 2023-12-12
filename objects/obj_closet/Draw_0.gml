event_inherited();

draw_self();

var _open = image_index == 2;

with obj_accs {
	visible = _open && !picked;
}
