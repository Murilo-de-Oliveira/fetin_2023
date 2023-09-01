// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_state_free(){
	switch(move_state){
		case "idle":
			timer_state++;
			if(sprite_index != spr_enemy_1_idle){
				sprite_index = spr_enemy_1_idle;
				image_index = 0;
				hspd = 0;
			}
			
			if(distance_to_object(obj_player) < 32 && can_attack == true){
				state = scr_enemy_delay;
				alarm[2] = 30;
				hspd = 0;
			}
			
			if(distance_to_object(obj_player) < 128 && distance_to_object(obj_player) >= 32){
				move_state = "chase";
				timer_state = 0;
			}
			
			if(irandom(timer_state) > 300){
				move_state = choose("patrol","idle","patrol");
				timer_state = 0;
			}
			break;
			
		case "patrol":
			timer_state++;
			if(sprite_index != spr_enemy_1_move){
				sprite_index = spr_enemy_1_move;
				image_index = 0;
				hspd = choose(1,-1);
				x_scale = sign(hspd);
			}
			
			//hspd = lengthdir_x(move_spd, move_dir);
			
			if(distance_to_object(obj_player) < 128 && distance_to_object(obj_player) >= 32){
				move_state = "chase";
				timer_state = 0;
			}
			
			if(distance_to_object(obj_player) < 32 && can_attack == true){
				state = scr_enemy_delay;
				alarm[2] = 30;
				hspd = 0;
			}
			
			if(irandom(timer_state) > 300){
				move_state = choose("patrol","idle","patrol");
				timer_state = 0;
			}
			break;
		
		case "chase":
			if(sprite_index != spr_enemy_1_chase){
				sprite_index = spr_enemy_1_chase;
				image_index = 0;
				x_scale = sign(obj_player.x - x);
				hspd = 2 * x_scale;
			}
			
			if(distance_to_object(obj_player) > 128){
				move_state = "idle";
				timer_state = 0;
			}
			
			if(distance_to_object(obj_player) < 32 && can_attack == true){
				state = scr_enemy_delay;
				alarm[2] = 30;
				timer_state = 0;
				hspd = 0;
			}
			break;
			
		case "hit":
			if(sprite_index != spr_enemy_1_hit){
				sprite_index = spr_enemy_1_hit;
				image_index = 0;
				dir = point_direction(x, y, obj_player.x, obj_player.y);
				knockingback = true;
				alarm[1] = 20; // knockback duration
				alarm[0] = 90;
				can_attack = false;
				//move_state = "delay";
			}
			if (knockingback == true) {
			    hspd += lengthdir_x(2, dir);
			    vspd -= 5;
			}
			break;
	}
}