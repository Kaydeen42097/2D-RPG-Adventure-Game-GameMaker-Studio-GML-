var _offset = width/2 - 10

draw_sprite_ext( sprite_index, image_index, x + _offset, y, width/sprite_width, height/sprite_height, 0, c_white, 1 )
draw_sprite_ext( sprite_index, image_index, x - _offset, y, width/sprite_width, height/sprite_height, 0, c_white, 1 )

for (var i = 0; i < op_length/2; i++){

	var _c = c_white
	var _s  = pos + 1
	if pos + 1 >= op_length{_s = op_length-1}
	
	draw_text_ext_transformed_color( x - _offset + x_border, y + y_border, text_p[pos], sep, width - x_border - 10, 1, 1, 0, _c, _c, _c, _c, 1 )
	draw_text_ext_transformed_color( x + _offset + x_border, y + y_border, text_p[_s], sep, width - x_border - 10, 1, 1, 0, _c, _c, _c, _c, 1 )
	
	}

