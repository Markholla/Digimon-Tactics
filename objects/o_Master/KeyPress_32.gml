/*var i = 0;

while (i <= 48)
	{
	show_debug_message(Zone[i].place);
	i++;
	}*/

//show_debug_message(array_length_1d(control.field_units));

var list = control.field_units;

for(var z = 0; z <= ds_list_size(list)-1; z += 1)
	{
	var value = ds_list_find_value(list,z);
		
		show_debug_message(string(value.name) + " : " + string(value));
	}

show_debug_message("Total Units: " + string(control.field_total));

var list = control.start_units;

for(var z = 0; z <= ds_list_size(list)-1; z += 1)
	{
	var value = ds_list_find_value(list,z);
		
		show_debug_message(string(value.name) + " : " + string(value));
	}

show_debug_message("Total Units: " + string(control.start_total));

/*if (control.DRAGON != 0)
	show_debug_message(string(control.DRAGON) + " number of dragons.");