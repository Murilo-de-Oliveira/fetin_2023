/// @description Insert description here
// You can write your code in this editor

x+=hspd;

if(place_meeting(x,y,obj_wall) || place_meeting(x,y,obj_player)){
	if(place_meeting(x,y,obj_player)){
		obj_player.hp -= 2;
		obj_player.state = scr_player_hit;	
	}
	instance_create_layer(x,y,layer,obj_effect_instance);
	instance_destroy();
}



