var _closet_open;
with obj_closet {
	_closet_open = image_index == 2;
}

if _closet_open draw_self();
