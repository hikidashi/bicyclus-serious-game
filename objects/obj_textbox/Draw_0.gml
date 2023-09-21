draw_self();

draw_set_font(fnt_textbox);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

txt = texto[index];
txt_len = string_length(txt);
if (letra <= txt_len) {
	frase = string_copy(txt, 1, letra);
	letra += 0.5;
}

if (name != noone) {
	draw_text(x, y - 70, name);
}
draw_text_ext(x, y, frase, line_height, line_width);
