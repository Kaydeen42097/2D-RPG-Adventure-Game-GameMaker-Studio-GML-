// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@param item
///@param character
function scr_item_use(_item, _char){
	party = obj_settings.party
	switch(_item)
	{
	
	case "Wood":
		show_debug_message("wood use")
		party.hp_change(_char, 10, "+")
		inventory.item_subtract("Wood", 1);
		break;
	case "Sus":
		show_debug_message("sus use")
		party.sp_change(_char, 1, "+")
		inventory.item_subtract("Sus", 1);
		break;
	case "uwu":
		show_debug_message("uwu use")
		party.sp_change(_char, 5, "+")
		inventory.item_subtract("uwu", 1);
		break;
	case "Gum":
		show_debug_message("gum use")
		party.hp_change(_char, 5, "+")
		inventory.item_subtract("Gum", 1);
		break;
		
	}
}

function scr_item_purpose(_item){
	
	switch(_item){
		
		case "Wood":
			return "hp"
		case "Sus":
			return "sp"
		case "uwu":
			return "sp"
		case "Gum":
			return "hp"
		
		}
	
	}

function scr_state_item_use()
	{
	obj_menu.party_select = true
	instance_destroy(obj_desc_box)
	instance_destroy(obj_inventory_box)
	instance_create_depth(0, 0, -99999, obj_player_stats)	
	}