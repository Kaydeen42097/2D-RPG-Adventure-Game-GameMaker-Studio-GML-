width = 124;
height = camera_get_view_height(view_camera[0]) - 20

//as a note, to add anything to the inventory, it needs to be copied exactly, and this statement needs to be said
inventory = obj_settings.inventory;

selected_item_name = 0;
selected_item_quantity = 0;

offset_x = 0;
offset_y = 5; //-45

op_border = 20; //space between border
op_space = 20; //space between options

pos = 0;
_end = false;

option[0, 0] = "Sus";
option[0, 1] = "Wood";
option[0, 2] = "uwu";
option[0, 3] = "Gum";

option_spr[0, 0] = spr_among_us;
option_spr[0, 1] = spr_item_wood;
option_spr[0, 2] = spr_uwu;
option_spr[0, 3] = spr_jumsgum

option_desc[0, 0] = "restores some hp or sp or sm";
option_desc[0, 1] = "iz da wood";
option_desc[0, 2] = "ara ara";
option_desc[0, 3] = "A packet of Jum's Gum. Or as it used be called (but still pronounced in the same way), Gum's Gum."


option_price[0, 0] = 3;
option_price[0, 1] = 6;
option_price[0, 2] = 9;
option_price[0, 3] = 5;

sus_amount = 0;
wood_amount = 0;
uwu_amount = 0;

op_length = 0;
menu_level = 0;

take_input = false;

alarm[0] = 10;

