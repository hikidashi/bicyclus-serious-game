CO_PARAMS.lay_id = _lay_id;

coroutineRootStruct = CO_BEGIN
	
	background(spr_bg_bedroom);
	
	dialogue("texto");
	
	AWAIT_BROADCAST "resume" THEN
	background(spr_bg_office);
	
CO_END