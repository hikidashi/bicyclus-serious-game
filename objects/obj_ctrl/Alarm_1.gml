var _lay_id = layer_get_id("Background");
var _back_id = layer_background_get_id(_lay_id);
layer_background_sprite(_back_id, spr_bg_bedroom);

global.scene = 2;
start_dialogue("day2");
