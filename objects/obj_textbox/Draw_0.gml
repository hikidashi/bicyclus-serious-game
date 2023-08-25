draw_self();

draw_set_font(fnt_textbox);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw_text(x, y, texto);
draw_text_ext(x, y, texto, line_height, line_width);