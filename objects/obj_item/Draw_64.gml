/// @description Insert description here
// You can write your code in this editor

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

var _xx = 0;
var _yy = 3*_gui_height/4;
//var _color = c_black;
//var c = 0;

if(found == true){
	/*
	if(c != 1){
		c += 0.1;
	}
	*/
	draw_set_font(fnt_dialogue);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_rectangle_color(_xx,_yy,_gui_width,_gui_height/4,c_white, c_black, c_black, c_white,false);
	//draw_text_ext(_xx + 32,_yy + 32, , 32, _gui_width- 64);
	draw_sprite_ext(spr_cards,img,_gui_width/2,(_gui_height/2) - 32,5,5,0,c_white,1);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(_gui_width/2,(_gui_height/2) + 128,"Você achou o card " + string(number));
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}





