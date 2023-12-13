var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_sprite(_back_id, spr_bg_bedroom);

switch global.scene {
	case 1:
		start_dialogue("day2");
		break;
}
