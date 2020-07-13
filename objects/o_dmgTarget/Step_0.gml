if (image_index >= steps)
	image_index = steps;

if (creator.attack_state != "selected") and (creator.attack_state != "movement") 
	{
	image_speed = 2.5;
	image_index -= 1;
	
	if (image_index <= 1)
		instance_destroy(id);
	}
if (creator.attack_state != "selected") and (creator.attack_state == "movement")
	instance_destroy(id);