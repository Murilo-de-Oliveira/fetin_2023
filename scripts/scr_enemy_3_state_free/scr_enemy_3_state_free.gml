// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_3_state_free(){
	switch(move_state){
		case "idle":
			timer_state++;
			dir = 0;
			if(timer_state == 300){
				move_state = choose("idle","patrol","patrol");
				dir = choose(1,-1);
				timer_state = 0;
			}
		break;
		
		case "patrol":
			timer_state++;
			move_spd_max = 1;
			if(timer_state == 300){
				move_state = choose("idle","idle","patrol");
				timer_state = 0;
			}
		break;
		
		/*
		case "chase":
			timer_state = 0;
			move_spd_max = 1;
			image_xscale = sign(obj_player.x - x);
			if(image_xscale == 0){
				image_xscale = 1;
			}
			
			var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
			
			if(distance_to_player > 128){
				move_state = "idle";
			}
			if(distance_to_player < 32){
				//hspd = 0;
				state = scr_enemy_state_attack;
			}
			if(!instance_exists(obj_player)){
				move_state = "idle";
			}
		break;
		*/
		
		default:
			move_state = "idle";
	}
	
	if(move_state != "idle"){
		//pega a direção horizontal
		if(move_state == "patrol"){
			move_dir = point_direction(0,0,dir,0);
		}
		else{
			move_dir = point_direction(x,0,obj_player.x,0);
		}
		//acelera o personagem
		move_spd = scr_approach(move_spd, move_spd_max,acc);
	}
	else{
		move_spd = scr_approach(move_spd, 0,dcc);
	}
	
	//movimenta o personagem na tela
	hspd = lengthdir_x(move_spd, move_dir); 
	//x += hspd;

	//velocidade vertical
	vspd += grv * mass;
	vspd = clamp(vspd, vspd_min, vspd_max);
	
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
	
	if(distance_to_player < 128 && shoot == false){	
		hspd = 0;
		image_xscale = sign(obj_player.x - x);
		alarm[0] = 120;
		shoot = true;
	}
	
	if(hspd != 0){
		sprite_index = spr_enemy_3_idle;
		x_scale = move_dir;
	}
	else{
		sprite_index = spr_enemy_3_idle;
	}
}