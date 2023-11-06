if !global.dialogue {
	var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogue);
	_dialogue.obj_name = self.name;
}
