//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//variables :P
var inventory_items = inventory.item_get();
op_length = array_length(option[0])

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4 - 10
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 + offset_y;

//draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
//width * (1/sprite_width);

//draw inventory items

for (var i = 0; i < op_length; i++)
	{
	var _c = DARK;
	if pos == i{_c = LIGHT}
	var _desc_c = LIGHT
	
		var _mon = string(global.money)
		draw_text_ext_color(x + width - 2, y + op_border + 140, option_desc[0, pos], 12.5, 128, _desc_c, _desc_c, _desc_c, _desc_c, 1)
		draw_text_ext_color(x + width - 6, y + op_border + 122, "Monies: $" + _mon, 12.5, 128, _desc_c, _desc_c, _desc_c, _desc_c, 1)
		
		var _name = option[0, pos]
		var _own = string(inventory.item_amount(_name))
		draw_text_ext_color(x + width + 74, y + op_border + 122, "Owned: " + _own, 12.5, 128, _desc_c, _desc_c, _desc_c, _desc_c, 1)
		
	draw_sprite_ext(option_spr[0, i], 0, x+op_border, y+op_border + op_space*i, 0.25, 0.25, 0, c_white, 1)
	draw_text_color(x+op_border + 20, y+op_border + op_space*i, option[0, i], _c, _c, _c, _c, 1);
	var _price = string(option_price[0, i])
	draw_text_color(x+op_border + 58, y+op_border + op_space*i, "$" + _price, _c, _c, _c, _c, 1);
}

// inventory_items[inventory_index, i].name