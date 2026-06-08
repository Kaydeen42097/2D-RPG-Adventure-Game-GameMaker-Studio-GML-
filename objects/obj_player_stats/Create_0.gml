width = 96;
height = 108;

offset_x = 0
offset_y = 0

op_border = 20; //space between border
op_space = 11//space between options
box_space = 24 //space between boxes

stat_space = 5;

pos = 0;
party_pos = 0;

party_size = 0;
party = obj_settings.party

inventory = obj_settings.inventory
selected_item = "";
item_amount = 0;

//pic
pic = spr_player_speak_happy

//title
title = "Player";

//stats
option[0] = "HP: ";
option[1] = "MANA: ";
//option[0, 2] = "ATK: "; //will go in equip/stat menu
//option[0, 3] = "DEF: ";

stats[0, 0] = obj_player.hp
stats[1, 0] = obj_player.max_hp
stats[0, 1] = obj_player.mana
stats[1, 1] = obj_player.max_mana


op_length = 0;
menu_level = 0;





