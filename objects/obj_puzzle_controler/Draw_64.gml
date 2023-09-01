/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);

if(keyboard_check_pressed(ord("L"))){
	if(show == true){
		show = false;
	}
	else{
		show = true;
	}
}
/*
if(show == true){
	for(var i = 0; i < 6; i++){
		draw_text(50 + (10 * i),50,string(ds_list_find_value(global.list_player,i)));
	}
}

for(var i = 0; i < 6; i++){
	draw_text(50 + (10 * i),20,string(ds_list_find_value(global.list_order,i)));
}

if(show == true){
	for(var i = 0; i < 6; i++){
		draw_text(50 + (10 * i),50,string(global.list_player[i]));
	}
}

for(var i = 0; i < 6; i++){
	draw_text(50 + (10 * i),20,string(global.list_order[i]));
}

draw_set_color(-1);
*/




