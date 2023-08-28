/// @description Insert description here
// You can write your code in this editor

if(found == false){
	gpu_set_blendmode(bm_add);
	for(var c = 0; c < 360; c+=60){
		//draw_circle_colour(x, y, 5, c_white, c_black, 0);
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,c/360);
	}
	gpu_set_blendmode(bm_normal);

	if(distance_to_object(obj_player) < 10){
		draw_text(x, y - 32,"I");
	}
}

//draw_self();





