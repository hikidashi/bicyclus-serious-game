function game()
{

global.coroutineRootStruct = CO_BEGIN
	
	scene(rm_bedroom);
	DELAY 500 THEN
	
	dialogue([
		"Texto 3",
		"Texto 4",
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacus a neque consectetur mattis eget sed elit. Donec sit amet viverra dui. Proin venenatis accumsan auctor. Sed id congue lacus. Fusce nec orci dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis aliquet nibh. Donec quis dui nunc. Integer quis mi sed nunc vehicula porta nec eget tellus. Nullam luctus tempus sem et luctus. Aliquam vel felis enim."
	]);
	PAUSE THEN
	
CO_END

}
