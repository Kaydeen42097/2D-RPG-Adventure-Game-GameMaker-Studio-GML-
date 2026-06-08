global.font_main = font_add_sprite(spr_main_font, 32, true, 1);
global.natalie_party = false;
global.money = 500

global.npc_found[0] = true;

inventory = new Inventory();

//start items

inventory.item_add("Wood", 3, spr_item_wood, "wood...it's wood...",function()
	{
	
	//player health +10
	scr_state_item_use()
	
	show_debug_message("wood");
	});

inventory.item_add("Sus", 10, spr_among_us, "red kinda sus, ngl...ok I need to make this longer to test the automatic text thing", function(){ 
	
	//sp +5
	scr_state_item_use()
	
	show_debug_message("sus")
	});

#region Hidden
inventory.item_add("uwu", 0, spr_uwu, "ara ara", function(){ 

	//sp +10
	scr_state_item_use()
	
	show_debug_message("uwu")
	});
inventory.item_subtract("uwu", 0)

inventory.item_add("Jum's Gum", 0, spr_jumsgum, "A packet of Jum's Gum, originally called (but pronounced the same way), Gum's Gum.", function(){ 

	//sp +10
	scr_state_item_use()
	
	show_debug_message("gum")
	});
inventory.item_subtract("Jum's Gum", 0)
#endregion

shop_open = false;

party = new Party();

party.party_add("Player", spr_player_speak_normal, 10, 20, 7, 12, 2)
party.party_add("grah", spr_librarian_speak, 12, 24, 8, 9, 3)
party.party_add("Joe", spr_joe_profile, 9, 10, 8, 9, 1)
//party.party_subtract("Natalie") NOTE: party subtract, not remove
//party.hp_change("Player", 10, "+")