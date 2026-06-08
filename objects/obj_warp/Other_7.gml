room_goto(targetrm);
obj_player.x = targetx;
obj_player.y = targety;
obj_player.face = targetface;

if global.natalie_party = true && instance_exists(obj_natalie){
	obj_natalie.x = targetx;
	obj_natalie.y = targety;
}

image_speed = -1;