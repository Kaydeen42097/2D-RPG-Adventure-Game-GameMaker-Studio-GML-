//get inputs
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(("S"));
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
var inventory_items = inventory.item_get();
op_length = array_length(inventory_items);
var inventory_index = op_length


//move thru menu
if obj_menu.items_use = true{
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};
}

//define item crap
selected_item_name = inventory_items[pos].name;
selected_item_quantity = inventory_items[pos].quantity;


//use an item
if accept_key = true && take_input = true
	{
	inventory_items[pos].effect(); 
	}
	
//if all items are gone, autmatically puts control on the main menu
//if op_length == 0 {obj_menu.items_use = false} //removed until inventory box autmatically deletes if there is nothing inside and the selection has moved on to another option




depth = -999999










