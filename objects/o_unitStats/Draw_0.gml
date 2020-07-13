if (position_meeting(mouse_x,mouse_y,creator)) or disp
{
if (creator.hp_disp > 0.01*creator.max_hp) and !(creator.bin)
{
var cond_check = ((o_Master.control.main_selected == noone) and (creator.main_state != "movement") and 
(creator.move_state != "movement") and
(creator.attack_state != "attack") and (o_Master.control.phase != "Start"))	and !(creator.in_shop)

if (cond_check)
{
	if (creator.move_state == "finished") or (creator.attack_state == "finished")
		{
		draw_sprite_ext(s_hl,2,x,y,1,1,creator.angle,c_white,1);
		}
	else
		{
		draw_sprite_ext(s_hl,(creator.player == o_Master.control),x,y,1,1,creator.angle,c_white,1);
		}
	
	#region HEALTH AND MANA
	if (o_Master.control == creator.player)
		var pl = 0;
	else
		var pl = 2;
		
		//DRAW HEALTH
		#region HEALTH
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var hp_width = 64;
		var hp_height = 61;
		var hp_x = x + 25*angle;
		var hp_y = y + 56*angle;
		
		var hp_percent = creator.hp_disp/creator.max_hp;
		var hp_refill = creator.hp_red/creator.max_hp;
			
		draw_sprite_part_ext(s_health, pl + 1, 0, 0, (hp_width)*hp_refill, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		draw_sprite_part_ext(s_health, pl, 0, 0, (hp_width)*hp_percent, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		#endregion
		
		//DRAW MANA
		#region MANA
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var mp_width = 64;
		var mp_height = 61;
		var mp_x = x - 26*angle;
		var mp_y = y + 58*angle;
		
		var mp_percent = creator.mp_disp/creator.max_mp;
		var mp_refill = creator.mp_red/creator.max_mp;
			
		draw_sprite_part_ext(s_mana, 1, 0, 0, (mp_width)*mp_refill, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		draw_sprite_part_ext(s_mana, 0, 0, 0, (mp_width)*mp_percent, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		#endregion
	#endregion
	
	if (creator.move_state == "finished") or (creator.attack_state == "finished")
		{
		draw_sprite_ext(s_hl,5,x,y,1,1,creator.angle,c_white,1);
		}
	else
		{
		draw_sprite_ext(s_hl,(creator.player == o_Master.control)+3,x,y,1,1,creator.angle,c_white,1);
		}
	
	#region DRAW TEXT
	if (creator.angle == 180)
			var x_sca = -1;
		else
			var x_sca = 1;
			
		if (creator.atk >= 10)
			draw_set_font(f_uAttackS);
		else
			draw_set_font(f_uAttack);
			
		var col = c_white;
		if (creator.atk > creator.r_atk)
			col = $a9a9ff;
		else if (creator.atk < creator.r_atk)
			col = $ffe7a9;
		else
			col = c_white;
			
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
	
		//draw_text_color(creator.x, creator.y - creator.sprite_height/1.55, creator.atk, col, col, col, col, 1);
		draw_set_color(col);
		draw_text_transformed(creator.x, creator.y - (creator.sprite_height/1.52)*x_sca, creator.atk, 1, 1, creator.angle);
		draw_set_color(noone);
		//draw_text_ext_transformed_color(creator.x, creator.y, creator.atk, creator.sprite_height*1.65, creator.sprite_height*3, 1, 1, creator.angle,col, col, col, col, 1);
		
		draw_set_font(noone);
		draw_set_halign(noone);
		draw_set_valign(noone);
	#endregion
		
}
else if creator.in_shop
	{
	draw_sprite_ext(s_gold,0,x,y,1,1,creator.angle,c_white,1);
	
	if (o_camera.target_angle == 180)
			var x_sca = -1;
	else
			var x_sca = 1;
			
		if (creator.gold >= 10)
			draw_set_font(f_uAttackS);
		else
			draw_set_font(f_uAttack);
			
		col = c_white;
			
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
	
		draw_set_color(col);
		draw_text_transformed(creator.x, creator.y - (creator.sprite_height/1.56)*x_sca, creator.gold, 1, 1, creator.angle);
		draw_set_color(noone);
		
		draw_set_font(noone);
		draw_set_halign(noone);
		draw_set_valign(noone);
	}
}
}
/*
else
	{
	draw_sprite_ext(s_indicator,0,x,y,1,1,creator.angle,c_white,1);	
	
	#region HEALTH AND MANA
	if (o_Master.control == creator.player)
		var pl = 0;
	else
		var pl = 2;
		
		//DRAW HEALTH
		#region HEALTH
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var hp_width = 72;
		var hp_height = 45;
		var hp_x = x + 8*angle;
		var hp_y = y + 54*angle;
		
		var hp_percent = creator.hp_disp/creator.max_hp;
		var hp_refill = creator.hp_red/creator.max_hp;
			
		draw_sprite_part_ext(s_shealth, pl + 1, 0, 0, (hp_width)*hp_refill, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		draw_sprite_part_ext(s_shealth, pl, 0, 0, (hp_width)*hp_percent, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		#endregion
		
		//DRAW MANA
		#region MANA
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var mp_width = 72;
		var mp_height = 45;
		var mp_x = x - 8*angle;
		var mp_y = y + 54*angle;
		
		var mp_percent = creator.mp_disp/creator.max_mp;
		var mp_refill = creator.mp_red/creator.max_mp;
			
		draw_sprite_part_ext(s_shealth, 5, 0, 0, (mp_width)*mp_refill, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		draw_sprite_part_ext(s_shealth, 4, 0, 0, (mp_width)*mp_percent, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		#endregion
	#endregion
	}

/*var cond_check = ((o_Master.control.main_selected == noone) and (creator.main_state != "movement") and 
(creator.move_state != "movement") and (o_Master.control.phase != "start")) or (disp)
	
if (creator.move_state == "finished") or (creator.attack_state == "finished")
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		draw_sprite_ext(s_hl,2,x,y,1,1,creator.angle,c_white,1);
		}
	}	
else if (cond_check)
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		draw_sprite_ext(s_hl,(creator.player == o_Master.control),x,y,1,1,creator.angle,c_white,1);
		}
	}

if (cond_check)
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		if (o_Master.control == creator.player)
			var pl = 0;
		else
			var pl = 2;
		
		//DRAW HEALTH
		#region HEALTH
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var hp_width = 64;
		var hp_height = 61;
		var hp_x = x + 25*angle;
		var hp_y = y + 56*angle;
		
		var hp_percent = creator.hp_disp/creator.max_hp;
		var hp_refill = creator.hp_red/creator.max_hp;
			
		draw_sprite_part_ext(s_health, pl + 1, 0, 0, (hp_width)*hp_refill, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		draw_sprite_part_ext(s_health, pl, 0, 0, (hp_width)*hp_percent, hp_height, hp_x, hp_y,angle,angle,c_white,1);
		#endregion
		
		//DRAW MANA
		#region MANA
		if (o_Master.control == o_player2)
			var angle = 1;
		else
			var angle = -1;
			
		var mp_width = 64;
		var mp_height = 61;
		var mp_x = x - 26*angle;
		var mp_y = y + 58*angle;
		
		var mp_percent = creator.mp_disp/creator.max_mp;
		var mp_refill = creator.mp_red/creator.max_mp;
			
		draw_sprite_part_ext(s_mana, 1, 0, 0, (mp_width)*mp_refill, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		draw_sprite_part_ext(s_mana, 0, 0, 0, (mp_width)*mp_percent, mp_height, mp_x, mp_y,-angle,angle,c_white,1);
		#endregion
		
		}
	}

if (creator.move_state == "finished") or (creator.attack_state == "finished")
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		draw_sprite_ext(s_hl,5,x,y,1,1,creator.angle,c_white,1);
		}
	}
else if (cond_check)
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		draw_sprite_ext(s_hl,(creator.player == o_Master.control)+3,x,y,1,1,creator.angle,c_white,1);
		}
	}
	

if (cond_check)
	{
	if (position_meeting(mouse_x,mouse_y,creator)) or (disp)
		{
		if (creator.angle == 180)
			var x_sca = -1;
		else
			var x_sca = 1;
			
		if (creator.atk >= 10)
			draw_set_font(f_uAttackS);
		else
			draw_set_font(f_uAttack);
			
		var col = c_white;
		if (creator.atk > creator.r_atk)
			col = $a9a9ff;
		else if (creator.atk < creator.r_atk)
			col = $ffe7a9;
		else
			col = c_white;
			
		draw_set_halign(fa_middle);
		draw_set_valign(fa_middle);
	
		//draw_text_color(creator.x, creator.y - creator.sprite_height/1.55, creator.atk, col, col, col, col, 1);
		draw_set_color(col);
		draw_text_transformed(creator.x, creator.y - (creator.sprite_height/1.52)*x_sca, creator.atk, 1, 1, creator.angle);
		draw_set_color(noone);
		//draw_text_ext_transformed_color(creator.x, creator.y, creator.atk, creator.sprite_height*1.65, creator.sprite_height*3, 1, 1, creator.angle,col, col, col, col, 1);
		
		draw_set_font(noone);
		draw_set_halign(noone);
		draw_set_valign(noone);
		}
		
	}