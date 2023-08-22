/// @description Insert description here
// You can write your code in this editor

var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

var _xx = 0;
var _yy = _gui_height - 200;
var _color = c_black;

draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_rectangle_color(_xx,_yy,_gui_width,_gui_height,_color,_color,_color,_color,false);
draw_text_ext(_xx + 32,_yy + 32, text[page], 32, _gui_width- 64);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);



