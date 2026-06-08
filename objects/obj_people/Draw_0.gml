//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 + offset_y;

//draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
//width * (1/sprite_width);

//draw inventory items
for (var i = 0; i < op_length; i++)
	{
	
	var _c = DARK;
	if obj_menu.people_view = false{_c = DARK}
	
	if pos == i{_c = LIGHT}
	
	draw_text_color(x+op_border, y+op_vert_border + op_space*i, people[i], _c, _c, _c, _c, 1);
	
	}

// inventory_items[inventory_index, i].name