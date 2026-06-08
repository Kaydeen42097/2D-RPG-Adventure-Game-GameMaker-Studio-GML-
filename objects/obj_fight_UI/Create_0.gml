width = 96;
height = 98;

offset_x = -90
offset_y = 60

op_border = 20; //space between border
op_space = 16; //space between options

pos = 0;

//options
option[0, 0] = "Attack";
option[0, 1] = "Defend";
option[0, 2] = "Item";
option[0, 3] = "Run";

//attack
option[1,0] = "Attack";
option[1,1] = "Sp. Atk";
option[1,2] = "Back";

op_length = 0;
menu_level = 0;

//have it repeat to draw all the stuff, make turns (with an array cause it looks like I know what I'm doing that way)
//if turn equals like turn[0] then it can be like if turn[0] == "player" then have the stuff in a script with a switch
//that way all the stuff can be in a script or smth I guess then when the player selects a move or smth then the turn
//changes so then turn[0] can update to "player_2", which can be elseware to "natalie", and do the case again
//have the sp. moves and character image be determined, so turn[0] can aquaint (sry idk how to spell :P) to what
//image is being drawn, again can be edited within a seperate function (like the dialog stuff). Also, bc everything
//abt each turn is going to be decieded in the function, atk and defense and stuff can be determined in said function
//and can be updated ig (and since its an array it can be like turn[stuff] to do stuff...I think... ...
//uhh yeah I hope this ends up working...



