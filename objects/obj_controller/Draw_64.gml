/// @description Insert description here
// You can write your code in this editor

if(pause == false){
	if(room != rm_puzzle && room != Room4){
		draw_sprite_ext(spr_icon,0,80,80,5,5,0,c_white,1);
		for(var i = 0; i < obj_player.hp; i++){
			draw_sprite_ext(spr_hp,0, 180 + (64 * i),80,4,4,0,c_white,1);
		}

		draw_rectangle(40,128,40+(obj_player.stamina)*5,164,false);
	}
}
else{
	//draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_white,c_white,c_white,c_white,0);
	instance_create_layer(display_get_gui_width()/2,display_get_gui_height()/2,layer,obj_pause);
}

if(keyboard_check(ord("Q"))){
	for(var i = 0; i < 6; i++){
		draw_text(50 + (10 * i),20,string(global.cards[i]));
	}
}



