/// @description Insert description here
// You can write your code in this editor

if(active = true){
	for(var i = 0; i < 6; i++){
		if(global.cards[@ i] == 0){
			puzzle = "not ready";
			alarm[0] = 150;
			active = false;
		}
		else{
			if(puzzle == "neutral"){
				room_goto(rm_puzzle);
			}
		}
	}
}





