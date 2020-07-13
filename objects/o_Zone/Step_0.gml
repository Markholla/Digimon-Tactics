if (instance_place(x, y, o_Unit))
	occupied = instance_place(x, y, o_Unit);
else
	occupied = noone;

o_Master.Zone[place] = id;

//Mouse Check
var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);
var mouse_rb = mouse_check_button_pressed(mb_right);

if (mouse_in and mouse_rb)
	show_debug_message(attack_state);


switch(o_Master.control.phase)
	{
	case "Start":
	#region START PHASE
		{
		image_blend = c_white;
		sprite_index = s_zone;
		attack_state = "normal";
		main_state = "normal";
		move_state = "normal";
		}
	#endregion
	break;
	
	case "Main":
	#region MAIN PHASE
		{
		image_blend = c_white;
		}
	#endregion
	break;
	
	case "Move":
	#region MOVEMENT PHASE
		{
		switch(move_state)
			{
			case "normal":
				{
				sprite_index = s_zone;
				
				if (place_meeting(x, y, o_mvTarget))
					{
					move_state = "movable";
					}
				
				if (mouse_in) and (o_Master.control.move_selected == noone)
					image_blend = c_yellow;
				else
					image_blend = c_white;
				}
				break;
				
			case "movable":
				{
				sprite_index = s_mvzone;	
					
				if !(place_meeting(x, y, o_mvTarget))
					{
					move_state = "normal";
					}
				
				if (mouse_in)
					image_blend = c_yellow;
				else
					image_blend = c_white;
					
				if (mouse_lb) and (mouse_in) and occupied == noone
					{
					//state = "normal";
					
					o_Master.control.move_selected.move_state = "movement";
					o_Master.control.move_selected.layer = layer_get_id("Active_Units");
					
					o_Master.control.move_selected.mx = x;
					o_Master.control.move_selected.my = y;
					
					o_Master.control.move_selected = noone;
					}
					
				}
				break;
				
			case "finished":
				{	
				}
				break;
			
			}
		
		}
	#endregion
	break;
	
	case "Attack":
	#region ATTACK PHASE
		{
		switch(attack_state)
			{
			case "normal":
				{
				sprite_index = s_zone;
				
				var dmg_target = instance_place(x,y,o_dmgTarget)
				
				if (dmg_target)
					{
					if (dmg_target.no_target)
						attack_state = "attackable"
					else
						attack_state = "attack";
					}
				
				if (mouse_in) and (o_Master.control.attack_selected == noone)
					image_blend = c_yellow;
				else
					image_blend = c_white;
				}
				break;
				
			case "attack":
				{
				sprite_index = s_atkzone;	
					
				if !(place_meeting(x, y, o_dmgTarget))
					{
					attack_state = "normal";
					}
					
				if (occupied)
					{
					if (occupied.player != o_Master.control)
						{
						attack_state = "attackable";
						}
					}
				
				if (mouse_in)
					image_blend = c_yellow;
				else
					image_blend = c_white;
					
				}
				break;
				
			case "attackable":
				{
				/*if !(occupied.player == o_Master.control)
					{
					attack_state = "attack";
					}	*/
				if !(place_meeting(x, y, o_dmgTarget))
					{
					attack_state = "normal";
					}
				
				if (mouse_lb) and (mouse_in) and (occupied)
					{
					attack_state = "normal";
					o_Master.control.attack_selected.attack_state = "attack";
					Damage(o_Master.control.attack_selected.atk, o_Master.control.attack_selected, occupied, 3, 2, o_Master.control.attack_selected.hit_effect);
				
				//	o_Master.control.attack_selected = noone;
					}
				}
				break;
				
			case "finished":
				{	
				}
				break;
			
			}
		
		}
	#endregion
	break;
	
	case "End":
	#region END PHASE
		{
		}
	#endregion
	break;
		
	}































/*if position_meeting(x,y,o_Unit)
	occupied = true;
else
	occupied = false;

if state == "moving"
	image_blend = c_red;
else
	image_blend = c_white;

if position_meeting(mouse_x,mouse_y,id) and state == "moving"
	{
	if (mouse_check_button_pressed(mb_left))
		{
		o_Master.control.mx = x;
		o_Master.control.my = y;
		}
	
	image_blend = c_yellow;
	}
else
	image_blend = c_white;