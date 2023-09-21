function game()
{

CO_PARAMS.lady = character("Lady", spr_lady);
//CO_PARAMS.guy = character("Guy", spr_guy);

global.coroutineRootStruct = CO_BEGIN
	
	scene(rm_bedroom);
	DELAY 500 THEN
	
	dialogue([
		"É um novo dia na cidade de Oikos! Uma nova semana se inicia!",
		"E com ela vêm muitas responsabilidades, pois hoje é um importante dia para Fulana, que aguarda ansiosamente o retorno da vaga de emprego que adimitiu há algumas semanas!",
		"O dia de Fulana já começa logo cedo, com ela organizando tudo o que precisa pra sair, ainda mais neste dia."
	], noone);
	PAUSE THEN
	
	dialogue([
		"Meu Deus, eu acordei tão contente hoje! Sinto que hoje será um dia maravilho e que vai dar tudo certo!",
		"Mas OK, antes de mais nada, preciso me organizar, a começar por checar essa vaga de emprego que eu to tãooo ansiosa por saber como fui.",
		"Para isso eu tenho que abrir meu email no computador..."
	], lady);
	PAUSE THEN
	
	dialogue([
		"OK, vamos lá! A caixa de email está por aqui...."
	], lady);
	PAUSE THEN
	
	dialogue([
		"A-HA! Encontrei!",
		"Ai ai ai! O email que eles me mandaram está aqui...",
		"Vamos ver o que está escrito... por favor... que eu tenha sido aprovada...!"
	], lady);
	PAUSE THEN
	
	dialogue([
		"AAAA EU CONSEGUI! EU CONSEGUI!!",
		"EU FUI APROVADA NO PROCESSO SELETIVO!!!"
	], lady);
	PAUSE THEN
	
	scene(rm_reception);
	
CO_END

}
