var cam_x = o_camera.cam_x;
var cam_y = o_camera.cam_y;
var view_w = o_camera.view_w;
var view_h = o_camera.view_h;
var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);

var shop_x = o_Master.shop_x;

if (unit_id != noone)
	{
	unit_id.x = x;
	unit_id.y = y;
	}
if (unit_id == noone)
	in_movement = lerp(in_movement, 0, 0.2);
else if (mouse_in)
	{
	in_movement = lerp(in_movement, -125, 0.2);
	}
else
	{
	in_movement = lerp(in_movement, 0, 0.2);
	}
	
	
if (position_meeting(mouse_x, mouse_y, unit_id) and (mouse_lb))
	{
	var zone = Free_Zone(unit_id, "Reserve")
		
		if (zone == noone)
			{
			///ERROR_MESSAGE
			show_message("NO ZONES FREE")
			}
		else if gold_Calc(o_Master.control, unit_id.gold, "-")
			{
			///GOLD DEDUCT
			unit_id.in_shop = false;
			unit_id.mx = zone.x;
			unit_id.my = zone.y;
			unit_id.main_state = "movement";
			unit_id = noone;
			}
	}


if (o_camera.target_angle == 0)
	{
	image_xscale = 1;
	}
else
	{
	image_xscale = -1;
	}
	
	
if (o_camera.target_angle == 0)
{
switch(_id)
	{
	case 0:
		{
		x = cam_x + view_w + in_movement - shop_x;
		y = cam_y + view_h*0.3;
		}
		break;
		
	case 1:
		{
		x = cam_x + view_w + in_movement - shop_x;
		y = cam_y + view_h*0.4;
		}
		break;
		
	case 2:
		{
		x = cam_x + view_w + in_movement - shop_x;
		y = cam_y + view_h*0.5;
		}
		break;
		
	case 3:
		{
		x = cam_x + view_w + in_movement - shop_x;
		y = cam_y + view_h*0.6;
		}
		break;
		
	case 4:
		{
		x = cam_x + view_w + in_movement - shop_x;
		y = cam_y + view_h*0.7;
		}
		break;

		
	}
}
else
{
switch(_id)
	{
	case 0:
		{
		x = cam_x - in_movement + shop_x;
		y = cam_y + view_h*0.7;
		}
		break;
		
	case 1:
		{
		x = cam_x - in_movement + shop_x;
		y = cam_y + view_h*0.6;
		}
		break;
		
	case 2:
		{
		x = cam_x - in_movement + shop_x;
		y = cam_y + view_h*0.5;
		}
		break;
		
	case 3:
		{
		x = cam_x - in_movement + shop_x;
		y = cam_y + view_h*0.4;
		}
		break;
		
	case 4:
		{
		x = cam_x - in_movement + shop_x;
		y = cam_y + view_h*0.3;
		}
		break;

		
	}
	
}