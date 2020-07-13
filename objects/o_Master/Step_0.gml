/*if !(position_meeting(mouse_x, mouse_y, o_Zone))
	{
	mx = -1;
	mx = -1;
	}*/
if (control == o_player1)
	enemy = o_player2;
else
	enemy = o_player1;
	
if (control.phase == "Start")
	if (alarm[0] == -1)
		alarm[0] = 60;

if (display_movement) 
	{
	display_x = lerp(display_x, 0, 0.2);
	display_x2 = lerp(display_x2, 0, 0.3);
	if (display != noone) and (display.in_shop)
		display_y = lerp(display_y, 0, 0.1);
	else
	{
	if (card_id.in)
		{
		display_y = lerp(display_y, 0, 0.1);
		display_xi = lerp(display_xi, 0, 0.1);
		}
	else
		{
		display_y = lerp(display_y, -200, 0.2);
		display_xi = lerp(display_xi, -500, 0.2);
		}
	}
	}
else
	{
	display_x = lerp(display_x, -500, 0.1);
	display_x2 = lerp(display_x2, -200, 0.1);
	if (display != noone) and (display.in_shop)
		display_y = lerp(display_y, -200, 0.1);
	}
	
if (phase_movement)
	{
	phase_x = lerp(phase_x, -200, 0.2);
	player_x = lerp(player_x, -800, 0.2);
	}
else
	{
	phase_x = lerp(phase_x, 0, 0.2);
	player_x = lerp(player_x, 0, 0.08);
	}
	
if (shop_movement)
	{
	shop_x = lerp(shop_x, 0, 0.2);
	}
else
	{
	shop_x = lerp(shop_x, -200, 0.2);
	}
	
if (gold_movement) or (control.gold != control.gold_disp and !BATTLE)
	{
	gold_x = lerp(gold_x, 0, 0.2);
	if !(bin_false) and !(control.gold != control.gold_disp and !BATTLE)
		gold_y = lerp(gold_y, 0, 0.5);
	}
else
	{
	gold_x = lerp(gold_x, -400, 0.08);
	if !(bin_false)
		gold_y = lerp(gold_y, -600, 0.08);
	}
	
if (control.main_selected != noone) or (position_meeting(mouse_x, mouse_y, control) and control.phase == "Main")
	level_y = lerp(level_y, 0, 0.2);
else
	level_y = lerp(level_y,65, 0.2);