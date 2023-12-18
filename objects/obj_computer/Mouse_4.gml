switch global.scene {
	case 1:
		name = "computer1";
		if !global.dialogue {
			global.computer = instance_create_depth(x, y, 0, obj_pc_ui);
			global.computer.init = true;
		}
		break;
	case 2:
		name = "computer2";
		break;
}

event_inherited();

name = "Computador";
