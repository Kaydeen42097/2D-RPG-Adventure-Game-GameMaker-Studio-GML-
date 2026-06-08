/// @param text_id
function scr_gamescript(_text_id){
	
switch(_text_id) {

#region extra
	#region //--pls ignore--//
//#region //---------TEST DIALOG-----------//
//	#region //-----------NPC 1 DIALOG--------------//
//	case "npc 1":
//		scr_text("Yo. I'm Player", "player");
//			scr_text_color(8,14, c_yellow, c_yellow, c_white, c_white)
//		scr_text("Sup player.", "lilg", -1);
//		scr_text("Hey, you like video games?", "player")
//		scr_text("Nah, not really.", "lilg", -1)
//		scr_text("Ew.....", "player-ew")
//			scr_text_shake(0, 8) //replace with float for floating text (quick note)
//		scr_text("Well, how about you?", "lilg", -1)
//			scr_option("Yuh", "npc 1 - yes");
//			scr_option("Nuh uh", "npc 1 - no");
//		break;
//		case "npc 1 - yes":
//			scr_text("That's cool I guess.", "lilg", -1)
//			break;
//		case "npc 1 - no":
//			scr_text("Huh. Then why'd you make that face earlier?", "lilg", -1)
//			break;
//	#endregion		
			
//	#region //---------desk_bedroom----------//
//	case "desk_bedroom":
//		scr_text("A desk with some papers and your laptop on it.");
//		scr_text("Use laptop?");
//			scr_option("Yes", "desk1 - yes");
//			scr_option("No", "desk1 - no");
//		break;
//		case "desk1 - yes":
//			//obj_desk.image_index = 1 //this is how u change image index through other objects
//			scr_text("....")
//			scr_text("It's dead.")
//			break;
//		case "desk1 - no":
//			instance_destroy(obj_textbox)
//			break;
//	#endregion
	
//	#region //----------tv_bedroom-----------//
//	case "tv_bedroom":
//		scr_text("It's your TV.")
//		scr_text("You wonder where you left the remote this time.")
//		break;
//	#endregion

//	#region //--------picture_bedroom--------//
//	case "picture_bedroom":
//		scr_text("It's a picture of you, your sister and your mom.")
//		scr_text("...")
//		break;
//	#endregion

//	#region //---------bed_bedroom-----------//
//	case "bed_bedroom":
//		scr_text("Your bed, both comfortable and warm.");
//		scr_text("That is to say, comfortable enough to spend the entirety of the morning in.");
//		break;
//	#endregion

//	#region //---------bed_bedroom2----------//
//	case "bed_bedroom2":
//		scr_text("Mother's bed.");
//		break;
//	#endregion
	
//	#region //--------closet_bedroom2--------//
//	case "closet_bedroom2":
//		scr_text("Mother's closet.");
//		scr_text("We aren't allowed inside.");
//		break;
//	#endregion
	
//	#region //--------picture_default--------//
//	case "picture_default":
//		scr_text("A picture.");
//		break;
//	#endregion
	
//	#region //--------sink_livingroom--------//
//	case "sink_livingroom":
//		scr_text("A sink.")
//		scr_text("Turn on sink?")
//			scr_option("Yes", "sink_livingroom - yes")
//			scr_option("No","sink_livingroom - no")
//		break;
//		case "sink_livingroom - yes":
//			obj_sink.image_index = 1;
//			scr_text("....")
//			scr_text("You shouldn't leave this running.")
//			break;
//		case "sink_livingroom - no":
//			instance_destroy(obj_textbox)
//			break; 
//	#endregion
	
//	#region //------microwave_livingroom-----//
//	case "microwave_livingroom":
//		scr_text("A microwave.");
//		scr_text("You don't need to use it right now.")
//		break;
//	#endregion
	
//	#region //-------fridge_livingroom-------//
//	case "fridge_livingroom":
//		scr_text("Half-empty-milk, eggs, bread and some water.")
//		scr_text("...You should probably help restock it soon.");
//		break;
//	#endregion
	
#endregion

	#region //---------natalie_intro---------//
	case "natalie_intro":
		scr_text("...", "natalie_normal", -1);
		scr_text("hi!", "robin_happy")
		scr_text("Look. My. Text...pauses, isn't that cool!?", "robin_happy")
		scr_text("Would you like me to follow u?", "natalie_normal", -1);
			scr_option("Yes", "natalie_intro_yes");
			scr_option("No", "natalie_intro_no");
		break;
		case "natalie_intro_yes":
			scr_text("Okay. Let's go then.", "natalie_normal", -1);
				scr_text_color(21, 28, c_aqua, c_aqua, c_white, c_white);
			global.natalie_party = true;
			instance_destroy(global.current_id);
			//obj_natalie.image_alpha = 1;
			break;
		case "natalie_intro_no":
			scr_text("No? Well, come talk to me if you change your mind.", "natalie_normal", -1);
			break;
	case "natalie_intro_no_retalk":
		scr_text("Ready to go?", "natalie_normal", -1);
			scr_option("Yes", "natalie_intro_yes_2");
			scr_option("No", "natalie_intro_no_2");
		break;
		case "natalie_intro_yes_2":
			scr_text("Okay. Let's go then.", "natalie_normal", -1);
				scr_text_color(21, 28, c_aqua, c_aqua, c_white, c_white);
			global.natalie_party = true;
			instance_destroy(global.current_id);
			break;
		case "natalie_intro_no_2":
			scr_text("No? Well, come talk to me if you change your mind.", "natalie_normal", -1);
			break;
		#endregion
		
	#region //--tree--//
		//case "A tree.":
		//	scr_text("A tree.")
		//	break;
		//case "Still a tree.":
		//	scr_text("Still a tree.")
		//	break;
		//case "Still still a tree":
		//	scr_text("How many times are you going to keep clicking??")
		//	break;
	#endregion
#endregion
	
	//--------------------------------------------GAME DIALOG--------------------------------------------//	
	
	case "bookshelf 1":
		scr_text("Full of children's books")
		scr_text("Read one?")
			scr_option("Yes", "bookshelf 1 - yes")
			scr_option("No", "bookshelf 1 - no")
		break;
		case "bookshelf 1 - yes":
			instance_create_depth(x, y, -9999, obj_book) with (obj_book) {text="bookshelf 1"}
			instance_destroy(obj_textbox);
			break;
		case "bookshelf 1 - no":
			instance_destroy(obj_textbox);
			break;
		
	case "librarian intro":
		scr_text("Hello!", "librarian")
		scr_text("Anything I can do for you?", "librarian")
			scr_option("Check out a book", "librarian intro - book")
			scr_option("What is this place?", "librarian intro - where")
			scr_option("Why are there no humans?", "librarian intro - people")
			scr_option("I'd like a map, please.", "librarian intro - map")
			scr_option("No, there's nothing.", "librarian intro - no")
		break;
		case "librarian intro - book":
			scr_text("Do you have your library card with you?", "librarian")
			scr_text("...No? Well, I'd get you one now, but I'm quite busy at the moment.", "librarian")
			scr_text("Come back tomorrow, and I'll get you one.", "librarian")
			break;
		case "librarian intro - map":
			scr_text("Sorry, we're out of maps at the moment.", "librarian")
			scr_text("-But we're getting some more next week, so come back then!", "librarian")
			break;
		case "librarian intro - where":
			scr_text("[Insert city name here], of course!", "librarian")
			break;
		case "librarian intro - people":
			scr_text("Oh, you must not be from around here.", "librarian")
			scr_text("Well, in [name], there are quite a few dangerous monsters around.", "librarian")
			scr_text("So, most normal humans don't want to live around here.", "librarian")
			scr_text("...Watch yourself if you go out into the forest.", "librarian")
			break;
		case "librarian intro - no":
			scr_text("Oh, alright. Come back if there's anything you need.", "librarian")
			break;
			
		case "npc conversation 1":
			scr_text("Please excuse the exessive and arbitrary text effects that you are about to witness.")
			scr_text("Though, check the code for how they work, its pretty neat!!1!")
			scr_text("...yeah, and [just] {yesterday}, I saw a (demon) raccoon [rifling] through (my) garbage can.", "basket", 1, c_red, c_yellow)
			scr_text("Seriously? Man, those scavengers are everywhere!", "mechanic")
			scr_text("Oh, I did hear, though, that the mayor is going to start giving (money) to anyone who {kills} those things.", "basket", 1, c_blue, c_red)
			scr_text("Especially the big ones that stay in the woods. Supposedly, it's a pretty big portion of their budget.", "basket")
			scr_text("Tsk. In this small town?", "mechanic-angy")
			scr_text("They'd be lucky to find someone willing to go [near] those woods at all...", "mechanic-angy", 1, c_white)
			break;
		
		case "random npc 1":
			scr_text("Hello! I'm a random NPC!", "random")
			break;
			
		case "crystal npc 1":
			scr_text("Hi. ...Who even are you?", "crystal")
			break;
		
		case "suit shrimp npc 1":
			scr_text("Good day. Would you be interested in buying some stock?", "suit shrimp")
			break;
			
		case "moth npc 1":
			scr_text("Hey!", "moth")
			scr_text("Wanna know how to get the last coin in (Stereo Madness)?", "moth", 1, c_blue)
				scr_option("Ye", "moth npc 1 - ye")
				scr_option("Naw", "moth npc 1 - naw")
			break;
			case "moth npc 1 - ye":
				instance_create_depth(x, y, 0, obj_video_player) //with X {}
				instance_destroy(self) //to have text play after this, it would need to be initiated elsewhere
				break;
			case "moth npc 1 - naw":
				scr_text("Aw, alright", "moth")
				break;
			
		case "suit shrimp - hello":
			scr_text("Good day, (Player).", "suit shrimp", 1, c_red)
			scr_text("I was in a cutscene, did you see?", "suit shrimp", 1)
			obj_cutscene.suit_shrimp_cutscene[0] = true
			break;
			
		case "bench cat 1":
			scr_text("A cat rests on the bench")
			scr_text("Sit down?")
				scr_option("Yes", "bench cat 1 - yes")
				scr_option("No", "bench cat 1 - no")
			break;
			case "bench cat 1 - yes":
				scr_text("...Actually, I don't want to wake it", "player")
				break;
			case "bench cat 1 - no":
				instance_destroy(self)
				break;
	
		

	}

}