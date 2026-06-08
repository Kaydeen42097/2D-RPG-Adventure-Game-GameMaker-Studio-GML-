key_x = keyboard_check_pressed(ord("M"));
accept_key = keyboard_check_pressed(vk_enter);


if key_x && room!=rm_titlescreen{
	//if a shop is not open
	if shop_open == false{
		//if the menu is not currently open
		if !instance_exists(obj_menu){
			instance_create_depth(0, 0, -99999, obj_menu)
			instance_create_depth(0, 0, -99999, obj_player_stats)
			show_debug_message("Menu systems go!")
			}
		//if the menu is open
		else if instance_exists(obj_menu){
			//if items are in use/inventory is open
			if obj_menu.items_use == true{
				//exit inventory
				if obj_menu.party_select = false{
					obj_menu.items_use = false;
					instance_destroy(obj_inventory_box);
					instance_destroy(obj_desc_box);
					instance_create_depth(0, 0, -99999, obj_player_stats)
					}
				//exit party select
				else if obj_menu.party_select = true{
					obj_menu.party_select = false
					instance_destroy(obj_player_stats)
					instance_create_depth(0, 0, -99999, obj_desc_box)
					instance_create_depth(0, 0, -99999, obj_inventory_box)
					}
			//if items are not in use
			} else if obj_menu.items_use = false{
				//check for log
				if obj_menu.people_view = true{
						obj_menu.people_view = false;
						instance_destroy(obj_log)
						instance_destroy(obj_people)
						instance_create_depth(0, 0, -99999, obj_player_stats)
					}
					
				//pretty sure anything else would go here	
					
				//if no log (and no items in use)
				else if obj_menu.people_view = false{
					instance_destroy(obj_menu);
					instance_destroy(obj_inventory_box);
					instance_destroy(obj_desc_box);
					instance_destroy(obj_player_stats);
					}
			}
			
		}
	
	} else if shop_open = true{
		shop_open = false
		}
	
}

//if key_x && !instance_exists(obj_menu) && shop_open = false 
//	{
//	instance_create_depth(0, 0, -99999, obj_menu)
//	instance_create_depth(0, 0, -99999, obj_player_stats)
//	show_debug_message("Menu system go!")
//	}
//else if key_x && instance_exists(obj_menu) && obj_menu.items_use = true && obj_menu.party_select = false
//	{
//	obj_menu.items_use = false;
//	instance_destroy(obj_inventory_box);
//	instance_destroy(obj_desc_box);
//	instance_create_depth(0, 0, -99999, obj_player_stats)
//	}
//else if key_x && instance_exists(obj_menu) && obj_menu.items_use = true && obj_menu.party_select = true
//	{
//	obj_menu.party_select = false
//	instance_destroy(obj_player_stats)
//	instance_create_depth(0, 0, -99999, obj_desc_box)
//	instance_create_depth(0, 0, -99999, obj_inventory_box)
//	}
//else if key_x && instance_exists(obj_menu) && obj_menu.items_use = false
//	{
//	instance_destroy(obj_menu);
//	instance_destroy(obj_inventory_box);
//	instance_destroy(obj_desc_box);
//	instance_destroy(obj_player_stats);
//	}

//else if shop_open = true{
//	shop_open = false}
	
	
//health and mana stuff ig
if instance_exists(obj_player){
	if obj_player.hp > obj_player.max_hp{obj_player.hp = obj_player.max_hp}
	if obj_player.mana > obj_player.max_mana{obj_player.mana = obj_player.max_mana}
}
if instance_exists(obj_natalie){
	if obj_natalie.hp > obj_natalie.max_hp{obj_natalie.hp = obj_natalie.max_hp}
	if obj_natalie.mana > obj_natalie.max_mana{obj_natalie.mana = obj_natalie.max_mana}
}



//if instance_exists(obj_inventory_box)
//	{
//	var inventory_items = inventory.item_get();
//	op_length = array_length(inventory_items);
//	var inventory_index = op_length
//	if accept_key && obj_inventory_box.take_input = true
//		{
//		//show_debug_message(inventory_items);
//		inventory_items[obj_inventory_box.pos].effect();
//		}
//	}

//inventory_items[pos].effect();