init = false;

obj_name = "";

enum INFO {
	TEXT,
	IMGE,
	SIDE,
	NAME,
	NEXT
}

dialogues = ds_grid_create(5, 0);

page = 0;
char = 0;

alarm[0] = 4;

op[0] = "";
op_ans[0] = "";
op_num = 0;
op_sel = 0;
op_draw = false;
