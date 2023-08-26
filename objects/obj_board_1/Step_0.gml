/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

/*
if(equiped){
	locked = true;
}
else{
	locked = false;
	number = -1;
}
*/

switch(state){
	case "free":
		if(image_index != spr_board){
			image_index = spr_board;
			if(locked == true){
				locked = false;
				//ds_list_insert(global.list_player, image, 0);
				global.list_player[img] = 0;
			}
		}
		break;
		
	case "locked":
		if(image_index != spr_locked){
			image_index = spr_locked;
			locked = true;
			if(number == -1){
				number = equiped.number;
				//ds_list_add(global.list_player, number);
				//ds_list_insert(global.list_player, image, number);
				global.list_player[img] = number;
			}
		}
		/*
		if(!place_meeting(x,y,obj_card_1)){
			state = "free";
			if(number > -1){
				number = -1;
				ds_list_delete(global.list_player, 0);
			}
		}
		*/
		break;
	/*	
	default:
		state = "free";
	*/
}





