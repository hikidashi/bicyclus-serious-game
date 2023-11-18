function src_dialogues() {
	switch obj_name {
		case "First":
			ds_grid_add_text("Olá? Tudo bem com você? Eu me chamo Sebastian!", spr_sebastian_1, 0, "Sebastian");
			ds_grid_add_text("Oiii, eu me chamo Abigail! Prazer em te conhecer!", spr_abigail_1, 1, "Abigail");
			ds_grid_add_text("Que legal Abigail! O prazer é todo meu!", spr_sebastian_5, 0, "Sebastian");
			ds_grid_add_text("O que você pergunta para Abigail agora?", spr_abigail_2, -1, noone);
				add_op("Perguntar como foi o dia", "ANS1");
				add_op("Perguntar o que está fazendo", "ANS2");
				add_op("Perguntar se ela quer dar uma volta", "ANS3");
			break;
				case "ANS1":
					ds_grid_add_text("Meu dia está sendo ótimo! E o seu?", spr_abigail_1, 1, "Abigail");
					ds_grid_add_text("Tem sido bem corrido, mas tem sido muito bom!", spr_sebastian_5, 0, "Sebastian");
					ds_grid_add_text("Vocês se deram muito bem!", spr_abigail_2, -1, noone);
					break;
				case "ANS2":
					ds_grid_add_text("Olha, eu to desocupada, então no momento estou fazendo nada!", spr_abigail_1, 1, "Abigail");
					ds_grid_add_text("Eu tenho várias coisas pra fazer, mas estou aqui procrastinando...", spr_sebastian_5, 0, "Sebastian");
					ds_grid_add_text("Vocês dois dão boas risadas.", spr_abigail_2, -1, noone);
					break;
				case "ANS3":
					ds_grid_add_text("Claro que podemos! Adoraria dar uma olhada lá fora!", spr_abigail_1, 1, "Abigail");
					ds_grid_add_text("O tempo está muito bonito hoje, vamos!", spr_sebastian_5, 0, "Sebastian");
					ds_grid_add_text("Vocês fazem um passeio muito agradável.", spr_abigail_2, -1, noone);
					break;
		case "Computer":
			ds_grid_add_text("Olha só! Tem uma mensagem para mim aqui!", spr_sebastian_1, 1, "Sebastian");
				add_op("Ler a mensagem", "READ");
				add_op("Fechar o computador", "EXIT");
			break;
				case "READ":
					ds_grid_add_text("Olha só! É o retorno da Von Drais sobre meu processo seletivo!", spr_sebastian_1, 1, "Sebastian");
					global.computer.sprite = 1;
					break;
				case "EXIT":
					ds_grid_add_text("Não deve ser muito urgente... leio outra hora.", spr_sebastian_1, 1, "Sebastian");
					break;
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
 
	var _grid = dialogues;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}
