arr_len = array_length(texto) - 1;
if (letra < txt_len) {
	letra = txt_len;
} else
if (index < arr_len) {
	index++;
	letra = 1;
} else {
	instance_destroy(self);
}
