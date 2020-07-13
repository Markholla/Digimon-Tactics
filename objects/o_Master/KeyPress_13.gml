if !(pause_id.PAUSED)
{
switch(control.phase)
	{
	case "Start":
		{
		//control.phase = "Main";
		}
		break;
		
	case "Main":
		{
		control.phase = "Move";
		
		}
		break;
		
	case "Move":
		{
		control.main_selected = noone;
		control.phase = "Attack";
		}
		break;
		
	case "Attack":
		{
		control.phase = "Start";
		
		if (control == o_player1)
			{
			control = o_player2;
			//o_camera.angle = 180;
			}
		else
			{
			control = o_player1;
			//o_camera.angle = 0;
			}
			
		control.phase = "Start";
		}
		break;
		
	}
}