x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2

depth = -9999

//get inputs
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
accept_key = keyboard_check_pressed(ord("Z"))

//array
op_length = array_length(text_p)

switch(text){
	//it won't break, but use even pages, preferably!! (or else it will duplicate :P)
	case "bookshelf 1":
		text_p[0] = "Page 1"
		text_p[1] = "Page 2"
		text_p[2] = "Page 3"
		text_p[3] = "Page 4"
		text_p[4] = "Page 5"
		text_p[5] = "Page 6"
		break;
	}

//move thru menu
pos += (right_key - left_key)*2
if pos >= op_length {instance_destroy(self)};
if pos < 0 {pos = 0};

