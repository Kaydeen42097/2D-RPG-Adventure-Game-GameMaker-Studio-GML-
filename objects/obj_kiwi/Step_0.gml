if obj_titlemenu.animation = "active"{
	stop = false;
	if prev_state="sit"{
		image_speed = -1
		if image_index <= 1{prev_state="active"; sprite_index = active; image_speed=1}
		}
	}

if obj_titlemenu.animation = "idle"{
	image_speed = 1;
	if image_index != 0 && stop=false{image_index = 0; stop=true; prev_state="sit"}
	sprite_index = sit;
	var _max = sprite_get_number(sit)-1
	if image_index >= _max{
		image_index = _max;
		}
	}





