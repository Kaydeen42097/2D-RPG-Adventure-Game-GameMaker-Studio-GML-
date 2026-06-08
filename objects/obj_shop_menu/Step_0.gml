//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("Z"));

//store number of options in current menu
var inventory_items = inventory.item_get();
op_length = array_length(option[0]);

//move thru menu
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//define item stuff
//selected_item_name = inventory_items[pos].name;
//selected_item_quantity = inventory_items[pos].quantity; //this will need to be altered or sm bc its relying on the item's order rn, make direct reference with names

//array_length(inventory_items)
//sus_amount = inventory.item_amount("Sus")
//wood_amount = inventory.item_amount("Wood")
//uwu_amount = inventory.item_amount("uwu")

//using the options
if accept_key{

	var _sml = menu_level;

	switch(menu_level){

		//pause menu
		case 0:
			switch(pos){
				//sus
				case 0:
				if global.money >= option_price[0, 0] {
					inventory.item_add("Sus", 1, spr_among_us, "red kinda sus, ngl...ok I need to make this longer to test the automatic text thing", function(){ 
						//sp +5
						scr_state_item_use()
	
						show_debug_message("sus")
						});
					global.money -= option_price[0, 0]}
				break;
				//wood
				case 1:
				if global.money >= option_price[0, 1] {
					inventory.item_add("Wood", 1, spr_item_wood, "wood...it's wood...",function()
						{
	
						//player health +10
						scr_state_item_use()
	
						show_debug_message("wood");
						});
					global.money -= option_price[0, 1]}
				break;
				
				//uwu
				case 2:
				if global.money >= option_price[0, 2]{
					inventory.item_add("uwu", 1, spr_uwu, "ara ara", function(){
					//sp +10
					scr_state_item_use()
	
					show_debug_message("uwu")
					});
					global.money -= option_price[0, 2]}
				break;
				
				//jums gum
				case 3:
				if global.money >= option_price[0, 3]{
					inventory.item_add("Gum", 1, spr_jumsgum, "A packet of Jum's Gum. Or as it used be called (but pronounced in the same way), Gum's Gum.", function(){
					//hp +5
					scr_state_item_use()
	
					show_debug_message("gum")
					});
					global.money -= option_price[0, 3]}
				break;
				
				}
		break;

	}
	
	//set position back
	if _sml != menu_level {pos = 0;};

	//correct option length
	op_length = array_length(option[menu_level]);

}

depth = -999999










