if (inicializar == false) {
	src_textos();
	inicializar = true;
}

if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)) {
	if pagina < ds_grid_height(texto_grid) - 1 {
		pagina++;	
	} else {
		global.dialogo = false;
		instance_destroy();	
	}
}