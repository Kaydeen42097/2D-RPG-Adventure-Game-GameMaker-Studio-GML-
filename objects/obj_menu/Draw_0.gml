//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//dynamically get width and height of menu
height = op_border*2 + string_height(option[0,0]) + (op_length-1);

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0])

//draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);


//option stuff
for (var i = 0; i < op_length; i++)
	{
	var _new_op_space = 0;
	var _op_w = string_width(option[menu_level, i]);
	var _space_buffer = string_width(option[menu_level, i])
	_new_op_space = op_space + _op_w
	var _c = DARK;
	if items_use == true || party_select == true{_c = DARK}
	else if pos == i{_c = LIGHT}

	//add width of previous ones
	draw_text_color(x+op_border + op_space*i, y+op_border, option[menu_level, i], _c, _c, _c, _c, 1);
	}





