function src_textos(){
	switch obj_nome {
		case "Primeiro texto":
			ds_grid_add_text("Primeiro texto", spr_sebastian_1, 0, "Sebastian");
			ds_grid_add_text("Segundo texto", spr_abigail_1, 1, "Abigail");
			ds_grid_add_text("Terceiro texto", spr_sebastian_5, 0, "Sebastian");
			ds_grid_add_text("Quarto texto", spr_abigail_2, 1, "Abigail");
		break;
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}