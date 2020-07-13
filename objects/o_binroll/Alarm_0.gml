var shop = o_Master.control.shop_id;

for(var i = 0; i < 5; i++)
	{
	if (shop[i].unit_id != noone)
		{
		shop[i].unit_id.x = 5000;
		shop[i].unit_id.y = 5000;
		shop[i].unit_id.alarm[3] = 60;
		shop[i].unit_id = noone;
		}
	shop[i].unit_id = instance_create_layer(x,y,"Shop_Units",Unit_Generate());
	shop[i].unit_id.player = o_Master.control;
	shop[i].unit_id.in_shop = true;	
	
	if (Find_Unit(shop[i].unit_id, "All"))
		shop[i].image_index = 1;
	else
		shop[i].image_index = 0;
	}
o_Master.shop_movement = true;