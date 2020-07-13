var txt_control;
	if (control == o_player1)
		txt_control = "Player1";
	else
		txt_control = "Player2";

draw_text_transformed(20,10, txt_control, 2, 2, 0);
draw_text_transformed(20,50, control.phase + " Phase", 2, 2, 0);
draw_text_transformed(20,90, string(turns) + " turn", 2, 2, 0);

///DISPLAY PLAYER
#region PLAYER

draw_sprite_ext(s_playerLevel, 0, 80 - 800 -  player_x, 597 + level_y, 0.3, 0.3, 0, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(f_cardName);
draw_set_color(c_dkgray);
if (control.Level == 10)
	{
	var lvl = "MAX";
	var sz = 1;
	}
else
	{
	var lvl = string(control.Level);
	var sz = 1.2;
	}
	
draw_text_transformed(80 - 800 -  player_x, 490 + level_y, "Level: " + lvl, sz, sz, 0);
draw_set_color(noone);

if (control.main_selected != noone)
	{
	if (control.start_total + control.field_total + 1 > control.Level)
		draw_set_color(c_red);
	else
		draw_set_color(c_white);
	
	draw_text_transformed(80 - 800 -  player_x, 533 + level_y, string(control.start_total + control.field_total + 1) + "/" + string(control.Level), 1.6, 1.6, 0);
	//show_debug_message(string(control.start_total + control.field_total + 1) + "/" + string(control.Level));
	}
else if (position_meeting(mouse_x, mouse_y, control))
	{
	draw_set_color(c_white);
	draw_text_transformed(80 - 800 -  player_x, 533 + level_y, string(control.start_total + control.field_total) + "/" + string(control.Level), 1.6, 1.6, 0);
	}
	
draw_set_halign(noone);
draw_set_font(noone);
draw_set_color(noone);

draw_sprite_ext(control.char, (control.Health != control.Health_Disp), 80 - 800 -  player_x, 640, 0.32, 0.32, 0, c_white, 1);
draw_sprite_ext(s_playerstats_back,0, 136 - 800 -  player_x, 680, 0.3, 0.3, 0, c_white, 1);

var hpPerc = (control.Health_Disp/control.Max_Health);
var dsPerc = (control.DS_Disp/control.Max_DS);
var hpRefill = (control.Health_Red/control.Max_Health);
var dsRefill = (control.DS_Red/control.Max_DS);

if (hpPerc <= 0.2)
	var sub = 2;
else
	var sub = 0;

draw_sprite_part_ext(s_playerhealth,sub + 1, 0, 0, 760*hpRefill, 97, 140 - 800 -  player_x, 651.5, 0.3, 0.3, c_white, 1);
draw_sprite_part_ext(s_playerhealth,sub, 0, 0, 760*hpPerc, 97, 140 - 800 -  player_x, 651.5, 0.3, 0.3, c_white, 1);

draw_sprite_part_ext(s_playermana,sub + 1, 0, 0, 729*dsRefill, 44, 136 - 800 -  player_x, 635, 0.3, 0.3, c_white, 1);
draw_sprite_part_ext(s_playermana,sub, 0, 0, 729*dsPerc, 44, 136 - 800 - player_x, 635, 0.3, 0.3, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(f_cardName);
draw_text_transformed(240 - 800 - player_x, 656, string(round(control.Health_Disp)), 1.2, 1.2, 0);
draw_set_halign(noone);
draw_set_font(noone);


draw_sprite_ext(s_playerstats,0, 134 - 800 -  player_x, 685, 0.3, 0.3, 0, c_white, 1);
draw_sprite_ext(s_playerHud, 0, 80 - 800 -  player_x, 640, 0.3, 0.3, 0, c_white, 1);

var xpPerc = (control.XPdisp/control.maxXPdisp)
draw_sprite_part_ext(s_playerXP, 0, 0, 0, (388), 388*xpPerc, 22 - 800 - player_x, 699, 0.3, -0.3, c_white, 1);

///OTHER PLAYER
draw_sprite_ext(s_playerLevel, 0, 1200 + 800 + player_x, 57, 0.3, -0.3, 0, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(f_cardName);
draw_set_color(c_dkgray);
if (enemy.Level == 10)
	{
	var lvl = "MAX";
	var sz = 1;
	}
else
	{
	var lvl = string(enemy.Level);
	var sz = 1.2;
	}
	
draw_text_transformed(1200 + 800 + player_x, 147.5, "Level: " + lvl, sz, sz, 0);
draw_set_color(noone);
	
draw_sprite_ext(enemy.char, (enemy.Health != enemy.Health_Disp), 1200 + 800 + player_x, 80, -0.32, 0.32, 0, c_white, 1);
draw_sprite_ext(s_playerstats_back,0, 1144 + 800 + player_x, 82, -0.3, 0.3, 0, c_white, 1);

var hpPerc = (enemy.Health_Disp/enemy.Max_Health);
var dsPerc = (enemy.DS_Disp/enemy.Max_DS);
var hpRefill = (enemy.Health_Red/enemy.Max_Health);
var dsRefill = (enemy.DS_Red/enemy.Max_DS);

if (hpPerc <= 0.2)
	var sub = 2;
else
	var sub = 0;

draw_sprite_part_ext(s_playerhealth,sub + 1, 0, 0, 760*hpRefill, 97, 1140 + 800 + player_x, 53.5, -0.3, 0.3, c_white, 1);
draw_sprite_part_ext(s_playerhealth,sub, 0, 0, 760*hpPerc, 97, 1140 + 800 + player_x, 53.5, -0.3, 0.3, c_white, 1);

draw_sprite_part_ext(s_playermana,sub + 1, 0, 0, 729*dsRefill, 44, 1144 + 800 + player_x, 37, -0.3, 0.3, c_white, 1);
draw_sprite_part_ext(s_playermana,sub, 0, 0, 729*dsPerc, 44, 1144 + 800 + player_x, 37, -0.3, 0.3, c_white, 1);

draw_set_halign(fa_middle);
draw_set_font(f_cardName);
draw_text_transformed(1040 + 800 + player_x, 58.5, string(round(enemy.Health_Disp)), 1.2, 1.2, 0);
draw_set_halign(noone);
draw_set_font(noone);

draw_sprite_ext(s_playerstats,0, 1146 + 800 + player_x, 87, -0.3, 0.3, 0, c_white, 1);
draw_sprite_ext(s_playerHud, 0, 1200 + 800 + player_x, 80, 0.3, 0.3, 0, c_white, 1);

var xpPerc = (enemy.XPdisp/enemy.maxXPdisp)
draw_sprite_part_ext(s_playerXP, 0, 0, 0, (388), 388*xpPerc, 1142 + 800 + player_x, 139, 0.3, -0.3, c_white, 1);

#endregion

///DISPLAY SHOP
#region SHOP
draw_sprite_ext(s_goldbar, 0, 1142.5 - gold_x, 650, 1, 1, 0, c_white,1);
draw_set_halign(fa_right);
draw_set_font(f_cardName);
draw_text_transformed(1045.5 - gold_x, 636, string(round(control.gold_disp)), 2, 2, 0);
draw_text_transformed(1086.5 - gold_x, 647, "    bits", 1.2, 1.2, 0);
draw_set_halign(noone);
draw_set_font(noone);


draw_sprite_ext(s_binroll, (gold_id.state == "sell"), 1176.5 - gold_x/2, 676 - gold_y - gold_id.in, 0.9, 0.9, 0, c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(f_cardName);
if (gold_id.state == "refresh")
	{
	if (refresh_gold >= 10)
		var _y = 3;
	else
		var _y = -1;
	
	draw_text_transformed(1172 - gold_x/2, 537 - gold_y - gold_id.in, "- " + string(refresh_gold), -1.5, -1.5, 90);
	draw_text_transformed(1172 - gold_x/2, 582 + _y - gold_y - gold_id.in, "bits", -1, -1, 90);
	}
else
	{	
	if (control.main_selected != noone)
		{
		if (control.main_selected.gold >= 10)
			var _y = 4;
		else
			var _y = -1;
			
		draw_text_transformed(1172 - gold_x/2, 537 - gold_y - gold_id.in, "+ " + string(control.main_selected.gold), -1.5, -1.5, 90);
		draw_text_transformed(1172 - gold_x/2, 582 + _y - gold_y - gold_id.in, "bits", -1, -1, 90);	
		}
		
	}
draw_set_halign(noone);
draw_set_valign(noone);
draw_set_font(noone);
#endregion

///DISPLAY PHASE
draw_sprite_ext(s_phase, phase_id.ph + phase_id.in, 1464 + phase_x, 704, 0.16, 0.16, 0, c_white, 1);
draw_sprite_ext(s_ui, 0, 1483 + phase_x, 723.5, 1.1, 1.1, 0, c_white, 1);

///DISPLAY CARDS
#region DISPLAY CARD
var _x = 127;
var _y = 520;

if (display != noone)// and !(BATTLE)
	{
		draw_sprite_ext(s_card_item, 0, _x + 94 + display_xi, _y - 320, 0.75, 0.75, 0, c_white, 1);
		
		draw_sprite_ext(s_card_item, 0, _x + 94 + display_xi, _y - 220, 0.75, 0.75, 0, c_white, 1);
		
		draw_sprite_ext(s_card_item, 0, _x + 94 + display_xi, _y - 120, 0.75, 0.75, 0, c_white, 1);
		
		draw_sprite_ext(s_card_special, 0, _x + 12 + display_x, _y - 90 + display_y, 0.75, 0.75, 0, c_white, 1);
		
	//if point_in_rectangle(mouse_x, mouse_y, 150, 480, 400, )
	
	//if (control.phase != "Start")
		{
		var card = display.card;
		var fam = display.family_card;
		
		draw_sprite_ext(card, 0, _x + 14 + display_x, _y - 12, 0.75, 0.75, 0, c_white, 1);
		draw_sprite_ext(fam, 0, _x + display_x, _y, 0.75, 0.75, 0, c_white, 1);
		
		if (display.move_state == "finished") or (display.attack_state == "finished")
			draw_sprite_ext(s_hl_card, 2, _x + display_x2, _y, 0.75, 0.75, 0, c_white, 1);
		else
			draw_sprite_ext(s_hl_card, (control == display.player), _x + display_x2, _y, 0.75, 0.75, 0, c_white, 1);
		
		if (display.attribute == "Vaccine")
			var type = 2;
		else if (display.attribute == "Virus")
			var type = 1;
		else if (display.attribute == "Data")
			var type = 3;
		else
			var type = 0;
			
		draw_sprite_ext(s_attribute, type, _x - 90 + display_x, _y - 68, 0.75, 0.75, 0, c_white, 1);
		
		if (display.type == "Soldier")
			var type = s_Soldier;
		else if (display.type == "Warrior")
			var type = s_Warrior;
		else if (display.type == "Assassin")
			var type = s_Assassin;
		else if (display.type == "Ranger")
			var type = s_Ranger;
		else if (display.type == "Charger")
			var type = s_Charger;
		else if (display.type == "Sorcerer")
			var type = s_Sorcerer;
		else if (display.type == "Warlock")
			var type = s_Warlock
		else if (display.type == "Palladin")
			var type = s_Palladin;
		else if (display.type == "Aeronaut")
			var type = s_Aeronaut;
		else if (display.type == "Raider")
			var type = s_Raider;
		else
			var type = s_Soldier
			
		draw_sprite_ext(type, 0, _x + 110 + display_x, _y - 68, 0.75, 0.75, 0, c_white, 1);
		
		
		#region NAME
		draw_set_font(f_cardName);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		if (string_length(display.name) > 15)
			var size = 0.8;
		else
			var size = 1;
		draw_text_transformed(_x + 8 + display_x,_y - 356.5, display.name, size, size, 0);
		
		var size = 0.55;
		draw_text_transformed(_x + 8 + display_x,_y - 335.5, display.level, size, size, 0);
			
		draw_set_font(f_uAttack);
		draw_set_alpha(0.8);
		
		if (display.atk > display.r_atk)
			draw_set_color($a9a9ff);
		else if (display.atk < display.r_atk)
			draw_set_color($ffe7a9);
		else
			draw_set_color(c_white);
		
		if (display.atk >= 10)
			draw_text_transformed(_x - 106 + display_x2,_y - 227, display.atk, 0.8, 0.8, 0);
		else
			draw_text_transformed(_x - 106 + display_x2,_y - 227, display.atk, 1, 1, 0);
			
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_set_font(noone);
		draw_set_halign(noone);
		draw_set_valign(noone);
		#endregion
		
		#region HEALTH and MANA
		var _x = 4 + display_x2;
		var _y = 231.5;
		var hp = display.hp_disp
		var mhp = display.max_hp;
		var hp_perc = (hp/mhp);
		var hp_refill = (display.hp_red/mhp);
		
		if (hp <= 0.3*mhp)
			{
			var	col = $5f5fff;
			var sub = 2;
			}
		else
			{
			var col = c_white;
			var sub = 0
			}
		
		
		//draw_sprite_part_ext(s_card_health, 6, 0, 0, 272, 28, _x, _y-1, 0.7, 0.7, c_white, 0.7);
		draw_sprite_part_ext(s_card_health, sub + 1, 0, 0, 26, 195*hp_refill, _x, _y+1, 0.75, -0.75, c_white, 1);
		draw_sprite_part_ext(s_card_health, sub, 0, 0, 27, 195*hp_perc, _x, _y, 0.75, -0.75, c_white, 1);
		
		var _y = 355.5;
		var mp = display.mp_disp
		var mmp = display.max_mp;
		var mp_perc = (mp/mmp);
		var mp_refill = (display.mp_red/mmp);
		
		draw_sprite_part_ext(s_card_mana, 1, 0, 0, 26, 207*mp_refill, _x, _y, 0.75, 0.75, c_white, 1);
		draw_sprite_part_ext(s_card_mana, 0, 0, 0, 26, 207*mp_perc, _x, _y, 0.75, 0.75, c_white, 1);
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_right);
		draw_set_font(f_cardName);
		
		var mDisp = 1.1;
		
		draw_text_transformed_color(_x+21.5,_y - 138, string(round(hp)) + "/" + string(mhp), 1.1, 0.88, 90, col, col, col, col, 0.8);
		draw_set_halign(fa_right);
		draw_text_transformed_color(_x+21.5,_y + 15, string(round(mp_perc*100)) + "%", 1*mDisp, 0.8*mDisp, 90, c_white, c_white, c_white, c_white, 0.8);
		
		draw_set_halign(noone);
		draw_set_valign(noone);
		draw_set_font(noone);
		
		
		#endregion
		
		}
	}

/*else if (control.move_selected != noone)
	{
	if (control.phase != "Start")
		{
		var card = control.move_selected.card;
		var fam = control.move_selected.family_card;
		var attack = control.move_selected.atk;
	
		var _x = 150;
		var _y = 480;
	
		draw_sprite_ext(s_hl_card, (control == control.move_selected.player), _x, _y, 0.7, 0.7, 0, c_white, 0.5);
		draw_sprite_ext(card, 0, _x, _y, 0.7, 0.7, 0, c_white, 1);
		draw_sprite_ext(fam, 0, _x, _y, 0.7, 0.7, 0, c_white, 1);
		
		#region NAME
		draw_set_font(f_cardName);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
		draw_set_alpha(0.8);
		draw_text_transformed(_x,_y - 72.5, control.move_selected.name, 1.02, 1.02, 0);
		draw_set_font(f_uAttackS);
		
		if (attack >= 10)
			draw_text_transformed(66.5,176, attack, 0.8, 0.8, 0);
		else
			draw_text_transformed(66.5,176, attack, 1.1, 1.1, 0);
			
		draw_set_alpha(1);
		draw_set_font(noone);
		draw_set_halign(noone);
		draw_set_valign(noone);
		#endregion
		}
	}*/
#endregion