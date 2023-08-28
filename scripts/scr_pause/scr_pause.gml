// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pause(){
	switch(choice) {
		case 0: {
			instance_destroy(self);
			obj_controller.pause = false;
			
			break;
		}
		case 2: {
			room_goto(Room4);
			
			break;
		}
	}
}