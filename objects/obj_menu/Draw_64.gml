/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < array_length(options); i++) {
	draw_set_halign(fa_middle); //fa = font allign
	draw_set_valign(fa_middle);
	if (choice == i) {
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_white);
	}
	draw_text(middle_x, (middle_y / 2) + (60 * i), options[i]);
}




