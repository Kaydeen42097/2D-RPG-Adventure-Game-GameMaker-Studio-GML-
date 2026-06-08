//follow player
x = obj_player.x
y = obj_player.y

//potentially important code
mask_index = sprite[3]

//i already labled it
#region //----FIND DIRECION----//
if obj_player.sprite_index == spr_player_right_new {
	face = 0
	}

if obj_player.sprite_index == spr_player_up_new {
	face = 1
	}

if obj_player.sprite_index == spr_player_left_new {
	face = 2
	}

if obj_player.sprite_index == spr_player_down_new {
	face = 3
	}

sprite_index = sprite[face]
#endregion

/*
if place_meeting(x, y, obj_event) == true
	{
	
	}
*/