//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//dynamically get width and height of menu

_window_width = window_get_width()
_window_height = window_get_height()

//center menu
x = width - op_border/2
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - height

//draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
//width * (1/sprite_width);

//draw title
var _c = c_grey
draw_text_color(x+op_border, y+(height/2), title, _c, _c, _c, _c, 1)

//draw in character
draw_sprite_ext(pic, 0, x+(width/6), y+(op_border/2) + 1, 0.9, 0.9, 0, c_white, 1)

for (var i = 0; i < op_length; i++)
	{
	var _c = c_grey;
	
	//draw stat labels
	draw_text_transformed_color(x+op_border, y+(height/1.75) + op_space*i + 8, option[menu_level, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
	}

for (var i = 0; i < op_length; i++)
	{
		
	//draw in stats
	draw_text_transformed_color(x+op_border + 20, y+(height/1.75) + op_space*i + 8, stats[0, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
	draw_text_transformed_color(x+op_border + 30, y+(height/1.75) + op_space*i + 8, "/", 0.5, 0.5, 0, _c, _c, _c, _c, 1)
	draw_text_transformed_color(x+op_border + 40, y+(height/1.75) + op_space*i + 8, stats[1, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
	
	}
	