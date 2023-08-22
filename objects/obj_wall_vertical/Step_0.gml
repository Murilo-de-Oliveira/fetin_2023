/// @description Insert description here
// You can write your code in this editor

vspd = move_dir * move_spd;

if(place_meeting(x,y+sign(vspd),obj_collider)){
	move_dir *= -1;
}

var c = place_meeting(x,y+1,obj_player)|| place_meeting(x,y-1,obj_player);

if(c){
	with(obj_player){
		y += other.vspd;
	}
}

y += vspd;
