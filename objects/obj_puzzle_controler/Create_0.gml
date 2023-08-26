/// @description Insert description here
// You can write your code in this editor

show = true;
/*
for(var i = 0; i < 6; i++){
	ds_list_add(global.list_order,i+1);
}


for(var i = 0; i < 6; i++){
	ds_list_add(global.list_player,0);
}
*/

global.list_order = [1,2,3,4,5,6];
global.list_player = [0,0,0,0,0,0];
randomize();
for (var i = array_length(global.list_order)-1; i >= 1; --i) {
	var rand = irandom(i);
    var temp = global.list_order[i];
    global.list_order[@i] = global.list_order[rand];
    global.list_order[@rand] = temp;
}





