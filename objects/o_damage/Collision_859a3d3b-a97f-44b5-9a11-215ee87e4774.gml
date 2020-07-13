if (other.player != creator.player) and (anim_end)
	{
	other.hp -= damage;
	other.shake = shake*5;
	other.alarm[0] = shake*5;
	
	if (o_Master.control == o_player1)
		{
		var y_loc = -100;
		var x_loc = -20;
		var angle = 0;
		}
	else
		{
		var y_loc = 100;
		var x_loc = 20;
		var angle = 180;
		}
		
	var popup = instance_create_layer(x + x_loc,y + y_loc,"Information",o_popup);
	popup.damage = damage;
	popup.v_mov = v_mov;
	popup.angle = angle;
	instance_destroy(id);
	}