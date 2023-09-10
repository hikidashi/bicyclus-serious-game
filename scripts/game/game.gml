function game()
{

global.coroutineRootStruct = CO_BEGIN
	
	dialogue([
		"Texto 1",
		"Texto 2"
	]);
	PAUSE THEN
	
	scene(rm_bedroom);
	DELAY 500 THEN
	
	dialogue([
		"Texto 3",
		"Texto 4"
	]);
	PAUSE THEN
	
CO_END

}
