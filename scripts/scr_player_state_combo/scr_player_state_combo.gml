// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_combo(){
	scr_process_attack(spr_player_attack_2,spr_player_attack_2_mask);
	//scr_process_attack(spr_player_attack_2,spr_player_attack_2_mask);

	if(key_attack) && (image_index > 2){
		state = scr_player_state_combo;
	}
	
	if(image_index >= image_number-1){
		obj_player.state = scr_player_state_free;
		state = scr_damage_player_free;
		combo = 0;
		can_attack = true;
		mask_index = spr_damage_player;
		sprite_index = spr_damage_player;
		//mask_index = spr_player_mask;
	}

}