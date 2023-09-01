

function scr_player_state_free(){
	
	if(stamina < stamina_max){
		stamina += 0.04;
	}
	
	#region Código de movimentação
	if(move){
		//pega a direção horizontal
		move_dir = point_direction(0,0,key_right - key_left, 0);
		//acelera o personagem
		move_spd = scr_approach(move_spd, move_spd_max,acc);	
	}
	else{
		//desacelera o personagem
		move_spd = scr_approach(move_spd, 0,dcc);
	}

	//movimenta o personagem na tela
	hspd = lengthdir_x(move_spd, move_dir); 
	//x += hspd;

	//velocidade vertical
	vspd += grv * mass;
	vspd = clamp(vspd, vspd_min, vspd_max);

	//y += vspd;
	#endregion
	
	#region Mudança de sprites
	if(hspd != 0){
		sprite_index = spr_player_run;
		x_scale = sign(hspd);
	}
	else{
		sprite_index = spr_player_idle;
	}
	#endregion

	#region Pulo
	if(ground){
		coyote_time = coyote_time_max;
		can_attack = true;
	}
	else{
		coyote_time--;
	}

	if(key_jump && (coyote_time > 0)){
		coyote_time = 0;
		vspd = 0;
		vspd -= jump_height;
	}
	#endregion
	
	#region Vai para o estado de ataque
	if(key_attack && can_attack){
		hspd = 0;
		vspd = 0;
		/*
		can_attack = false;
		with(obj_damage_player){
			ds_list_clear(hit_by_attack);
		}
		obj_damage_player.state = scr_damage_player_attack;
		state = scr_player_state_attack;
		*/
		state = scr_player_state_attack;
	}
	#endregion
	
	#region Vai para o estado de rolamento
	if(key_roll && stamina >= 2){
		state = scr_player_state_roll;
	}
	#endregion
	/*
	if(place_meeting(x,y,obj_spike)){
		hspd = 0;
		state = scr_player_hit;
	}
	*/
}
