///@arg unit
///@arg type

var unit = argument0
var type = argument1;

switch(type)
	{
	case "Reserve":
		{
		var i = 0;
		
		while (i < 18)
			{
			var inst = instance_find(o_rvZone,i);
			if (inst.player == unit.player)
				{
				if !(inst.occupied)
					{
					return inst;
					}
				}
			i++;
			}
		return noone;
			
		}
		break;
		
	case "Start":
		{
		var i = 0;
		
		while (i < 8)
			{
			var inst = instance_find(o_Start,i);
			if (inst.player == unit.player)
				{
				if !(inst.occupied)
					{
					return inst;
					}
				}
			i++;
			}
		return noone;	
		}
		break;
		
	}