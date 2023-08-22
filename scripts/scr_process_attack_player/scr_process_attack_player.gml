/// process_at(attack sprite, attack hitbox)
/// @ description process_attack(attack sprite, attack hitbox)

function scr_process_attack(argument0,argument1){
	if(sprite_index != argument0){
		image_index = 0;
		sprite_index = argument0;
		ds_list_clear(hit_by_attack);
	}
	
	var hit_by_attack_now = ds_list_create();
	var enemies = instance_place_list(x,y,obj_entity_enemy,hit_by_attack_now,false);
	show_debug_message("Inimigos encontrados: " + string(enemies));
	
	mask_index = argument1;
	if(enemies > 0){
		for(var i = 0; i < enemies; i++){
			var enemy_id = hit_by_attack_now[| i];
			show_debug_message("O id do inimigo é: " + string(enemy_id));
			if(ds_list_find_index(hit_by_attack,enemy_id) == -1){
				ds_list_add(hit_by_attack,enemy_id);
				with(enemy_id){
					show_debug_message("Entrou no estado de hit");
					hp -= other.damage;
					state = scr_enemy_hit;
				}
			}
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
	
	ds_list_destroy(hit_by_attack_now);
}