//get inputs
up_key = keyboard_check_pressed(vk_left);
down_key = keyboard_check_pressed(vk_right);
accept_key = keyboard_check_pressed(ord("Z")) 
key_x = keyboard_check_pressed(ord("X")) 

//store number of options in current menu
op_length = array_length(option);

//move thru menu
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


//using the options
if accept_key {

	var _sml = menu_level;

	switch(menu_level){
	
		//pause menu
		case 0:
			switch(pos){
				//items
				case 0:
				break;
				//equip
				case 1:	
				break;
				//save
				case 2: 
				break;
				//Quit
				case 3:
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
	op_length = array_length(option);

}

//variable stuf
var party_members = party.party_get();
var inventory_items = inventory.item_get();

//party selecty controlsies
if obj_menu.party_select = true{
party_pos += down_key - up_key
if party_pos >= party_size {party_pos = 0};
if party_pos < 0 {party_pos = party_size-1};
}

selected_item = obj_menu.selected_item

if accept_key && obj_menu.party_select = true{
	//item_amount needs to have the quantity of the selected item thingy so it can't be used forever
	if inventory.item_amount(selected_item) > 0 {
		
		var _full = scr_item_purpose(selected_item)
		
		if _full = "hp" && party_members[party_pos].hp < party_members[party_pos].max_hp{
			scr_item_use(selected_item, party_members[party_pos].name)
			}
		if _full = "sp" && party_members[party_pos].sp < party_members[party_pos].max_sp{
			scr_item_use(selected_item, party_members[party_pos].name)
			}	
		
		}
	}


depth = -999999













