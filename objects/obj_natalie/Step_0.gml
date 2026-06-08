check_animation()

//if (!obj_natalie.enableded) exit; //if a sequence is active, don't move (currently for reference purposes)


if global.natalie_party == true {
	object_set_persistent(obj_natalie, true)
//store last player values

//store the location/orientation of the player, when the player moves, go to those locations

if getvalue == true
	{
	//get x values
	player_x = obj_player.x
	player_y = obj_player.y
	//get the direction player is facing
}
		if obj_player.sprite_index == spr_player_right {
			face = 0;
			}

		if obj_player.sprite_index == spr_player_up {
			face = 1;
			}

		if obj_player.sprite_index == spr_player_left {
			face = 2;
			}

		if obj_player.sprite_index == spr_player_down {
			face = 3;
			}
sprite_index = sprite[face]


if keyboard_check(vk_left) == true && keyboard_check(vk_right) == true {
	spd = 0;
	} else if keyboard_check(vk_up) == true && keyboard_check(vk_down) == true {
	spd = 0;
    } else {if keyboard_check(vk_shift) == true {spd = 2} else {spd = 1}}

// player_x == obj_player.x && player_y == obj_player.y {spd = 0}
//if keyboard_check(vk_up) == true && keyboard_check(vk_left) == true{spd = spd*2}
//if keyboard_check(vk_up) == true && keyboard_check(vk_right) == true{spd = spd*2}
//if keyboard_check(vk_down) == true && keyboard_check(vk_left) == true{spd = spd*2}
//if keyboard_check(vk_down) == true && keyboard_check(vk_right) == true{spd = spd*2}
if distance_to_point(obj_player.x, obj_player.y) > 28{spd = 2}
else if !keyboard_check(vk_up) == true && !keyboard_check(vk_down) == true && !keyboard_check(vk_right) == true && !keyboard_check(vk_left) == true
	{
	spd = 0
	}

//ADD: IF TOUCHING A WALL, ALSO STOP, UNLESS TOO FAR AWAY

if distance_to_point(obj_player.x, obj_player.y) > 18{

move_towards_point(obj_player.x, obj_player.y, spd)

}

if spd == 0 {image_index = 0;}

}

else {image_index = 0}

//if keyboard_check(vk_space) == true {
	//start_animation(seq_natalie_turn)
	//}

//depth
depth = -bbox_bottom;

