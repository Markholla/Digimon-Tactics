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
		
		var pos = ds_list_find_index(list, unit);
		
		if (pos != -1)
			{
			ds_list_delete(list, pos);
			
			switch(unit.level)
				{
				case "Rookie":
					if (unit.player.ROOKIE > 0)
						unit.player.ROOKIE -= 1;
					break;
					
				case "Champion":
					if (unit.player.CHAMPION > 0)
						unit.player.CHAMPION -= 1;
					break;
				
				case "Ultimate":
					if (unit.player.ULTIMATE > 0)
						unit.player.ULTIMATE -= 1;
					break;	
					
				case "Mega":
					if (unit.player.MEGA > 0)
						unit.player.MEGA -= 1;
					break;
					
				case "Ultra":
					if (unit.player.ULTRA > 0)
						unit.player.ULTRA -= 1;
					break;
				}
				
			switch(unit.family)
				{
				case s_Dragon:
					if (unit.player.DRAGON > 0)
						unit.player.DRAGON -= 1;
					break;
					
				case s_Beast:
					if (unit.player.BEAST > 0)
						unit.player.BEAST -= 1;
					break;
				
				case s_Aquatic:
					if (unit.player.AQUATIC > 0)
						unit.player.AQUATIC -= 1;
					break;	
					
				case s_Machine:
					if (unit.player.MACHINE > 0)
						unit.player.MACHINE -= 1;
					break;
					
				case s_Bird:
					if (unit.player.BIRD > 0)
						unit.player.BIRD -= 1;
					break;
					
				case s_Jungle:
					if (unit.player.JUNGLE > 0)
						unit.player.JUNGLE -= 1;
					break;	
					
				case s_Holy:
					if (unit.player.HOLY > 0)
						unit.player.HOLY -= 1;
					break;
					
				case s_Darkness:
					if (unit.player.DARKNESS > 0)
						unit.player.DARKNESS -= 1;
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
		var place = ds_list_find_index(list,unit);
		
		if (place != -1)
			ds_list_delete(list, place);
			
		}
	#endregion
		break;
		
	#region STARTDRAG
	case "StartDrag":
		{
		var list = unit.player.start_units;
		var place = ds_list_find_index(list,unit);
		
		if (place != -1)
			ds_list_delete(list, place);
			
		}
	#endregion
		break;
		
	}