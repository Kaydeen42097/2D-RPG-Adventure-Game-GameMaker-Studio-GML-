right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_key = keyboard_check(vk_shift);

if movement = false{
	//x = obj_player.x
	//y = obj_player.y - 30

	//run
	if keyboard_check(vk_shift) == true 
		{
		movespd = 4
		}
	if keyboard_check(vk_shift) == false
		{
		movespd = 1
		}

	//get xspd and yspd
	xspd = (right_key - left_key) * movespd;
	yspd = (down_key - up_key) * movespd;

	//pause
	if instance_exists(obj_pauser)
		{
		xspd = 0;
		yspd = 0;
		}

	//*collisions~*
	
	if obj_player.x_collision = true{xspd = 0}
	if obj_player.y_collision = true{yspd = 0}
	
	//if obj_player.xspd = 0{xspd = 0}
	//if obj_player.yspd = 0{yspd = 0}
	
	//if place_meeting(x + xspd, y, obj_wall) == true
	//	{
	//	xspd = 0;
	//	}
	//if place_meeting(x,  y + yspd, obj_wall) == true
	//	{
	//	yspd = 0;
	//	}
	
	if ev_room_end{
		x = obj_player.x
		y = obj_player.y - 30
		}

	//move the player
	x += xspd;
	y += yspd;
	
	}
	
depth = -100000000

if movement = true{
	x = x + (hspd/2)
	y = y + (vspd/2)
	}

//camera_set_view_pos(view_camera[0], clamp(camx,0,room_width - camw), clamp(camy,0,room_height - camh));

//movement means cutscene is active
	
//view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.06  
//view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.06  







