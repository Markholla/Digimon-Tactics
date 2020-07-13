control = o_player1;
enemy = o_player2;
turns = 1;
refresh_gold = 2;
BATTLE = false;

//CARD DISPLAY
display = noone;

display_movement = false;
display_x = -500;
display_x2 = -200;
display_y = -200;
display_xi = -500;


Zone[48] = 0;

pause_id = instance_create_depth(x,y,-300,o_pause);

phase_id = instance_create_depth(x,y,-300,o_phase);
phase_x = 0;
phase_movement = false;

card_id = instance_create_depth(x,y,-300,o_card);

shop_movement = false;
shop_x = -200;

gold_movement = false;
gold_x = -400;
gold_y = -600;

bin_false = false;
gold_id = instance_create_depth(x,y,-300,o_binroll);

level_y = 65;
player_x = 0;