if spd = 0{image_speed = 0}
else {image_speed = 1}

if face = UP{sprite_index = spr_up}
if face = DOWN{sprite_index = spr_down}
if face = RIGHT{sprite_index = spr_right}
if face = LEFT{sprite_index = spr_left}

if spd != 0{
	
	if face = UP{y -= spd/spd_dec}
	if face = DOWN{y += spd/spd_dec}
	if face = RIGHT{x += spd/spd_dec}
	if face = LEFT{x -= spd/spd_dec}
	
	}




