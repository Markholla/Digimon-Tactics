occupied = instance_place(x, y, o_Unit);

//Mouse Check
var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);
var mouse_rb = mouse_check_button_pressed(mb_right);

if (mouse_in and mouse_rb)
	show_debug_message(main_state);


switch(o_Master.control.phase)
	{
	case "Main":
	#region MAIN PHASE
		{
		/*if (place_meeting(x, y, o_Unit))
			{
			if (occupied == noone)
				{
				image_blend = c_yellow;
				o_Master.control.main_selected.mx = x;
				o_Master.control.main_selected.my = y;
				}
			}
		else
			image_blend = c_white;	*/
		
		switch(main_state)
			{
			case "Vacant":
				{
				if (place_meeting(x, y, o_Unit)) and (o_Master.control == player) and (o_Master.control.main_selected != noone)
					{
					image_blend = c_yellow;
					o_Master.control.main_selected.mx = x;
					o_Master.control.main_selected.my = y;
					}
				else
					image_blend = c_white;
					
				if (instance_place(x, y, o_Unit))
					{
					main_state = "Occupied";
					}
					
				}
				break;
				
			case "Occupied":
				{
				if !(instance_place(x, y, o_Unit))
					{
					main_state = "Vacant";
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
		main_state = "Vacant";
		image_blend = c_white;
				
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