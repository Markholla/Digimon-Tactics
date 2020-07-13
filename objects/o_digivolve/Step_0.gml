x = creator.x;
y = creator.y;

var mouse_in = position_meeting(mouse_x, mouse_y, creator);
var mouse_lb = mouse_check_button_released(mb_left);

var unit_height = 201;
var unit_width = 175;

if (mouse_in and mouse_lb)
	{
	for(var i = 0; i < 6; i++)
		{
		show_debug_message(string(adjacent_list[i]));
		}
	}

adjacent_list[0] = instance_position(x - unit_width, y, o_Unit);
adjacent_list[1] = instance_position(x + unit_width, y, o_Unit);
adjacent_list[2] = instance_position(x - unit_width, y - unit_height/2, o_Unit);
adjacent_list[3] = instance_position(x + unit_width, y - unit_height/2, o_Unit);
adjacent_list[4] = instance_position(x - unit_width, y + unit_height/2, o_Unit);
adjacent_list[5] = instance_position(x + unit_width, y + unit_height/2, o_Unit);
