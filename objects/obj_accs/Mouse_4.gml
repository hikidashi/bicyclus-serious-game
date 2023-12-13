switch global.scene {
	case 2:
		var _closet_open;
		with obj_closet {
			_closet_open = image_index;
		}
		if _closet_open {
			picked = true;
		}
		break;
}
