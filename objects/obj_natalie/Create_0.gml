sprite[0] = spr_natalie_right;//right
sprite[1] = spr_natalie_up;//up
sprite[2] = spr_natalie_left;//left
sprite[3] = spr_natalie_down//down

hp = 10
max_hp = 15

mana = 20
max_mana = 30

face = UP;
getvalue = true;
player_x = 0;
player_y = 0;
player_face = 0;

//global.player_speed = 0;

//sequence stuff :p

enableded = true;

active_animation = -1;
sequence_layer = -1;
active_sequence = -1;

//function enable() {
//	obj_natalie.enableded = true;
//	obj_natalie.image_alpha = 1;
//}

//function disable() {
//	obj_natalie.enableded = false;
//	obj_natalie.alarm[0] = 1;	
//}

//function start_animation(_sequence) {
//	obj_natalie.active_animation = _sequence;
//	obj_natalie.sequence_layer = layer_create(obj_natalie.depth);
//	obj_natalie.active_sequence = layer_sequence_create(obj_natalie.sequence_layer, obj_natalie.x, obj_natalie.y, _sequence);
//	layer_sequence_xscale(obj_natalie.active_sequence, obj_natalie.image_xscale);
//	layer_sequence_yscale(obj_natalie.active_sequence, obj_natalie.image_yscale);
	
//	disable();
//}

//function check_animation() {
//	if (obj_natalie.active_sequence == -1) return;
	
//	if (layer_sequence_is_finished(obj_natalie.active_sequence)) {
//		layer_sequence_destroy(obj_natalie.active_sequence);
//		layer_destroy(obj_natalie.sequence_layer);
//		enable();
		
//		obj_natalie.active_animation = -1;
//		obj_natalie.active_sequence = -1;
//		obj_natalie.sequence_layer = -1;
		
//	}
//}

