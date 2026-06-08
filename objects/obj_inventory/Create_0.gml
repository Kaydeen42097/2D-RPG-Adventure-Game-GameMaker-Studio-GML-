randomize();

inventory = new Inventory();

inventory.item_add("Wood", 3, spr_item_wood);
inventory.item_add("Wood", 2, spr_item_wood);
inventory.item_add("Sus", 5, spr_among_us);

show_debug_message(inventory)

// UI INFORMATION //

display_set_gui_size(1024, 768);

color_border = c_black
color_background = c_grey

inventory_columns = 6;
inventory_rows = 3;

ui_padding_x = 64;
ui_padding_y = 64;
ui_panel_left = 320;
ui_border_size = 8;
ui_inventory_padding = 48;
ui_inventory_box = 64;
ui_inventory_margin = 16;
