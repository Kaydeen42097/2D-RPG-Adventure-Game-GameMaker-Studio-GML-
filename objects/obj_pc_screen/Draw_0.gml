//update width and height
width = window_get_height()
height = window_get_height()

op_length = array_length(option)

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

//draw in pc background
draw_sprite_ext(sprite_index, image_index, x, y, width, height, 0, c_white, 1)

//draw in apps
for (var i = 0; i < op_length; i++)
	{
	draw_sprite_ext(option[i], 0, app_distance*i, 10, 1, 1, 0, c_white, 1)
	}



