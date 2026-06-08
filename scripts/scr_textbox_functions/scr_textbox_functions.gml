function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variables for every letter/character
	for (var c = 0; c < 500; c++)
		{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
		}
	
	txtb_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	
	snd[page_number] = snd_speak_low_synth;
}


//--------------------Text VFX---------------------//
/// @param 1st_char
/// @param 2nd_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	for (var c = _start; c <= _end; c++)
		{
		col_1[c, page_number-1] = _col1;
		col_2[c, page_number-1] = _col2;
		col_3[c, page_number-1] = _col3;
		col_4[c, page_number-1] = _col4;
		}
}

function scr_text_colored(_col1, _col2, _col3, _col4){
			
	}

	
	
	
	//if 	_check_char == "(" { _start_color = true }
	//if _start_color == true {
		
	//	if _check_char == ")" { _start_color = false }
		
	//	col_1[c, page_number-1] = _col1;
	//	col_2[c, page_number-1] = _col2;
	//	col_3[c, page_number-1] = _col3;
	//	col_4[c, page_number-1] = _col4;
		
		
	//	}
	



/// @param 1st_char
/// @param 2nd_char
function scr_text_float(_start, _end){
	for (var c = _start; c <= _end; c++)
		{
		float_text[c, page_number-1] = true
		}		
}


/// @param 1st_char
/// @param 2nd_char
function scr_text_shake(_start, _end){
	for (var c = _start; c <= _end; c++)
		{
		shake_text[c, page_number-1] = true
		}		
}


