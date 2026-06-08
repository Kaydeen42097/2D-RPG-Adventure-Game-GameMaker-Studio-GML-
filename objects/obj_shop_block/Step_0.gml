//original variable set
var _player_x = obj_pinger.x
var _player_y = obj_pinger.y

//NOTE: PINGER IS FOR VISUALIZATION PURPOSES ONLY RIGHT NOW

//getting offset
if obj_pinger.sprite_index == spr_pinger_right {
	offset_x = 12;
	offset_y = 0;
	}

if obj_pinger.sprite_index == spr_pinger_left {
	offset_x = -12;
	offset_y = 0;
	}
 
if obj_pinger.sprite_index == spr_pinger_up {
	offset_x = 0;
	offset_y = -12
	}	

if obj_pinger.sprite_index == spr_pinger_down{
	offset_x = 0;
	offset_y = 12
	}


if position_meeting(_player_x + offset_x, _player_y + offset_y, id) && keyboard_check_pressed(ord("Z"))
		{		
		if !instance_exists(obj_shop_menu) && !instance_exists(obj_menu){
			instance_create_depth(x, y, -9999, obj_shop_menu)
			instance_create_depth(x, y, -9999, obj_desc_box)
		}
	}
if position_meeting(_player_x + offset_x, _player_y + offset_y, id) && keyboard_check_pressed(ord("X"))
	{		
		if instance_exists(obj_shop_menu){
			obj_settings.shop_open = true
			instance_destroy(obj_shop_menu)
			instance_destroy(obj_desc_box)
		}
	}





