//the npc movement is kinda rough rn ngl

/*

if alarm_start == false{
	var _num = random(16); 
	alarm_start = true; 
	alarm[0] = freq
	if _num >= 0{dir = UP}
	if _num >= 3{dir = RIGHT}
	if _num >= 6{dir = LEFT}
	if _num >= 9{dir = DOWN}
	if _num >= 12{dir = "stop"}
	}

if dir != "stop"{
	face = dir
	sprite_index = sprite[face]
	}

if dir == UP{xspd = 0; yspd = -1}
if dir == DOWN{xspd = 0; yspd = 1}
if dir == RIGHT{xspd = 1; yspd = 0}
if dir == LEFT{xspd = -1; yspd = 0}
if dir == "stop"{xspd = 0; yspd = 0}

//*collisions~*
if place_meeting(x + xspd, y, obj_wall) == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_wall) == true
	{
	yspd = 0;
	}

if xspd = 0 && yspd = 0{image_index = 0}

x += xspd*spd
y += yspd*spd

*/

if xspd = 0{ image_index = 0 }

depth = -bbox_bottom


