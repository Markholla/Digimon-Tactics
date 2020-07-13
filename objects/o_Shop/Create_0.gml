image_speed = 0;
_id = 0;

in_movement = 0

unit_id = instance_create_layer(x,y,"Shop_Units",Unit_Generate());
unit_id.player = o_Master.control;
unit_id.in_shop = true;

if (Find_Unit(unit_id, "All"))
	image_index = 1;
else
	image_index = 0;