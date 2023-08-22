// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_hit(){
	var knockback_friction = 0.3;
	if(sprite_index != spr_player_teste){
		sprite_index = spr_player_teste;
		knockback_speed *= -x_scale;
	}
	x += knockback_speed;
	knockback_speed = scr_approach(knockback_speed,0,knockback_friction);
	if(knockback_speed == 0){
		knockback_speed = 3;
		state = scr_player_state_free;
	}
}