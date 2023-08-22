/// @description Insert description here
// You can write your code in this editor

if(bbox_top >= obj_player.bbox_bottom){
	sprite_index = spr_wall_one_way;
}
else{
	sprite_index = -1;
}


with(obj_player){
	var key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	
	if(key_down){
		other.sprite_index = -1;
	}
}

