if (other != creator.player) and (anim_end) and (other.field_total == 0)
	{
	other.Health -= damage;
	other.shake = shake*3;
	other.alarm[1] = shake*3;
	
	if (o_Master.control == o_player1)
		{
		var y_loc = -100;
		var x_loc = -5;
		var angle = 0;
		}
	else
		{
		var y_loc = 100;
		var x_loc = 5;
		var angle = 180;
		}
		
	var popup = instance_create_layer(x + x_loc,y + y_loc,"Information",o_popup);
	popup.damage = damage;
	popup.v_mov = v_mov;
	popup.angle = angle;
	instance_destroy(id);
	}