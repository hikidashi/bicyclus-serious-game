global.lay_id = layer_get_id("Background");

if (!instance_exists(oCoroutineManager)) {

instance_create_depth(0, 0, 0, oCoroutineManager);

game();

}
