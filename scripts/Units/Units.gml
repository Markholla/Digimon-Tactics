///@arg Player

var player = argument0;

var i = 0;
var j = 0;
player.field_units = 0;
player.total_units = 0;

while (i <= 48)
	{
	if (o_Master.Zone[i].occupied != noone) and (o_Master.Zone[i].occupied.player == player)
		{
		player.field_units[j] = o_Master.Zone[i].occupied;
		j++;
		player.total_units++;
		}
	i++;
	}