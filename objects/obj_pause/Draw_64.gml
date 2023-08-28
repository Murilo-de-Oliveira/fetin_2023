/// @description Insert description here
// You can write your code in this editor

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_rectangle_color(0,0,_gui_width,_gui_height,c_gray,c_gray,c_gray,c_gray,0);
	
for (i = 0; i < array_length(options); i++) {
	draw_set_halign(fa_middle); //fa = font allign
	draw_set_valign(fa_middle);
	if (choice == i) {
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_black);
	}
	draw_text(middle_x, (middle_y / 2) + (60 * i), options[i]);
}

draw_sprite(spr_cards,0,(_gui_width)/8,(_gui_height/2)-64);
draw_sprite(spr_cards,1,(_gui_width/8)+128,(_gui_height/2)-64);
draw_sprite(spr_cards,2,(_gui_width/8)+256,(_gui_height/2)-64);
draw_sprite(spr_cards,3,(_gui_width/8),(_gui_height/2)+64);
draw_sprite(spr_cards,4,(_gui_width/8)+128,(_gui_height/2)+64);
draw_sprite(spr_cards,5,(_gui_width/8)+256,(_gui_height/2)+64);