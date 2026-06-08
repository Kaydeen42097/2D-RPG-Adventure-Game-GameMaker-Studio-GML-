/*
var g_width = display_get_gui_width();
var g_height = display_get_gui_height();

//shadow
draw_set(c_black, 0.2);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) + ui_border_size,
	(g_height - ui_padding_y) + ui_border_size,
	false
	)
	
//full rectangle
draw_set(color_border, 1)
draw_rectangle(
	ui_padding_x,
	ui_padding_y,
	(g_width - ui_padding_x),
	(g_height - ui_padding_y),
	false
	)
	
//draw inner rectangle
draw_set(color_background, 1)
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) - ui_border_size,
	(g_height - ui_padding_y) - ui_border_size,
	false
	)
	
//draw horizontal line
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x + ui_panel_left,
	ui_padding_y + ui_border_size,
	ui_padding_x + ui_panel_left + ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
	)

// font setup
//how make font larger??
text_align(fa_left, fa_top);

//text shadow Menu
draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + (ui_border_size*3) + 4,
	ui_padding_y + (ui_border_size*4) + 4,
	"Menu"
);
draw_set(c_white, 0.5);
draw_text(
	ui_padding_x + (ui_border_size*3),
	ui_padding_y + (ui_border_size*4),
	"Menu"
);

//text shadow Inventory
draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 4,
	ui_padding_y + (ui_border_size*4) + 4,
	"Inventory"
);
draw_set(c_white, 0.5);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin,
	ui_padding_y + (ui_border_size*4),
	"Inventory"
);

// inventory boxes
var inventory_items = inventory.item_get();
for (var row = 0; row < inventory_rows; row++) {
	var pos_y = ui_padding_y + (ui_border_size*13) + (row * (ui_inventory_margin + ui_inventory_box));
	for (var column = 0; column < inventory_columns; column++) {
		var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));
		
	//draw box
	draw_sprite_ext(
		spr_inventory_box,
		0,
		pos_x,
		pos_y,
		1, 1, 0, c_white, 0.4);
	
	var inventory_index = (row * inventory_columns) + column;
	if (inventory_index <= array_length(inventory_items) - 1) {
		//draw inventory item
		draw_sprite(inventory_items[inventory_index].sprite, 0, pos_x, pos_y);
	
		}
		
		//quantity
		if (inventory_index <= array_length(inventory_items) - 1) {
			draw_set(#232323, 1)
			draw_circle(
				pos_x + ui_inventory_box,
				pos_y + ui_inventory_box,
				14,
				false
			);
			
			draw_set(c_white, 1);
			text_align(fa_center, fa_middle);
			
			draw_text(
				pos_x + ui_inventory_box,
				pos_y + ui_inventory_box,
				inventory_items[inventory_index].quantity
			);
			
		}
	}
}

*/































