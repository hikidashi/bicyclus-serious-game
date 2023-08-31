CO_PARAMS.lay_id = _lay_id;

coroutineRootStruct = CO_BEGIN
	
	background(spr_bg_bedroom);
	
	DELAY 1500 THEN
	dialogue([
		"Olá este é um texto de exemplo",
		"Olá este é um outro texto de exemplo",
		"Olá este ainda é um texto de exemplo",
		"Olá este é um texto de exemplo"
	]);
	AWAIT_BROADCAST "resume" THEN
	
	background(spr_bg_office);
	
	DELAY 1500 THEN
	dialogue([
		"Olá este é um texto de exemplo",
		"Olá este é um outro texto de exemplo",
		"Olá este ainda é um texto de exemplo",
		"Olá este é um texto de exemplo"
	]);
	AWAIT_BROADCAST "resume" THEN
	
	background(spr_bg_bedroom);
	
CO_END