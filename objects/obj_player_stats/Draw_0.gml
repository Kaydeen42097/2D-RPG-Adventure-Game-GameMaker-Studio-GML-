//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//dynamically get width and height of menu
_window_width = window_get_width()
_window_height = window_get_height()

//V-A-R-I-A-B-L-E-S		I-G
var party_members = party.party_get();
party_size = array_length(party_members)

op_length = array_length(option);

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - 155
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - height

//draw menu background
for (var i = 0; i < party_size; i++)
	{
	draw_sprite_ext(spr_menu, 0, x + (width/2 + box_space)*i, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
	}

//draw in sprites
for (var i = 0; i < party_size; i++)
	{
	var _scale = 0.33
	var _vertical_offset = -2
	var _horizontal_offset = 23
	draw_sprite_ext(party_members[i].sprite, 0, (x + (width/2 + box_space)*i) + _horizontal_offset, y + _vertical_offset, _scale, _scale, 0, c_white, 1)
	}

//draw character names
for (var i = 0; i < party_size; i++)
	{
	var _c = LIGHT
	draw_text_color(x+op_border + (width/2 + box_space)*i, y+(height/2), party_members[i].name, _c, _c, _c, _c, 1)
	}

//draw in stat labels
for (var i = 0; i < party_size; i++)
	{
	//hp and mana stat (labels)
	var scale = 0.75
	var _c = LIGHT
	//draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i, y+(height/1.6), "Hp: ", op_space, 500, scale, scale, 0, _c, _c, _c, _c, 1)
	//draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i, y+(height/1.6) + op_space, "Sp: ", op_space, 500, scale, scale, 0, _c, _c, _c, _c, 1)
	
	//lv stats
	var name_length = string_length(party_members[i].name)
	scale = 0.5
	var _lv = string(party_members[i].lvl)
	draw_text_transformed_color(x+op_border + (width/2 + box_space)*i + width/2, y+(height/2) + 6, "Lv" + _lv, scale, scale, 0, _c, _c, _c, _c, 1)
	}
	
//the bar things
for (var i = 0; i < party_size; i++)
	{
	var _scale = 1
	var _x_scale = party_members[i].hp/party_members[i].max_hp
	var _offset = 0
	if _x_scale < 0.7{_offset = 1}
	var _c = c_white
		draw_sprite_ext(spr_hp_bar_outline, 0, x+op_border + (width/2 + box_space)*i, y+(height/1.55), _scale, _scale, 0, _c, 1)
		draw_sprite_ext(spr_hp_bar_display, 0, x+op_border + (width/2 + box_space)*i + _offset, y+(height/1.55), _x_scale, _scale, 0, _c, 1)
	
	_offset = 0;
	_x_scale = party_members[i].sp/party_members[i].max_sp
	if _x_scale < 0.7{_offset = 1}
		draw_sprite_ext(spr_sp_bar_outline, 0, x+op_border + (width/2 + box_space)*i, y+(height/1.55) + op_space, _scale, _scale, 0, _c, 1)
		draw_sprite_ext(spr_sp_bar_display, 0, x+op_border + (width/2 + box_space)*i + _offset, y+(height/1.55) + op_space, _x_scale, _scale, 0, _c, 1)
	
	//draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i, y+(height/1.6), "Hp: ", op_space, 500, _scale, _scale, 0, _c, _c, _c, _c, 1)
	//draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i, y+(height/1.6) + op_space, "Sp: ", op_space, 500, _scale, _scale, 0, _c, _c, _c, _c, 1)
	}

//draw in stats
for (var i = 0; i < party_size; i++)
	{
	//hp and mana stats
		var scale = 0.5
		var _c = DARK
		var _offset = width/2 - 5
		//hp
			var _hp = string(party_members[i].hp)
			var _hp_max = string(party_members[i].max_hp)
			draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i + _offset, y+(height/1.6) + 2, _hp + "/" +_hp_max, op_space, 500, scale, scale, 0, _c, _c, _c, _c, 1)
		//sp
		_c = BLUE_DARK
			var _sp = string(party_members[i].sp)
			var _sp_max = string(party_members[i].max_sp)
			draw_text_ext_transformed_color(x+op_border + (width/2 + box_space)*i + _offset, y+(height/1.6) + op_space + 2, _sp + "/" + _sp_max, op_space, 500, scale, scale, 0, _c, _c, _c, _c, 1)
	
	
	}

//using item party selector thing ig
if obj_menu.party_select = true{
	
	for (var i = 0; i < party_size; i++)
	{
	var _x = 15 + 70*i
	var _y = 75
	//note: needs to be optimized before the items will be allowed to do stuff :P also it deletes before use so fix
	_x = x + 15 + 72*i;
	_y = y - 30;
	var _alpha = 0;
	if party_pos = i{_alpha = 1}
	else{_alpha = 0}
	draw_sprite_ext(spr_arrow, 0, _x, _y, 1, 1, 0, c_white, _alpha)
	}
	
}



#region //-----Old stuff-----//
//draw title
//var _c = c_grey
//draw_text_color(x+op_border, y+(height/2), title, _c, _c, _c, _c, 1)

////draw in character
//draw_sprite_ext(pic, 0, x+(width/6), y+(op_border/2) + 1, 0.9, 0.9, 0, c_white, 1)

//for (var i = 0; i < op_length; i++)
//	{
//	var _c = c_grey;
	
//	//draw stat labels
//	draw_text_transformed_color(x+op_border, y+(height/1.75) + op_space*i + 8, option[menu_level, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
//	}

//for (var i = 0; i < op_length; i++)
//	{
		
//	//draw in stats
//	draw_text_transformed_color(x+op_border + 20, y+(height/1.75) + op_space*i + 8, stats[0, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
//	draw_text_transformed_color(x+op_border + 30, y+(height/1.75) + op_space*i + 8, "/", 0.5, 0.5, 0, _c, _c, _c, _c, 1)
//	draw_text_transformed_color(x+op_border + 40, y+(height/1.75) + op_space*i + 8, stats[1, i], 0.5, 0.5, 0, _c, _c, _c, _c, 1)
	
//	}
#endregion