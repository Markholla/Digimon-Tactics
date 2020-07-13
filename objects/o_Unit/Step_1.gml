if (dead)
	{
	if !(in_shop)
	{
	var location;
	if (in == "Zone")
		location = "Field";
 
	if (in == "Start")
		location = "Start";
	
	if (in == "Reserve")
		location = "Reserve";
	Remove_Unit(id, location);
	in_shop = true;
	}
		
	if (o_Master.alarm[1] == -1)
		o_Master.alarm[1] = 30;
		
	if (alarm[3] == -1)
		alarm[3] = 60;	
	}
	