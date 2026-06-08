if !instance_exists(obj_bird){
	var _room_end = room_width
	var _room_top = 50
	
	instance_create_depth(_room_end, _room_top, 2460, obj_bird)
	
	var _random_bird_sprite =  random(1)
	var _bird_sprite = spr_bird_1
	if _random_bird_sprite <= 1 && _random_bird_sprite >= 0{
		_bird_sprite = spr_bird_1
		}

	obj_bird.sprite_index = _bird_sprite
	}








