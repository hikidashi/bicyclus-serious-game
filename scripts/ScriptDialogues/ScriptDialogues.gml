function src_dialogues() {
	switch obj_name {
		case "Computer":
			ds_grid_add_text("Olha só! Tem uma nova mensagem para mim!", _5_smile, 1, "Jeff");
			add_op("Fechar", "CLOSEPS1");
			add_op("Ler a mensagem", "READMSG1");
			break;
				case "CLOSEPS1":
					ds_grid_add_text("Não deve ser muito urgente... leio outra hora.", _5_disagree, 1, "Jeff");
					break;
				case "READMSG1":
					global.computer.email = true;
					ds_grid_add_text("Que legal! É o retorno da Von Drais sobre meu processo seletivo!", _5_smile2, 1, "Jeff");
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
