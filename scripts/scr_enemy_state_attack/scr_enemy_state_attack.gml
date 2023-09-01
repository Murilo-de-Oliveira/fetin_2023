// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_attack(){
	if(sprite_index != spr_enemy_1_attack){
		sprite_index = spr_enemy_1_attack;
		image_index = 0;
		x_scale = sign(obj_player.x - x);
		can_attack = false;
		var _damage = instance_create_layer(x,y,layer,obj_damage);
		_damage.mask_index = spr_enemy_1_attack_mask;
		_damage.sprite_index = spr_enemy_1_attack_mask;
		_damage.image_xscale = image_xscale;
		_damage.damage = damage;
		_damage.creator = id;
		//scr_process_attack_enemy(spr_enemy_1_attack,spr_enemy_1_attack);
		hspd = 0;
	}
	
	if(image_index > image_number - 1){
		alarm[0] = 90;
		//mask_index = spr_enemy_1_idle;
		state = scr_enemy_delay;
		//move_state = "delay";
		//colocar um delay antes do ataque pra não ser um ataque de imediato
	}
}

function scr_enemy_delay(){
	if(sprite_index != spr_enemy_1_idle){
		sprite_index = spr_enemy_1_idle;
		image_index = 0;
		hspd = 0;
		move_state = "idle";
	}
}