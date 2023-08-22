key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
key_attack = keyboard_check_pressed(ord("K"));
key_roll = keyboard_check_pressed(ord("J"));
ground = place_meeting(x, y + 1, obj_wall);
move = key_right - key_left != 0; //verifica se é diferente de 0
//move vai receber true ou false

//Run state machine
state();
//mesma coisa de: script_execute(state);

if(keyboard_check(ord("R"))){
	room_restart();
}