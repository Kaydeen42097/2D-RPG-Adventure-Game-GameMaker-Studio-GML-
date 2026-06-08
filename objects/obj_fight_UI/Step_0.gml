//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("Z"))

//story number of options in current menu
op_length = array_length(option[menu_level]);

//move thru menu
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};



//using the options
if accept_key{

	var _sml = menu_level;

	switch(menu_level){
	
		
		//fight UI
		case 0:
			switch(pos){
				//attack
				case 0: 
				menu_level = 1;
				break;
				//defend
				case 1: 
				break;
				//item
				case 2:
				break;
				//run
				case 3:
				break;
				}
			break;
	
		//attack menu
		case 1:
			switch(pos) {
				//attack
				case 0:
					break;
				//sp. attack
				case 1:
					break;
				//back
				case 2:
					menu_level = 0;
					break;
				}
			break;
	
	}
	
	//set position back
	if _sml != menu_level {pos = 0;};

	//correct option length
	op_length = array_length(option[menu_level]);

}






depth = -10000










