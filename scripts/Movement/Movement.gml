///@arg id
///@arg type

var creator = argument0;
var type = argument1;
var unit_width = 175;
var unit_height = 175;
var _x = creator.x;
var _y = creator.y;

switch(type)
	{
	case "Soldier":
		#region SOLDIER
		{
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 60;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 120;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 180;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 240;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 300;
				
		}
		break;
		#endregion
	
	case "Warrior":
		#region WARRIOR
		{
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 60;
				target.steps = 2;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 120;
				target.steps = 2;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.steps = 2;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 180;
				target.steps = 2;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 240;
				target.steps = 2;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 300;
				target.steps = 2;
				
		}
		break;
		#endregion
		
	case "Raider":
		#region RAIDER
		{
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 60;
				target.jumpable = true;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 120;
				target.jumpable = true;
		
		if (creator.player == o_player1)
		{
		var target = instance_create_layer(_x + unit_width/2, _y - unit_height, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 120;
				target.jumpable = true;
			
		var target = instance_create_layer(_x + unit_width/2, _y - (unit_height-25), "Units", o_mvTarget);
				target.creator = id;
				target.jumpable = true;
				
			
		var target = instance_create_layer(_x - unit_width/2, _y - (unit_height-25), "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 180;
				target.jumpable = true;
		}
		else
		{
		var target = instance_create_layer(_x + unit_width/2, _y + unit_height, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = -120;
				target.jumpable = true;
			
		var target = instance_create_layer(_x + unit_width/2, _y + (unit_height-25), "Units", o_mvTarget);
				target.creator = id;
				target.jumpable = true;
				
			
		var target = instance_create_layer(_x - unit_width/2, _y + (unit_height-25), "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 180;
				target.jumpable = true;	
		}
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 240;
				target.jumpable = true;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 300;
				target.jumpable = true;
				
		}
		break;
		#endregion
		
	case "Assassin":
		#region ASSASIN
		{
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 60;
				target.steps = 3;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 120;
				target.steps = 3;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.steps = 3;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 180;
				target.steps = 3;
				
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 240;
				target.steps = 3;
			
		var target = instance_create_layer(_x, _y, "Units", o_mvTarget);
				target.creator = id;
				target.image_angle = 300;
				target.steps = 3;
				
		}
		break;
		#endregion
		
	}