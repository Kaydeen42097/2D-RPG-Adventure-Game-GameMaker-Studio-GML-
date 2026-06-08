right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
accept_key = keyboard_check_pressed(ord("Z"))

y = 75

if right_key{pos += 1}
if left_key{pos -= 1}

if pos < 1{pos = 1}
if pos > 2{pos = 2} //make it number of party members instead, maybe a global variable

if pos = 1{x = 20}
if pos = 2{x = 86}

//add section where item is removed AFTER the action has been performed

if ready = true{
if pos = 1 && accept_key
	{
	obj_player.hp += 10 //can be improved with some other system
	instance_destroy(obj_player_stats)
	instance_create_depth(0, 0, -99999, obj_player_stats)
	show_debug_message(obj_player.hp)
	}

if pos = 2 && accept_key
	{
	//if global.natalie_party = true
	obj_natalie.hp += 10
	instance_destroy(obj_natalie_stats)
	instance_create_depth(0, 0, -99999, obj_natalie_stats)
	show_debug_message(obj_natalie.hp)
	}

}



