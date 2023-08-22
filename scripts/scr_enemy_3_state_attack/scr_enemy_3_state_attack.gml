// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_3_state_attack(){
	//var attack = keyboard_check_pressed(ord("K"));
	if(sprite_index != spr_enemy_3_attack){
		sprite_index = spr_enemy_3_attack;
		image_index = 0;
		hspd = 0;
	}
	
	if(image_index == 3){
			var bullet = instance_create_layer(x,y-sprite_height/2,layer,obj_ball);
			bullet.hspd = 2 * image_xscale;
			bullet.image_xscale = image_xscale;
	}
	
	if(image_index >= image_number-1){
		state = scr_enemy_3_state_free;
		mask_index = spr_enemy_3_idle;
		move_state = "idle";
		sprite_index = spr_enemy_3_idle;
		image_index = 0;
	}
}