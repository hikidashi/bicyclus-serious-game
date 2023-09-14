enum win
{
	pc,
	email,
	paint,
	empty
}

function create_window(w,h,d,color,type)
{
	desktop = instance_create_depth(0,0,d,obj_computer_ctrl);
	desktop.w = w;
	desktop.h = h;
	desktop._x = 1920/2 - w/2;
	desktop._y = 1080/2 - h/2;
	desktop.leave_xx = w - 20 - desktop.leave_w;
	desktop.bg_color = color;
	desktop.type = type;
	return desktop;
}
function app(_title,_spr,_xx,_yy,_color,_type) constructor
{
	title = _title;	
	spr = _spr;
	xx = _xx;
	yy = _yy;
	window_color = _color;
	window_type = _type;
}