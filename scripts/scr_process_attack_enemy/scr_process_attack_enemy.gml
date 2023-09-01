/// process_at(attack sprite, attack hitbox)
/// @ description process_attack(attack sprite, attack hitbox)

function scr_process_attack_enemy(){
	//mask_index = argument1;
	if(place_meeting(x,y,obj_player) && attack == false){
		attack = true;
		with(obj_player){
			show_debug_message("Entrou no estado de hit");
			hp -= other.damage;
			state = scr_player_hit;
		}
	}
	/*
	if(enemies > 0){
	}
	*/
	/*
	else{
		//mask_index = spr_player_mask;
	}
	*/
	
	//mask_index = spr_player_mask;
	
	//ds_list_destroy(hit_by_attack_now);
}