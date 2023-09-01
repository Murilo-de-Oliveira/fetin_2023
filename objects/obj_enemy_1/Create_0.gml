/// @description Insert description here
// You can write your code in this editor
state = scr_enemy_state_free;
sprite_hit = spr_enemy_1_hit;
dir = 1;
hspd = 0;
vspd = 0;
timer_state = 0;
move_state = "idle";
move_spd = 1;
x_scale = 1;
can_attack = true;
grv = 0.3;
knockingback = false;
damage = 1;


// Inherit the parent event
event_inherited();

