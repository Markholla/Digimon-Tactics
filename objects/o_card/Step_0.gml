if (o_camera.target_angle == 0)
	var xsc = 1;
else
	var xsc = -1;

image_xscale = xsc*2.2*o_camera.zoom;
image_yscale = 2.2*o_camera.zoom;

var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);


if !(o_Master.display_movement)
	{
	x = 4920;
	y = 4080;
	}
else
	{
	if (o_camera.target_angle == 0)
		{
		x = (o_camera.cam_x + o_camera.view_w*0.1);
		y = (o_camera.cam_y + o_camera.view_h*0.7);
		}
	if (o_camera.target_angle == 180)
		{
		x = (o_camera.cam_x + o_camera.view_w*0.9);
		y = (o_camera.cam_y + o_camera.view_h*0.9);
		}	
		
	if (mouse_in)
			{
			in = true;
			if (o_Master.display != noone and !o_Master.display.in_shop)
				{
				o_Master.alarm[1] = 120;
				o_Master.alarm[2] = 120 + 20;
				}
			}
		else
			{
			in = false;
			}
		
	}