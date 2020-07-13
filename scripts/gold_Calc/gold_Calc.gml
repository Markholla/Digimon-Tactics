///@arg player
///@arg amount
///@arg sub?add


var player = argument[0];
var amount = argument[1];
var type = argument[2];

if (argument_count == 3)
	{
	var loc_x = mouse_x;
	var loc_y = mouse_y;
	}
else
	{
	var loc_x = argument[3];
	var loc_y = argument[4];	
	}

if (argument_count == 6)
	var size = argument[5];
else
	var size = 1.5;

if (type == "-")
	{
	if (player.gold < amount)
		{
		show_message("NOT ENOUGH GOLD");
		return false;
		}
	else
		{
		player.gold -= amount;
		
		var popup = instance_create_layer(loc_x,loc_y,"Information",o_goldpopup);
		popup.damage = amount;
		popup.type  = "-";
		popup.size = size;
		return true;
		}
	}

else if (type == "+")
	{
	if (player.gold + amount >= 1000)
		{
		show_message("BRUH, you already got a 1000.");
		return true;
		}
	else
		{
		player.gold += amount;
		
		var popup = instance_create_layer(loc_x,loc_y,"Information",o_goldpopup);
		popup.damage = amount;
		popup.type  = "+";
		popup.size = size;
		return true;
		}
	}
	