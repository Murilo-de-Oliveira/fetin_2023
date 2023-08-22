camera_set_view_size(view_camera[VIEW], VIEW_WIDTH, VIEW_HEIGHT);
if(instance_exists(global.view_target)){
	var x_to = global.view_target.x - (VIEW_WIDTH / 2);
	var y_to = global.view_target.y - (VIEW_HEIGHT / 1.5);
	
	x_to = clamp(x_to, 0, room_width-VIEW_WIDTH);
	y_to = clamp(y_to, 0, room_height-VIEW_HEIGHT);
	
	var camera_x = camera_get_view_x(view_camera[VIEW]);
	var camera_y = camera_get_view_y(view_camera[VIEW]);
	
	var pos_x = scr_approach(x_to, camera_x, VIEW_SPEED);
	var pos_y = scr_approach(y_to, camera_y, VIEW_SPEED);
	
	camera_set_view_pos(view_camera[VIEW], pos_x, pos_y);
}




