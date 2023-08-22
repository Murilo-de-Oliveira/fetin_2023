// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu(){
	switch(choice) {
		case 0: {
			room_goto_next();
			
			break;
		}
		case 3: {
			game_end();
			
			break;
		}
	}
}