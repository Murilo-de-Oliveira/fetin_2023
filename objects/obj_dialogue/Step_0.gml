/// @description Insert description here
// You can write your code in this editor

if(init == false){
	scr_text();
	init = true;
}

if(mouse_check_button_pressed(mb_left)){
	if(page < (array_length(text) - 1)){
		page++;
	}
	else{
		global.dialogue = false;
		instance_destroy();
	}
}




