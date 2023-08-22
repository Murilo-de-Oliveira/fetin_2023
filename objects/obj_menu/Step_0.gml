/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_up)) {
	choice--;
}
if (keyboard_check_pressed(vk_down)) {
	choice++;
}
if (choice >= array_length(options)) {
	choice = 0;
}
if (choice < 0) {
	choice = array_length(options) - 1;
}

if (keyboard_check(vk_enter)) {
	scr_menu();
}





