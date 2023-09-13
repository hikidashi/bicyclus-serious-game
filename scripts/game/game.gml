function game()
{

CO_PARAMS.lady = character("Lady", spr_lady);
CO_PARAMS.guy = character("Guy", spr_guy);

global.coroutineRootStruct = CO_BEGIN
	
	scene(rm_bedroom);
	DELAY 500 THEN
	
	dialogue([
		"É um novo dia na cidade de Oikos!"
	], noone);
	PAUSE THEN
	
	dialogue([
		"É um novo dia na cidade de Oikos!"
	], lady);
	PAUSE THEN
	
	dialogue([
		"É um novo dia na cidade de Oikos!"
	], guy);
	PAUSE THEN
	
CO_END

}
