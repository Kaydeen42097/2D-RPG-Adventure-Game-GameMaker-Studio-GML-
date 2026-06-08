// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enable() {
	obj_natalie.enableded = true;
	obj_natalie.image_alpha = 1;
	show_debug_message("Enable run");
}

function disable() {
	obj_natalie.enableded = false;
	obj_natalie.alarm[0] = 1;	
	show_debug_message("Disable run");
}

function start_animation(_sequence) {
	obj_natalie.active_animation = _sequence;
	obj_natalie.sequence_layer = layer_create(obj_natalie.depth, "layer1");
	if layer_exists("layer1") {show_debug_message("uwu")}
	obj_natalie.active_sequence = layer_sequence_create(obj_natalie.sequence_layer, obj_natalie.x, obj_natalie.y, _sequence);
	layer_sequence_xscale(obj_natalie.active_sequence, obj_natalie.image_xscale);
	layer_sequence_yscale(obj_natalie.active_sequence, obj_natalie.image_yscale);
	show_debug_message("Start animation run");
	
	disable();
	
}

function check_animation() {
	//show_debug_message("Check animation run")
	if (obj_natalie.active_sequence == undefined) return;
	
	if layer_sequence_is_finished(obj_natalie.active_sequence)
	//if !(obj_natalie.active_sequence == undefined) 
		{
		layer_sequence_destroy(obj_natalie.active_sequence);
		layer_destroy(obj_natalie.sequence_layer);
		
		show_debug_message("Check animation (true)");
		
		obj_natalie.active_animation = -1;
		obj_natalie.active_sequence = -1;
		obj_natalie.sequence_layer = -1;
		
		enable();
		
	}
}
