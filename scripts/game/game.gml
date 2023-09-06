function game()
{

CO_PARAMS.lay_id = lay_id;

global.coroutineRootStruct = CO_BEGIN
	
	background(spr_bg_bedroom);

	dialogue([
		"Texto 1",
		"Texto 2"
	]);
	PAUSE THEN
	
	background(spr_bg_office);

	dialogue([
		"Texto 3",
		"Texto 4"
	]);
	
CO_END

}
