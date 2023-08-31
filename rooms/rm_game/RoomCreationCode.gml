lay_id = layer_get_id("Background");

instance_create_depth(0, 0, 0, oCoroutineManager);
instance_create_depth(0, 0, 0, obj_game, { _lay_id: lay_id });
