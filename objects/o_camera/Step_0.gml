/*var agle = angle;
var agle = lerp(agle, angle, 0.2);

if (o_Master.control == o_player2)
	{
	cam_x = 970;
	cam_y = -142;
	}
else
	{
	cam_x = 0;
	cam_y = 0;
	}

camera_set_view_angle(camera, agle);
camera_set_view_pos(camera, cam_x, cam_y);*/

//cam_x = camera_get_view_x(cam_id);
//cam_y = camera_get_view_y(cam_id);

view_w = camera_get_view_width(cam_id);
view_h = camera_get_view_height(cam_id);

zoom = /*target_zoom*/lerp(zoom, target_zoom, 0.12);//(target_zoom - zoom) * 0.05;
angle = /*target_angle*/lerp(angle, target_angle, 0.1);

switch(o_Master.control.phase)
	{
	case "Start":
		{
		cam_x = lerp(cam_x, target_x + mouse_x/50, 0.2);
		cam_y = lerp(cam_y, target_y + mouse_y/50, 0.2);
		target_zoom = 0.75;
		
		camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
		camera_set_view_angle(cam_id, angle);
		camera_set_view_pos(cam_id, cam_x, cam_y);
		
		if (o_Master.control == o_player2)
			{
			target_x = 968;
			target_y = 187;
			target_angle = 180;
			}
		else
			{
			target_x = 960;
			target_y = 210;
			target_angle = 0;
			}
		}
		break;
	
	case "Main":
		{
		cam_x = lerp(cam_x, target_x + mouse_x/100, 0.2);
		cam_y = lerp(cam_y, target_y + mouse_y/100, 0.2);
		
		target_zoom = 0.95;
		
		camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
		camera_set_view_angle(cam_id, angle);
		camera_set_view_pos(cam_id, cam_x, cam_y);

		if (o_Master.control == o_player2)
			{
			target_x = 550;
			target_y = -280;
			target_angle = 180;
			}
		else
			{
			target_x = 560;
			target_y = 228;
			target_angle = 0;
			}
		}
		break;
		
	case "Move":
		{
		if ((o_Master.control.move_selected == noone))
			{
			if (point_in_rectangle(mouse_x, mouse_y, cam_x + 500, cam_y, cam_x+(view_w - 500), cam_y+(view_h*0.05)) 
			or point_in_rectangle(mouse_x, mouse_y, cam_x + 500, cam_y+(view_h*0.95), cam_x+(view_w - 500), cam_y+(view_h)))
				{
				cam_x = lerp(cam_x, target_x + mouse_x/50, 0.2);
				cam_y = lerp(cam_y, target_y + mouse_y/1.8 - 575, 0.2);
				}
			else
				{
				cam_x = lerp(cam_x, target_x + mouse_x/50, 0.2);
				cam_y = lerp(cam_y, target_y + mouse_y/50, 0.2);	
				}
			
			target_zoom = 0.75;
		
			camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
			camera_set_view_angle(cam_id, angle);
			camera_set_view_pos(cam_id, cam_x, cam_y);
		
			if (o_Master.control == o_player2)
				{
				target_x = 910;
				target_y = 167;
				target_angle = 180;
				}
			else
				{
				target_x = 920;
				target_y = 190;
				target_angle = 0;
				}
			}
		else
			{
			cam_x = /*target_x + mouse_x*/lerp(cam_x, target_x + mouse_x/50, 0.2);
			cam_y = /*target_y + mouse_y*/lerp(cam_y, target_y + mouse_y/50, 0.2);	
			
			target_zoom = 0.70;
		
			camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
			camera_set_view_angle(cam_id, angle);
			camera_set_view_pos(cam_id, cam_x, cam_y);
		
			if (o_Master.control == o_player2)
				{
				target_x = 1012;
				target_y = 225;
				target_angle = 180;
				}
			else
				{
				target_x = 1012;
				target_y = 235;
				target_angle = 0;
				}
				
			}
		}
		break;
			
	case "Attack":
		{
		if (o_Master.BATTLE)
			{
			if (o_Master.enemy.field_total == 0)
			{
				{
				cam_x = /*target_x + mouse_x*/lerp(cam_x, target_x + mouse_x/250, 0.2);
				cam_y = /*target_y + mouse_y*/lerp(cam_y, target_y + mouse_y/250, 0.2);	
			
				target_zoom = 0.55;
		
				camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
				camera_set_view_angle(cam_id, angle);
				camera_set_view_pos(cam_id, cam_x, cam_y);
		
				if (o_Master.control == o_player2)
					{
					target_x = 1338;
					target_y = 910;
					target_angle = 180;
					}
				else
					{
					target_x = 1338;
					target_y = -12;
					target_angle = 0;
					}
				}
			}
			else
				{
				cam_x = /*target_x + mouse_x*/lerp(cam_x, target_x + mouse_x/250, 0.2);
				cam_y = /*target_y + mouse_y*/lerp(cam_y, target_y + mouse_y/250, 0.2);	
			
				target_zoom = 0.55;
		
				camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
				camera_set_view_angle(cam_id, angle);
				camera_set_view_pos(cam_id, cam_x, cam_y);
		
				if (o_Master.control == o_player2)
					{
					target_x = 1338;
					target_y = 410;
					target_angle = 180;
					}
				else
					{
					target_x = 1338;
					target_y = 412;
					target_angle = 0;
					}
				}
			}	
		else if ((o_Master.control.attack_selected == noone))
			{
			cam_x = lerp(cam_x, target_x + mouse_x/50, 0.2);
			cam_y = lerp(cam_y, target_y + mouse_y/50, 0.2);	
			
			target_zoom = 0.65;
		
			camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
			camera_set_view_angle(cam_id, angle);
			camera_set_view_pos(cam_id, cam_x, cam_y);
		
			if (o_Master.control == o_player2)
				{
				target_x = 1110;
				target_y = 285;
				target_angle = 180;
				}
			else
				{
				target_x = 1110;
				target_y = 285;
				target_angle = 0;
				}
			}
		else
			if (o_Master.enemy.hitted != noone)
				{
			cam_x = /*target_x + mouse_x*/lerp(cam_x, target_x + mouse_x/50, 0.2);
			cam_y = /*target_y + mouse_y*/lerp(cam_y, target_y + mouse_y/50, 0.2);	
			
			target_zoom = 0.6;
		
			camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
			camera_set_view_angle(cam_id, angle);
			camera_set_view_pos(cam_id, cam_x, cam_y);
		
			if (o_Master.control == o_player2)
				{
				target_x = 1204;
				target_y = 742;
				target_angle = 180;
				}
			else
				{
				target_x = 1204;
				target_y = -42;
				target_angle = 0;
				}
			}
			else
			{
			cam_x = /*target_x + mouse_x*/lerp(cam_x, target_x + mouse_x/50, 0.2);
			cam_y = /*target_y + mouse_y*/lerp(cam_y, target_y + mouse_y/50, 0.2);	
			
			target_zoom = 0.6;
		
			camera_set_view_size(cam_id, 1920*zoom*2, 1080*zoom*2);
			camera_set_view_angle(cam_id, angle);
			camera_set_view_pos(cam_id, cam_x, cam_y);
		
			if (o_Master.control == o_player2)
				{
				target_x = 1204;
				target_y = 342;
				target_angle = 180;
				}
			else
				{
				target_x = 1204;
				target_y = 342;
				target_angle = 0;
				}
			}
		}
		break;
		
	}