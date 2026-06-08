//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//variables :P
var inventory_items = inventory.item_get();
op_length = array_length(inventory_items)
var inventory_index = op_length

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
	if obj_menu.items_use = false{_c = DARK}
	
	var _alpha = 1
	
	//if inventory_items[i].quantity <= 0{
	//	_alpha = 0
	//}
	
	//if inventory_items[pos].quantity <= 0{
		
	//	op_length -= 1
		
	//	pos += 1
	//	if pos >= op_length {pos = op_length-1};
	//	if pos < 0 {pos = op_length-1};
	//}
	
	if pos == i{_c = LIGHT}
	if pos == i && obj_menu.items_use = true
		{
		//draw_text_color(x+op_border + 110, y+op_border + 100, inventory_items[i].desc, _c, _c, _c, _c, 1);
		var _mon = string(global.money)

		draw_text_ext_color(x + width - 5, y + op_border + 92, "Monies: $" + _mon, 12.5, 128, _c, _c, _c, _c, 1)
		draw_text_ext_color(x + width - 5, y+op_border + 110, inventory_items[i].desc, 12.5, 128, _c, _c, _c, _c, 1)
		}
		
	var _quan = string(inventory_items[i].quantity)
	
	draw_sprite_ext(inventory_items[i].sprite, 0, x+op_border, y+op_border + op_space*i, 0.25, 0.25, 0, c_white, _alpha)
	draw_text_color(x+op_border + 20, y+op_border + op_space*i, inventory_items[i].name, _c, _c, _c, _c, _alpha);
	draw_text_color(x+op_border + 58, y+op_border + op_space*i, "x" + _quan, _c, _c, _c, _c, _alpha);
	
}

// inventory_items[inventory_index, i].name