image_xscale = 0.48*o_camera.zoom;
image_yscale = 0.48*o_camera.zoom;
image_angle = o_camera.target_angle;

var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);

switch(o_Master.control.phase)
	{
	case "Start":
		{
		x = 4920;
		y = 4080;
		}
		break;
	
	case "Main":
		{
		if (o_camera.target_angle == 0)
			{
			x = (o_camera.cam_x + o_camera.view_w - 47);
			y = (o_camera.cam_y + o_camera.view_h - 47);
			}
		if (o_camera.target_angle == 180)
			{
			x = ((o_camera.cam_x + o_camera.view_w) - 3600);
			y = ((o_camera.cam_y + o_camera.view_h) - 2004);
			}
			
			if (mouse_in)
				in = 1;
			else
				in = 0;
				
			if (mouse_in) and (mouse_lb)
				{
				o_Master.control.phase = "Move";
				ph = 2;
				}
	
		}
		break
		
	case "Move":
		{	
		if (o_camera.target_angle == 0)
			{
			x = (o_camera.cam_x + o_camera.view_w - 38);
			y = (o_camera.cam_y + o_camera.view_h - 38);
			}
		if (o_camera.target_angle == 180)
			{
			x = ((o_camera.cam_x + o_camera.view_w) - 2845);
			y = ((o_camera.cam_y + o_camera.view_h) - 1585);
			}
			
			if (mouse_in)
				in = 1;
			else
				in = 0;
				
			if (mouse_in) and (mouse_lb)
				{
				o_Master.gold_movement = false;
				o_Master.control.phase = "Attack";
				ph = 4;
				}
		}
		break;
		
	case "Attack":
		{	
		if (o_camera.target_angle == 0)
			{
			x = (o_camera.cam_x + o_camera.view_w - 30);
			y = (o_camera.cam_y + o_camera.view_h - 30);
			}
		if (o_camera.target_angle == 180)
			{
			x = ((o_camera.cam_x + o_camera.view_w) - 2463);
			y = ((o_camera.cam_y + o_camera.view_h) - 1372);
			}
			
			if (mouse_in)
				in = 1;
			else
				in = 0;
				
			if (mouse_in) and (mouse_lb)
				{
				o_Master.control.phase = "Start";
				o_Master.turns += 1;
				UI("hide");
				
				if (o_Master.control == o_player1)
					o_Master.control = o_player2;
				else
					o_Master.control = o_player1;
					
				end_turn();
				}
		}
		break;
		
	}