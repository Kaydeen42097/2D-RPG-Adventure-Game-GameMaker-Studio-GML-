//get inputs
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter) 
key_x = keyboard_check_pressed(vk_escape) 

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move thru menu
if items_use = false && party_select = false{
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};
}

//using the options
if accept_key && items_use = false && party_select = false{

	var _sml = menu_level;

	switch(menu_level){
	
		//pause menu
		case 0:
			switch(pos){
				//log
				case 0:
					if !instance_exists(obj_log){
						people_view = true;
						show_debug_message("activate")
						instance_destroy(obj_player_stats)
						instance_create_depth(0, 0, -99999, obj_people);
					}
				break;
				//items
				case 1:	
					if !instance_exists(obj_inventory_box){
						items_use = true;
						show_debug_message("activate")
						instance_destroy(obj_player_stats)
						instance_create_depth(0, 0, -99999, obj_inventory_box);
						instance_create_depth(0, 0, -99999, obj_desc_box);
					}
				break;
				//equip
				case 2: 
				break;
				//save
				case 3: 
				break;
				//quit
				case 4:
					game_end()
				break;
				}
				
		break;
	
		#region //--ref--//
		case 1:
			switch(pos) {
				//window size
				case 0:
					break;
				//brightness
				case 1:
					break;
				//controls
				case 2:
					break;
				//back
				case 3:
					menu_level = 0;
					break;	
				}
			break;
		#endregion
	
	}
	
	//set position back
	if _sml != menu_level {pos = 0;};

	//correct option length
	op_length = array_length(option[menu_level]);

}

if instance_exists(obj_inventory_box){
	selected_item = obj_inventory_box.selected_item_name 
	}


depth = -999999













