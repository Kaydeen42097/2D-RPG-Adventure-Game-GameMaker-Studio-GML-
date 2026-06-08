if spd = 0 && sprite_index != spr_mechanic_npc_right_spk{image_index = 0}

if num < 19.9{
	num = random(20)
	}

if num >= 19.9{
	sprite_index = spr_mechanic_npc_right_spk
	if image_index >= 8{sprite_index = spr_mechanic_npc_right; num = 1}
	}






