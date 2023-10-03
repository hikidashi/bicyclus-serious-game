function game()
{

CO_PARAMS.lady = character("Fulana", spr_lady);

global.coroutineRootStruct = CO_BEGIN
	
	scene(rm_bedroom);
	DELAY 500 THEN
	
	dialogue([
		"É um novo dia na cidade de Oikos! Uma nova semana se inicia!",
		"E com ela surgem muitas responsabilidades, pois hoje é um importante dia para o Protagonista, que aguarda ansiosamente o retorno sobre uma vaga de emprego que admitiu há algumas semanas!",
		"O seu dia começa logo cedo, com ele organizando tudo o que precisa para sair."
	], noone);
	PAUSE THEN
	
	dialogue([
		"Acordei tão contente hoje! Tô com expectativa lá no alto!",
		"Espero realmente que dê tudo certo. A qualquer momento eles podem me enviar um e-mail com a resposta do processo seletivo!",
		"Tenho que checar meu computador pra ver se já chegou algo."
	], lady);
	PAUSE THEN
	
	dialogue([
		"Caramba! Eles já me enviaram a resposta da vaga! Vamos ver o que está escrito…"
	], lady);
	PAUSE THEN
	
	dialogue([
		"Olá Protagonista? Tudo bem?",
		"Parabéns! Você foi aprovado no processo seletivo para participar do programa de trainee da Fábrica de Bicicletas Von Drais, seja muito bem-vindo!",
		"Seu treinamento iniciará na próxima segunda-feira, às 8 horas. Neste dia, compareça na empresa munido de seus documentos para que possamos apresentar os setores da fábrica onde você atuará.",
		"At. te, Equipe de Seleção Von Drais."
	], noone);
	PAUSE THEN
	
	dialogue([
		"NÃO ACREDITO, EU CONSEGUI! Eu consegui a vaga!",
		"Agora eu tenho que providenciar todas as coisas para amanhã ser um dia perfeito, a começar pelos documentos!"
	], lady);
	PAUSE THEN
	
	PAUSE THEN
	
	scene(rm_reception);
	
CO_END

}
