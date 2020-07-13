///	@player
///	@type


var unit = argument0;
var type = argument1;

switch(type)
	{
	#region FIELD
	case "Field":
		{
		var list = unit.player.field_units;
		
		if (ds_list_find_index(list, unit) == -1)
			{
			ds_list_add(list,unit);
			
			switch(unit.level)
				{
				case "Rookie":
					unit.player.ROOKIE += 1;
					break;
					
				case "Champion":
					unit.player.CHAMPION += 1;
					break;
				
				case "Ultimate":
					unit.player.ULTIMATE += 1;
					break;	
					
				case "Mega":
					unit.player.MEGA += 1;
					break;
					
				case "Ultra":
					unit.player.ULTRA += 1;
					break;
				}
				
			switch(unit.family)
				{
				case s_Dragon:
					unit.player.DRAGON += 1;
					break;
					
				case s_Beast:
					unit.player.BEAST += 1;
					break;
				
				case s_Aquatic:
					unit.player.AQUATIC += 1;
					break;	
					
				case s_Machine:
					unit.player.MACHINE += 1;
					break;
					
				case s_Bird:
					unit.player.BIRD += 1;
					break;
					
				case s_Jungle:
					unit.player.JUNGLE += 1;
					break;	
					
				case s_Holy:
					unit.player.HOLY += 1;
					break;
					
				case s_Darkness:
					unit.player.DARKNESS += 1;
					break;
				}
				
			}
		}
		#endregion
		break;
		
	#region RESERVEDRAG
	case "ReserveDrag":
		{
		var list = unit.player.reserve_units;
		
		if (ds_list_find_index(list, unit) == -1)
			ds_list_add(list,unit);
		}
	#endregion
		break;
		
	#region STARTDRAG
		case "StartDrag":
		{
		var list = unit.player.start_units;
		
		if (ds_list_find_index(list, unit) == -1)
			ds_list_add(list,unit);
			
		}
	#endregion
		break;
		
	}