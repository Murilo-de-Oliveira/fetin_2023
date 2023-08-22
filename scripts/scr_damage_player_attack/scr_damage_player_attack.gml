// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_player_attack(){
	scr_process_attack(spr_player_attack_1,spr_player_attack_1_mask);
	//scr_process_attack(spr_player_attack_1,spr_player_attack_1_mask);
	
	if(key_attack) && (image_index > 4){
		state = scr_player_state_combo;
	}
	
	if(image_index >= image_number-1){
		obj_player.state = scr_player_state_free;
		state = scr_damage_player_free;
		combo = 0;
		sprite_index = spr_damage_player;
		mask_index = spr_damage_player;
		mask_index = spr_player_mask;
		can_attack = true;
	}
}