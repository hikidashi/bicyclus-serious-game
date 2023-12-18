function src_dialogues() {
	switch obj_name {
		case "start":
			audio_play_sound(snd_cricket, 0, true);
			ds_grid_add_text("Depois de um dia cheio, nada melhor que chegar em casa!", spr_portrait_2, 0, "Jeff");
			ds_grid_add_text("Estive a semana toda ocupado com o processo seletivo para uma fábrica de bicicletas local, a Von Drais.", spr_portrait_1, 0, "Jeff");
			ds_grid_add_text("E hoje eles me retornarão com a resposta!", spr_portrait_2, 0, "Jeff");
			ds_grid_add_text("Por isso, tenho que estar atento à mensagem deles.", spr_portrait_1, 0, "Jeff");
			break;
		case "door1":
			ds_grid_add_text("Está tarde demais para sair agora.", spr_portrait_1, 1, "Jeff");
			break;
		case "dresser1":
			ds_grid_add_text("Meu guarda-roupa! Não tem muitas roupas, trouxe poucas desde minha mudança para esta cidade maravilhosa, a cidade de Oikos!", spr_portrait_1, 1, "Jeff");
			ds_grid_add_text("Então acabei com apenas as casuais e umas para ocasiões importantes, como para um emprego!", spr_portrait_2, 1, "Jeff");
			break;
		case "drawer1":
			ds_grid_add_text("Minha gaveta com meus pertences, como documentos, acessórios e outros.", spr_portrait_1, 0, "Jeff");
			ds_grid_add_text("Devo me certificar de não esquecer nada para quando sair de casa!", spr_portrait_2, 0, "Jeff");
			break;
		case "bed1":
			ds_grid_add_text("Certo! Se tudo estiver em ordem, hora de dormir!", spr_portrait_1, 1, "Jeff");
			add_op("Fechar", "CLOSEBED1");
			add_op("Dormir", "SLEEPBED1");
			break;
				case "CLOSEBED1":
					ds_grid_add_text("Ainda não, daqui a pouco eu vou!", spr_portrait_1, 1, "Jeff");
					break;
				case "SLEEPBED1":
					ds_grid_add_text("Hora de descansar!", spr_portrait_2, 1, "Jeff");
					break;
		case "hat1":
			ds_grid_add_text("Meu boné para os dias de muito sol!", spr_portrait_2, 1, "Jeff");
			break;
		case "shoes1":
			ds_grid_add_text("Meus tênis! São bem confortáveis.", spr_portrait_1, 1, "Jeff");
			break;
		case "flops1":
			ds_grid_add_text("Um simples e confortável chinelo.", spr_portrait_1, 1, "Jeff");
			break;
		case "computer1":
			ds_grid_add_text("Olha só! Tem uma nova mensagem para mim!", spr_portrait_1, 1, "Jeff");
			add_op("Fechar", "CLOSEPS1");
			add_op("Ler a mensagem", "READMSG1");
			break;
				case "CLOSEPS1":
					ds_grid_add_text("Não deve ser muito urgente... leio outra hora.", spr_portrait_1, 1, "Jeff");
					break;
				case "READMSG1":
					global.computer.email = true;
					ds_grid_add_text("Que legal! É o retorno da Von Drais sobre meu processo seletivo!", spr_portrait_2, 1, "Jeff");
					ds_grid_add_text("Estou tão feliz que consegui! Amanhã vai ser um dia especial!", spr_portrait_2, 1, "Jeff");
					ds_grid_add_text("Então é melhor que eu durma logo pra poder me organizar o quanto antes.", spr_portrait_2, 1, "Jeff");
					break;
		case "day2":
			audio_stop_sound(snd_cricket);
			audio_play_sound(snd_birds, 0, true);
			ds_grid_add_text("Hoje é o grande dia!", spr_portrait_2, 0, "Jeff");
			ds_grid_add_text("Mal posso esperar para ir para a Von Drais! Vai ser perfeito!", spr_portrait_2, 0, "Jeff");
			ds_grid_add_text("Preciso me organizar!", spr_portrait_1, 0, "Jeff");
			break;
		case "bed2":
			ds_grid_add_text("Estou com muita energia para pensar em dormir agora!", spr_portrait_1, 0, "Jeff");
			break;
		case "computer2":
			ds_grid_add_text("Sem novas mensagens no momento.", spr_portrait_1, 0, "Jeff");
			break;
		case "door2":
			ds_grid_add_text("Chegou a hora!", spr_portrait_2, 1, "Jeff");
			add_op("Voltar", "STAY2");
			add_op("Sair", "LEAVE2");
			break;
				case "STAY2":
					ds_grid_add_text("Ainda não estou pronto, mas já vou!", spr_portrait_1, 1, "Jeff");
					break;
				case "LEAVE2":
					ds_grid_add_text("E lá vamos nós!", spr_portrait_2, 1, "Jeff");
					break;
		case "docs2":
			ds_grid_add_text("Meus documentos!", spr_portrait_1, 0, "Jeff");
			add_op("Voltar", "BACK2");
			add_op("Pegar", "DOCS2");
			break;
				case "DOCS2":
					ds_grid_add_text("Bem que eles avisaram que era necessário levar!", spr_portrait_2, 0, "Jeff");
					with obj_docs {
						picked = true;	
					}
					break;
		case "keys2":
			ds_grid_add_text("As chaves de casa, é claro!", spr_portrait_1, 0, "Jeff");
			add_op("Voltar", "BACK2");
			add_op("Pegar", "KEYS2");
			break;
				case "KEYS2":
					ds_grid_add_text("Não saio de casa sem elas!", spr_portrait_2, 0, "Jeff");
					with obj_keys {
						picked = true;	
					}
					break;
		case "shoes2":
			ds_grid_add_text("Um bom e confortável tênis.", spr_portrait_1, 1, "Jeff");
			add_op("Voltar", "BACK2");
			add_op("Pegar", "SHOES2");
			break;
				case "SHOES2":
					ds_grid_add_text("Ótimo!", spr_portrait_2, 1, "Jeff");
					with obj_shoes {
						picked = true;	
					}
					with obj_flipflops {
						picked = false;	
					}
					break;
		case "hat2":
			ds_grid_add_text("Meu boné! Vou precisar dele caso faça muito sol.", spr_portrait_2, 0, "Jeff");
			add_op("Voltar", "BACK2");
			add_op("Pegar", "HAT2");
			break;
				case "HAT2":
					ds_grid_add_text("Agora sim!", spr_portrait_1, 0, "Jeff");
					with obj_hat {
						picked = true;	
					}
					break;
		case "flops2":
			ds_grid_add_text("Hoje está um ótimo dia! Talvez os chinelos caibam bem?", spr_portrait_2, 1, "Jeff");
			add_op("Voltar", "BACK2");
			add_op("Pegar", "FLOPS2");
			break;
				case "FLOPS2":
					ds_grid_add_text("Agora sim!", spr_portrait_1, 1, "Jeff");
					with obj_flipflops {
						picked = true;	
					}
					with obj_shoes {
						picked = false;	
					}
					break;
				case "BACK2":
					ds_grid_add_text("Vou deixar este em casa dessa vez.", spr_portrait_1, 0, "Jeff");
					break;
		case "tshirt2":
			ds_grid_add_text("Adoro esta estampa! Acho que vai ficar legal.", spr_portrait_2, 1, "Jeff");
			break;
		case "shirt2":
			ds_grid_add_text("Acho que um visual mais formal é o correto.", spr_portrait_1, 1, "Jeff");
			break;
		case "pants2":
			ds_grid_add_text("Não posso me esquecer de vesti-las", spr_portrait_1, 1, "Jeff");
			break;
	}
}

function start_dialogue(_name) {
	if !global.dialogue {
		var _dialogue = instance_create_layer(0, 0, "Dialogue", obj_dialogue);
		_dialogue.obj_name = _name;
	}	
}

function add_op(_txt, _ans) {
	op[op_num] = _txt;
	op_ans[op_num] = _ans;

	op_num++;
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_text(){
	///@arg text
	///@arg imge
	///@arg side
	///@arg name
	///@arg next
 
	var _grid = dialogues;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	_grid[# 4, _y] = argument[4];
}
