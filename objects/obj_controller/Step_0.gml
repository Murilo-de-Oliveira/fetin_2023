/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("P"))){
	room_goto(rm_puzzle);	
}
if(keyboard_check(ord("O")) && pause == false){
	pause = true;
}
else if(keyboard_check(ord("O")) && pause == true){
	pause = false;
}




