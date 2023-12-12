event_inherited();

var _open = open;

with obj_accs {
	visible = _open && !picked;
}
