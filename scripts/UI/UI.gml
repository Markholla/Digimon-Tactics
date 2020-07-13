///@arg show?hide

var type = argument0;
var master = o_Master;

switch(type)
	{
	case "show":
		{
		master.phase_movement = true;
		master.display_movement = true;
		}
		break;
		
	case "hide":
		{
		master.phase_movement = false;
		master.display_movement = false;
		
		}
		break;
		
	}