/// @param text
///@param [character]
///@param [side]
///@param [effect]
///@param [effect]
function scr_text(_text){
	
	//check_animation()
	
	scr_set_defaults_for_text();
		
	text[page_number] = _text;	
	
	
	//get character info
	if argument_count > 1 {
		switch(argument[1])
			{
			
			#region TESTS
			//player
			case "player-x":
				speaker_sprite[page_number] = spr_player_spk;
				txtb_spr[page_number] = spr_textbox_player;
				snd[page_number] = snd_speak_low_synth; //ik the sounds suck i made this in chrome music maker
				break; //NOTICE: SOUNDS (bc of an editing software I used :P) ARE CURRENTLY FOR HOME USE ONLY
			case "player-ew":
				speaker_sprite[page_number] = spr_player_spk_ew;
				txtb_spr[page_number] = spr_textbox_player;
				snd[page_number] = snd_speak_low_synth;
				break;
				
			//lilg
			case "lilg":
				speaker_sprite[page_number] = spr_lilg_spk;
				txtb_spr[page_number] = spr_textbox_lilg;
				snd[page_number] = snd_speak_low_string;
				break;
			
			case "robin_worried":
				speaker_sprite[page_number] = spr_player_speak_worried;
				txtb_spr[page_number] = spr_textbox_player;
				snd[page_number] = snd_speak_low_synth;
				break;
				
			case "robin_happy":
				speaker_sprite[page_number] = spr_player_speak_happy;
				txtb_spr[page_number] = spr_textbox_player;
				snd[page_number] = snd_speak_low_synth;
				break;
				
			case "natalie_normal":
				speaker_sprite[page_number] = spr_natalie_speak_normal;
				txtb_spr[page_number] = spr_textbox_player;
				snd[page_number] = snd_speak_low_synth;
				break;
				
			#endregion
			
			case "player":
				speaker_sprite[page_number] = spr_player_speak_normal;
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; //ik the sounds suck i made this in chrome music maker
				break; //NOTICE: SOUNDS (bc of an editing software I used :P) ARE CURRENTLY FOR HOME USE ONLY
			
			case "librarian":
				speaker_sprite[page_number] = spr_librarian_speak;
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; //ik the sounds suck i made this in chrome music maker
				break; //NOTICE: SOUNDS (bc of an editing software I used :P) ARE CURRENTLY FOR HOME USE ONLY
				
			case "mechanic":
				speaker_sprite[page_number] = spr_mechanic_speak;
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; 
				
			case "mechanic-angy":
				speaker_sprite[page_number] = spr_mechanic_speak_angy;
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; 
			
			case "basket":
				speaker_sprite[page_number] = spr_basket_speak;
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; //NOTICE: SOUNDS ARE CURRENTLY FOR HOME USE ONLY
				
			case "random":
				speaker_sprite[page_number] = spr_random_npc_speak
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; //NOTICE: SOUNDS ARE CURRENTLY FOR HOME USE ONLY
				
			case "crystal":
				speaker_sprite[page_number] = spr_crystal_speak
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; //NOTICE: SOUNDS ARE CURRENTLY FOR HOME USE ONLY
				
			case "suit shrimp":
				speaker_sprite[page_number] = spr_suit_shrimp_speak
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; //NOTICE: SOUNDS ARE CURRENTLY FOR HOME USE ONLY
				
			case "moth":
				speaker_sprite[page_number] = spr_moth_speak
				txtb_spr[page_number] = spr_textbox;
				snd[page_number] = snd_speak_low_synth; 
				break; //NOTICE: SOUNDS ARE CURRENTLY FOR HOME USE ONLY
			
			}
		}
		
		//side character is on
		if argument_count > 2 {
			speaker_side[page_number] = argument[2];
			}
	
		//auto-effect is enabled
		#region Effect #1
		if argument_count > 3 { 
			
			//----auto-color----//
			if is_string(argument[3]) = false{
			
				//length of the page's text
				var _text_length = string_length(_text);
	
				for (var i = 0; i < _text_length; i++){
		
					//starting variables
						//offset indicates lost characters through the removal of ()
					if i == 0 { 
						//these variables are a mess but you get the idea
						//also I think this method is a bit unconventional but whatever 
						var _start_color = false; 
						var _start_color_2 = false;
						var _start_effect = false;
						
						var _start = 0;
						var _start_2 = 0;
						var _start_3 = 0;
						
						var _end = 0;
						var _end_2 = 0;
						var _end_3 = 0;
						
						var _offset = -2; 
						
						var _first_brac = false; 
						var _ex_offset = 0;
						}
					
					//checks the "current" character
					var _check = string_char_at(text[page_number], i)
		
					//checks for first "(" is a color phrase and "[" in an effect phrase (or "{" for a second color phrase)
					if _check = "(" { _start = i; _start_color = true; _end = 0; _end_2 = 0; _end_3 = 0; _offset += 2}
					if _check = "[" { _start_2 = i; _start_effect = true; _end = 0; _end_2 = 0; _end_3 = 0; _offset += 2}
					if _check = "{" { _start_3 = i; _start_color_2 = true; _end = 0; _end_2 = 0; _end_3 = 0; _offset += 2}
		
					//after "(" is detected coloring begins until ending ")" is found
					if _start_color == true{
						if _check == ")" { _end = i;} 
						for (var c = _start-1 - _offset; c < _end-2 - _offset; c++){
							col_1[c, page_number] = argument[3];
							col_2[c, page_number] = argument[3];
							col_3[c, page_number] = argument[3];
							col_4[c, page_number] = argument[3];
							}
						}
		
					if _start_effect == true{
						if _check == "]" { _end_2 = i;} 
						for (var b = _start_2-1 - _offset; b < _end_2-2 - _offset; b++){
							shake_text[b, page_number] = true;
							}
						}
					
					if argument_count > 4{
						if _start_color_2 == true{
							if _check == "}" { _end_3 = i;} 
							for (var a = _start_3-1 - _offset; a < _end_3-2 - _offset; a++){
								col_1[a, page_number] = argument[4];
								col_2[a, page_number] = argument[4];
								col_3[a, page_number] = argument[4];
								col_4[a, page_number] = argument[4];
								}
							}
						}
		
					//if any other characters are going to be added, put them before that thing (I may have made such a mistake :P)
					}
				
					
					//deletes the () in the statement
					for (var i = 0; i < string_length(_text); i++){
						var _char = string_char_at(_text, i) 
						if _char == "(" || _char == ")" {
							_text = string_delete(_text, i, 1)
							}
					}
					
					//deletes the [] in the statement
					for (var i = 0; i < string_length(_text); i++){
						var _char = string_char_at(_text, i) 
						if _char == "[" || _char == "]" {
							_text = string_delete(_text, i, 1)
							}
					}
					
					//deletes the {} in the statement
					for (var i = 0; i < string_length(_text); i++){
						var _char = string_char_at(_text, i) 
						if _char == "{" || _char == "}" {
							_text = string_delete(_text, i, 1)
							}
					}
	
					text[page_number] = _text;	
				
				}
				
		}
		#endregion
		
		#region Effect #2
		/*
		if argument_count > 4 { 
			
			//----auto-color----//
			if is_string(argument[4]) = false{
			
				//length of the page's text
				var _text_length = string_length(_text);
	
				for (var i = 0; i < _text_length; i++){
		
					//starting variables
						//offset indicates lost characters through the removal of ()
					if i == 0 { var _start_color = false; var _start = 0; var _offset = -2; var _end = 0;}
					var _check = string_char_at(text[page_number], i)
		
					//checks for first ( is a color phrase
					if _check = "[" { _start = i; _start_color = true; _end = 0; _offset += 2} 
		
					//after ( is detected coloring begins until ending ) is found
					if _start_color == true{
						if _check == "]" { _end = i;} 
						for (var c = _start-1 - _offset; c < _end-1 - _offset; c++){
							col_1[c, page_number] = argument[3];
							col_2[c, page_number] = argument[3];
							col_3[c, page_number] = argument[3];
							col_4[c, page_number] = argument[3];
							}
						}
		
					}
				
					//deletes the () in the statement
					for (var i = 0; i < string_length(_text); i++){
						var _char = string_char_at(_text, i) 
						if _char == "[" || _char == "]" {
							_text = string_delete(_text, i, 1)
							}
					}
	
					text[page_number] = _text;	
				
				}
				
				
				//----auto-shake----//
				if is_string(argument[4]) = true{
					
					if argument[4] = "shake"{
						
						//length of the page's text
						var _text_length = string_length(_text);
						
						for (var i = 0; i < _text_length; i++){
		
							//starting variables
								//offset indicates lost characters through the removal of ()
							if i == 0 { var _start_effect = false; var _start = 0; var _offset = -2; var _end = 0;}
							var _check = string_char_at(text[page_number], i)
		
							//checks for first ( is a color phrase
							if _check = "[" { _start = i; _start_effect = true; _end = 0; _offset += 2} 
		
							//after ( is detected coloring begins until ending ) is found
							if _start_effect == true{
								if _check == "]" { _end = i;} 
								for (var c = _start-1 - _offset; c < _end-1 - _offset; c++){
									shake_text[c, page_number] = true;
									}
								}
		
							}
				
					//deletes the () in the statement
					for (var i = 0; i < string_length(_text); i++){
						var _char = string_char_at(_text, i) 
						if _char == "[" || _char == "]" {
							_text = string_delete(_text, i, 1)
							}
					}
	
					text[page_number] = _text;	
				
					}
						
						
			}
					
					
			
		}
		*/
		#endregion
		
	
	
		
	page_number++;
	
}


/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
	
}




function create_textbox(_text_id){
	with(instance_create_depth(0,0,-9999, obj_textbox))
			{
			scr_gamescript(_text_id);
			}
}

