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
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 60;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 120;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				
		var target = instance_create_layer(_x - unit_width, _y, "Units", o_dmgTarget);
				target.creator = id;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 240;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 300;
				
		}
		break;
		#endregion
	
	case "Warrior":
		#region WARRIOR
		{
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 60;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 120;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
			
		var target = instance_create_layer(_x - unit_width, _y, "Units", o_dmgTarget);
				target.creator = id;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 240;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 300;
				
		}
		break;
		#endregion
		
	case "Raider":
		#region RAIDER
		{
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 60;
				target.unblockable = true;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 120;
				target.unblockable = true;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
				target.unblockable = true;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.unblockable = true;
				
		var target = instance_create_layer(_x - unit_width, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.unblockable = true;
		
		if (creator.player == o_player1)
		{
		var target = instance_create_layer(_x + unit_width/2, _y - unit_height, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 120;
				target.unblockable = true;
			
		var target = instance_create_layer(_x + unit_width/2, _y - (unit_height-25), "Units", o_dmgTarget);
				target.creator = id;
				target.unblockable = true;
				
			
		var target = instance_create_layer(_x - unit_width/2, _y - (unit_height-25), "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
				target.unblockable = true;
		}
		else
		{
		var target = instance_create_layer(_x + unit_width/2, _y + unit_height, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = -120;
				target.unblockable = true;
			
		var target = instance_create_layer(_x + unit_width/2, _y + (unit_height-25), "Units", o_dmgTarget);
				target.creator = id;
				target.unblockable = true;
				
			
		var target = instance_create_layer(_x - unit_width/2, _y + (unit_height-25), "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
				target.unblockable = true;
		}
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 240;
				target.unblockable = true;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 300;
				target.unblockable = true;
				
		}
		break;
		#endregion
		
	case "Assassin":
		#region ASSASIN
		{
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 60;
				
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 120;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				
		var target = instance_create_layer(_x - unit_width, _y, "Units", o_dmgTarget);
				target.creator = id;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 180;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 240;
			
		var target = instance_create_layer(_x, _y, "Units", o_dmgTarget);
				target.creator = id;
				target.image_angle = 300;
				
		}
		break;
		#endregion
		
	}