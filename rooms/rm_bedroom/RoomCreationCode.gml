if !instance_exists(obj_ctrl) {
	instance_create_depth(0, 0, 0, obj_ctrl);	
}
/*
if !global.dialogue {
	var _dialogue = instance_create_layer(0, 0, "Dialogue", obj_dialogue);
	_dialogue.obj_name = "First";
}
