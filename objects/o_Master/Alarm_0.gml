control.phase = "Main";
gold_movement = true;
phase_id.ph = 0;
display = noone;
phase_movement = true;

if (turns > 20)
	var amount = 10;
else if (turns > 15)
	var amount = 8
else if (turns > 10)
	var amount = 6;
else
	var amount = 4;

if (turns > 2)
	{
	if (control == o_player1)
		{
		gold_Calc(control, amount, "+", o_camera.cam_x + o_camera.view_w*0.87, o_camera.cam_y + o_camera.view_h, 2.5);
		exp_gain(control, amount/2, o_camera.cam_x - 220,  o_camera.cam_y + o_camera.view_h*0.95, 2.5);
		}
	else
		{
		gold_Calc(control, amount, "+", o_camera.cam_x + o_camera.view_w*0.1, o_camera.cam_y - 120, 2.5);
		exp_gain(control, amount/2, o_camera.cam_x + o_camera.view_w + 110,  o_camera.cam_y + o_camera.view_h*0.05, 2.5);
		}
	}