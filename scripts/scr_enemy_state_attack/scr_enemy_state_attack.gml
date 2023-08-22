// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_attack(){
	//var attack = keyboard_check_pressed(ord("K"));
	scr_process_attack_enemy(spr_enemy_1_attack,spr_enemy_1_attack);
	hspd = 0;
	
	if(image_index >= image_number-1){
		state = scr_enemy_state_free;
		mask_index = spr_enemy_1_idle;
		move_state = "idle";
		sprite_index = spr_enemy_1_idle;
		image_index = 0;
	}
}