///@arg Unit
///@arg type

var unit = argument0;
var type = argument1;
var player = unit.player;

switch(type)
	{
	case "Start":
		{
		for(var i = 0; i < player.start_total; i++)
			{
			if (ds_list_find_value(player.start_units, i).name == unit.name)
				return true;
			}
		}
		break;
		
	case "Field":
		{
		for(var i = 0; i < player.field_total; i++)
			{
			if (ds_list_find_value(player.field_units, i).name == unit.name)
				return true;
			}
			
		}
		break;
		
	case "Reserve":
		{
		for(var i = 0; i < player.reserve_total; i++)
			{
			if (ds_list_find_value(player.reserve_units, i).name == unit.name)
				return true;
			}	
		}
		break;
		
	case "All":
		{
		var field = false;
		var reserve = false;
		var start = false;
		
		for(var i = 0; i < player.start_total; i++)
			{
			if (ds_list_find_value(player.start_units, i).name == unit.name)
				start = true;
			}
			
		for(var i = 0; i < player.field_total; i++)
			{
			if (ds_list_find_value(player.field_units, i).name == unit.name)
				 field = true;
			}
		
		for(var i = 0; i < player.reserve_total; i++)
			{
			if (ds_list_find_value(player.reserve_units, i).name == unit.name)
				reserve = true;
			}
			
		if (field) or (reserve) or (start)
			return true;
		
		}
		break;
		
	case "Shops":
		{
		var field = false;
		var reserve = false;
		var start = false;
		var shops = false;
		
		for(var i = 0; i < player.start_total; i++)
			{
			if (ds_list_find_value(player.start_units, i).name == unit.name)
				start = true;
			}
			
		for(var i = 0; i < player.field_total; i++)
			{
			if (ds_list_find_value(player.field_units, i).name == unit.name)
				 field = true;
			}
		
		for(var i = 0; i < player.reserve_total; i++)
			{
			if (ds_list_find_value(player.reserve_units, i).name == unit.name)
				reserve = true;
			}

		
		for(var i = 0; i < 5; i++)
			{
			if (o_Master.control.shop_id[i].unit_id != noone)
				{
				if (o_Master.control.shop_id[i].unit_id.name == unit.name)
					shops = true;
				}
			}
			
		if (field) or (reserve) or (start) or (shops)
			return true;
		
		}
		break;
	}
return false;