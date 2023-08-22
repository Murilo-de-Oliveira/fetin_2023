/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_icon,0,80,80,5,5,0,c_white,1);
for(var i = 0; i < obj_player.hp; i++){
	draw_sprite_ext(spr_hp,0, 180 + (64 * i),80,4,4,0,c_white,1);
}

draw_rectangle(40,128,40+(obj_player.stamina)*5,164,false);



