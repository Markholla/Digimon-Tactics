instance_destroy(id);

if (o_Master.display == id)
	o_Master.display = noone;
	
if (id == player.main_selected)
	player.main_selected = noone;