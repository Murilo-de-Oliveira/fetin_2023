// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_roll(){
	if(sprite_index != spr_player_roll){
		sprite_index = spr_player_roll;
		image_index = 0;
		hspd = 0;
		vspd = 0;
		stamina = scr_approach(stamina, stamina/4, 3);
	}
	
	hspd = lengthdir_x(3, move_dir);
	vspd += grv;
	
	if(image_index >= image_number-1){
		state = scr_player_state_free;
	}
}