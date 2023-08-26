/// @description Insert description here
// You can write your code in this editor

if(check != "loose"){
	for(i = 0; i < 6; i++){
		if(global.list_order[i] != global.list_player[i]){
			check = "loose";
			alarm[0] = 300;
		}
	}
	if(check == "neutral"){
		check = "won";
	}
}





