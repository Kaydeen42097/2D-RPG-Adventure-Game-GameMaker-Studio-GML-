//get inputs
up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(people);

//move thru menu
if obj_menu.people_view = true{
pos += down_key - up_key
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};
}

if !instance_exists(obj_log){
	instance_create_depth(0, 0, -9999, obj_log)
	log_x = obj_log.x
	log_y = obj_log.y
	
	}

switch(pos){
	
	//NPC 1
	case 0:
		if global.npc_found[0] = true{
			
			}
	break;
	
	//NPC 2
	case 1:
	break;
	
	//NPC 3
	case 2:
	break;
	
	
	
	
}

depth = -999999










