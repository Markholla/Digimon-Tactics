var mouse_in = position_meeting(mouse_x, mouse_y, id);
var mouse_lb = mouse_check_button_pressed(mb_left);
var mouse_lr = mouse_check_button_released(mb_left);

image_xscale = 2.8*o_camera.zoom;
image_yscale = 2.8*o_camera.zoom;

if (state == "refresh")
	{
	if (mouse_in) and (alarm[0] == -1)
		{
		in = lerp(in, 100, 0.2);
		
		if (mouse_lb) and gold_Calc(o_Master.control, o_Master.refresh_gold, "-", x - xsca*10, y - xsca*(sprite_height*1.1), 1.5)
			{
			alarm[0] = 60;
			o_Master.shop_movement = false;
			}
		}
	else
		in = lerp(in, 0, 0.2);
	}
else if (state == "sell")
	{
	var inst = instance_place(x,y,o_Unit);
	
	if (inst != noone) and !(inst.in_shop)
		{
		in = lerp(in, 100, 0.2);
		
		if (mouse_lr) and gold_Calc(o_Master.control, inst.gold, "+", x - xsca*10, y - xsca*(sprite_height*1.1), 1.5)
			{
			inst.in_shop = true;
			inst.bin = true
			
			///GOLD POPUP
			inst.alarm[3] = 60;
			o_Master.display_movement = false;
			o_Master.alarm[2] = 30;
			}
		
		}
	else
		in = lerp(in, 0, 0.2);
	}

if (o_Master.control.phase == "Main")
	{
	if (o_Master.control.main_selected == noone)
		state = "refresh";
	else
		state = "sell";
	}
else if (o_Master.control.phase == "Move") and (state != "sell")
	state = "sell"


if (o_camera.target_angle == 0)
	{
	x = o_camera.cam_x + o_camera.view_w*0.92 - o_Master.gold_x;
	y = o_camera.cam_y + o_camera.view_h*0.95 - o_Master.gold_y*2;
	image_angle = 0;
	xsca = 1;
		
	}
else
	{
	x = o_camera.cam_x + o_camera.view_w*0.08 + o_Master.gold_x;
	y = o_camera.cam_y + o_camera.view_h*0.05 + o_Master.gold_y*2;
	image_angle = 180
	xsca = -1;
	}
	
