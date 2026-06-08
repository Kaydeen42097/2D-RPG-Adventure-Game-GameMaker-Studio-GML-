//scene checker (the first option can be replaced with another variable or something (like if the player were
//to walk over a certain thingy, then that would also set off a scene)

//if room = rm_main_town_2 && suit_shrimp_cutscene[0] = false{alarm[0] = 30; suit_shrimp_cutscene[0] = true}

//--------------------------------individual scenes-------------------------------//

//-----first suit shrimp cutscene -----//
//this moves the camera back after the textbox has disappeared
//(this can be applied to additional cutscenes, too)
if suit_shrimp_cutscene_check[0] = false{
	if instance_exists(obj_textbox){
		_check_end = true
		}
	if !instance_exists(obj_textbox) && _check_end = true{
		obj_camera.movement = false; //replace this with a timeline in order to make it a slow movement
		suit_shrimp_cutscene_check[0] = true
		_check_end = false;
		show_debug_message(random(1))
		}
	}






