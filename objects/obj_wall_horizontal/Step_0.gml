/// @description Insert description here
// You can write your code in this editor

hspd = move_dir * move_spd;

if(place_meeting(x+sign(hspd),y,obj_collider)){
	move_dir *= -1;
}

var c = place_meeting(x+sign(hspd),y,obj_player) || place_meeting(x,y-1,obj_player);

if(c){
	with(obj_player){
		if(!place_meeting(x+other.hspd,y,obj_wall_horizontal)){
			x += other.hspd;
		}
	}
}

x += hspd;
