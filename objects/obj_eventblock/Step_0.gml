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


if !instance_exists(obj_textbox) && !instance_exists(obj_book){
	if position_meeting(_player_x + offset_x, _player_y + offset_y, id) && keyboard_check_pressed(ord("Z"))
			{
		
			_begin = true;
			global.current_id = id;
		
			}
		
			if _begin = true && !keyboard_check_pressed(ord("Z")){
					if start_event != seq_empty {start_animation(start_event); show_debug_message("Hi!")}
					if _finish == false{ create_textbox(text_id); }
					if _finish == true{ create_textbox(text_id_2); }
					_begin = false;
					if text_id_2 != "" {_finish = true;}
				}
			}




