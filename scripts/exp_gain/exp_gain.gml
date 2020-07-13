///@arg player
///@arg amount
///@arg x
///@arg y
///@arg size

var player = argument[0];
var amount = argument[1];

if (argument_count > 2)
	{
	var x_loc = argument[2];
	var y_loc = argument[3];
	
	if (argument_count > 4)
		{
		var size = argument[4];
		}
	else
		{
		var size = 1.5;
		}
	}
else
	{
	var x_loc = mouse_x;
	var y_loc = mouse_y;
	var size = 1.5;
	}
	
if (player.Level != 10)
	{
	player.XP += amount;

	var popup = instance_create_layer(x_loc,y_loc,"Information",o_exppopup);
	popup.damage = amount;
	popup.size = size;
	}