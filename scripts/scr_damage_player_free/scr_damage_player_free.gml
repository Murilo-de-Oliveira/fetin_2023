// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_player_free(){
	image_xscale = obj_player.x_scale;
	x = lerp(x,obj_player.x,0.3);
	y = lerp(y,obj_player.y,0.3);
	
	if(key_attack && can_attack){
		hspd = 0;
		vspd = 0;
		can_attack = false;
		ds_list_clear(hit_by_attack);
		state = scr_damage_player_attack;
		can_attack = true;
	}
}