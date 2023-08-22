// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_hit(){
	var knockback_friction = 0.3;
	if(sprite_index != spr_enemy_1_hit){
		sprite_index = spr_enemy_1_hit;
		image_index = 0;
		knockback_speed *= -x_scale;
	}
	knockback_speed = scr_approach(knockback_speed,0,knockback_friction);
	x += knockback_speed;
	if(knockback_speed == 0){
		knockback_speed = 5;
		state = scr_enemy_state_free;
	}
}