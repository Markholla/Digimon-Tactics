if instance_place(x, y, o_Zone)
	in = "Zone";
else if instance_place(x, y, o_Start)
	in = "Start";
else if instance_place(x, y, o_rvZone)
	in = "Reserve";
else if instance_place(x, y, o_Shop)
	in = "Shop";
else
	in = "Nothing";

if (o_Master.control == o_player2)
	angle = lerp(angle, 180, 0.2);
else
	angle = lerp(angle, 0, 0.2);
	

//MouseCheck
var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);
var mouse_lbp = mouse_check_button(mb_left);
var mouse_lbr = mouse_check_button_released(mb_left);
var mouse_rb = mouse_check_button_pressed(mb_right);

/*if (mouse_in and mouse_rb)
	{
	x = xstart;
	y = ystart;
	if (in = "Zone")
		Remove_Unit(id, "Field");
	}*/
if (in_shop) and (mouse_in)
	{
	Call_Display(20);
	}
else
{
if (mouse_in) and (mouse_lb) and (o_Master.control.phase != "Start") and !(o_Master.BATTLE)
	Call_Display(120);

if (mouse_in) and (o_Master.control.phase != "Start") and !(o_Master.BATTLE)
	{
	o_Master.alarm[1] = 120;
	o_Master.alarm[2] = 120 + 20;
	}
}
	

if (o_Master.control == player) and !(o_Master.pause_id.PAUSED) and !(dead)
{
if (o_Master.BATTLE == false) and !(in_shop)
{
switch(o_Master.control.phase)
	{
	case "Start":
	#region START PHASE
		{
		if (main_state != "idle")
			main_state = "idle";
		if (move_state != "idle")
			move_state = "idle";
		if (attack_state != "idle")
			attack_state = "idle";
		
		}
		break;
	#endregion
	
	case "Main":
	#region MAIN PHASE
		{
		switch(main_state)
			{
			case "idle":
				{
				if (mouse_in) and (mouse_lb) and !(in == "Zone")
					{
					if (in == "Reserve")
						{
						Remove_Unit(id, "ReserveDrag");
						show_debug_message("RemoveReserve");
						}
					else if (in == "Start")
						{
						Remove_Unit(id, "StartDrag");
						show_debug_message("RemoveStart");
						}
						
					player.main_selected = id;
					main_state = "selected";
					mx = xprevious;
					my = yprevious;
					layer = layer_get_id("Active_Units");
					}
				else if (mouse_rb) and (mouse_in) and (in == "Zone")
					{
					var place = Free_Zone(id,"Reserve");
					Remove_Unit(id, "Field");
					
					if (place != noone)
						{
						mx = place.x;
						my = place.y;
						main_state = "movement";
						}
					}
					
				}
				break;
				
			case "selected":
				{
				if (mouse_lbp)
					{
					x = mouse_x;
					y = mouse_y;
					}
				
				if (mouse_lbr) or (!(mouse_lbp)) //and (in == "Reserve" or in == "Start")
					{
					main_state = "movement";
					layer = layer_get_id("Units");
					}
				
				}
				break;
				
			case "movement":
				{
				x = lerp(x, mx, 0.5);
				y = lerp(y, my, 0.5);
				
				if (x == xprevious) and (y == yprevious)
					{
					main_state = "idle";
					layer = layer_get_id("Units");
					player.main_selected = noone;
					
					if (in == "Reserve")
						{
						Add_Unit(id, "ReserveDrag");
						show_debug_message("AddReserve");
						}
					else if (in == "Start")
						{
						Add_Unit(id, "StartDrag");
						show_debug_message("AddStart");
						}
					}
				}
				break;
			}
		}
	#endregion
	break;
	
	case "Move":
	#region MOVEMENT PHASE
		{
		if (player.main_selected != noone)
			player.main_selected = noone
		switch(move_state)
			{
			case "idle":
				{
				if (mouse_in) and (mouse_lb) and !(in == "Reserve") //and	(player.move_selected == noone)
					{
					move_state = "selected";
					player.move_selected = id;
				
					Movement(id, type);
					}
					
				//x = o_Zone.x;
				//y = o_Zone.y;
				}
				break;
				
			case "selected":
				{
				if (mouse_rb)
					{
					move_state = "idle";
					player.move_selected = noone;
					}
				else if !(player.move_selected == id)
					{
					move_state = "idle";
					}
				else if ((mouse_in) and (mouse_lb))
					{
					move_state = "idle";
					player.move_selected = noone;
					}
				}
				break;
				
			case "movement":
				{
				x = lerp(x, mx, 0.25);
				y = lerp(y, my, 0.25);
				Add_Unit(id, "Field");
				Remove_Unit(id, "StartDrag");
				/*if (place_meeting(x, y, o_Zone))
					{
					
					}*/
				if (x == xprevious) and (y == yprevious)
					{
					move_state = "finished";
					layer = layer_get_id("Units");
					//Add_Unit(id, "Field");
					//Remove_Unit(id, "StartDrag");
					}
				}
				break;
				
			case "finished":
				{
				layer = layer_get_id("Units");
				}
			
			}
		
		}
	#endregion
	break;
	
	case "Attack":
	#region ATTACK PHASE
		{
		if (main_state != "idle")
			main_state = "idle";
		if (move_state != "idle")
			move_state = "idle";
			
		switch(attack_state)
			{
			case "idle":
				{
				if (mouse_in) and (mouse_lb) and !(in == "Reserve") and !(in == "Start") //and	(player.move_selected == noone)
					{
					attack_state = "selected";
					player.attack_selected = id;
				
					Attack(id, type);
					}
					
				//x = o_Zone.x;
				//y = o_Zone.y;
				}
				break;
				
			case "selected":
				{
				if (mouse_rb)
					{
					attack_state = "idle";
					player.attack_selected = noone;
					}
				else if !(player.attack_selected == id)
					{
					attack_state = "idle";
					}
				else if ((mouse_in) and (mouse_lb))
					{
					attack_state = "idle";
					player.attack_selected = noone;
					}
				}
				break;
				
			case "attack":
				{
				if (o_Master.BATTLE != true)
					o_Master.BATTLE = true;
				UI("hide");
				
				if (alarm[1] == -1)
					{
					if (hit_effect != noone)
						alarm[1] = effect_dur + 30;
					else
						alarm[1] = 30;
					}
				
				}
				
			case "finished":
				{
				if (id == player.attack_selected)
					player.attack_selected = noone;
				}
			
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
}
}
else
{
main_state = "idle";
move_state = "idle";
attack_state = "idle";
player.main_selected = noone;
player.move_selected = noone;
player.attack_selected = noone;
layer = layer_get_id("Units");

x_disp = random_range(-shake, shake);
y_disp = random_range(-shake, shake);

if (hp_disp != hp)
	{
	Call_Display(80);
	}
}