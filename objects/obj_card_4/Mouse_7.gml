/// @description Insert description here
// You can write your code in this editor

selected = false;
depth = 0;

if(place_meeting(x,y,obj_board_1)){
	obj_board_1.equiped = obj_card_4;
	obj_board_1.state = "locked";
	locked = true;
	x = obj_board_1.x;
	y = obj_board_1.y;
}
else if(place_meeting(x,y,obj_board_2)){
	obj_board_2.equiped = obj_card_4;
	obj_board_2.state = "locked";
	locked = true;
	x = obj_board_2.x;
	y = obj_board_2.y;
}
else if(place_meeting(x,y,obj_board_3)){
	obj_board_3.equiped = obj_card_4;
	obj_board_3.state = "locked";
	locked = true;
	x = obj_board_3.x;
	y = obj_board_3.y;
}
else if(place_meeting(x,y,obj_board_4)){
	obj_board_4.equiped = obj_card_4;
	obj_board_4.state = "locked";
	locked = true;
	x = obj_board_4.x;
	y = obj_board_4.y;
}
else if(place_meeting(x,y,obj_board_5)){
	obj_board_5.equiped = obj_card_4;
	obj_board_5.state = "locked";
	locked = true;
	x = obj_board_5.x;
	y = obj_board_5.y;
}
else if(place_meeting(x,y,obj_board_6)){
	obj_board_6.equiped = obj_card_4;
	obj_board_6.state = "locked";
	locked = true;
	x = obj_board_6.x;
	y = obj_board_6.y;
}





