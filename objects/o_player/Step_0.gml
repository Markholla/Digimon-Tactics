field_total = ds_list_size(field_units);
reserve_total = ds_list_size(reserve_units);
start_total = ds_list_size(start_units);

var mouse_lb = mouse_check_button_pressed(mb_left);
var mouse_in = position_meeting(mouse_x, mouse_y, id)

#region BASIC STATS
if (XP < 4)
	{
	Level = 1;
	maxXP = 4;
	_XP = 0;
	}
else if (XP >= 4 and XP < 8)
	{
	Level = 2;
	maxXP = 8;
	_XP = 3.5;
	}
else if (XP >= 8 and XP < 14)
	{
	Level = 3;
	maxXP = 14;
	_XP = 7.5;
	}
else if (XP >= 14 and XP < 20)
	{
	Level = 4;
	maxXP = 20;
	_XP = 13.5;
	}
else if (XP >= 20 and XP < 28)
	{
	Level = 5;
	maxXP = 28;
	_XP = 19.5;
	}
else if (XP >= 28 and XP < 40)
	{
	Level = 6;
	maxXP = 40;
	_XP = 27.5;
	}
else if (XP >= 40 and XP < 54)
	{
	Level = 7;
	maxXP = 54;
	_XP = 39.5;
	}
else if (XP >= 54 and XP < 68)
	{
	Level = 8;
	maxXP = 68;
	_XP = 53.5;
	}
else if (XP >= 68 and XP < 80)
	{
	Level = 9;
	maxXP = 80;
	_XP = 67.5;
	}
else
	{
	XP = 80;
	Level = 10;
	maxXP = 80;
	_XP = 0;
	}

if !(o_Master.BATTLE)
	{
	XPdisp = lerp(XPdisp, XP - _XP, 0.05);
	maxXPdisp = maxXP - _XP;

	Health_Disp = lerp(Health_Disp, Health, 0.2);
	Health_Red = lerp(Health_Red, Health_Disp, 0.08);

	DS_Disp = lerp(DS_Disp, DS, 0.2);
	DS_Red = lerp(DS_Red, DS_Disp, 0.08);
	}

gold_disp = (lerp(gold_disp,gold,0.2));
#endregion

#region BATTLE


if (hitted != noone)
	{
	if (mouse_lb) and (mouse_in) and (hitted.player != id)
		{
		hitted.attack_state = "attack";
		Damage(hitted.atk, hitted, id, 3, 2, hitted.hit_effect);
		}
	}
	
#endregion
 
#region SHOP
if (phase == "Main")
	{
	if !(shop_created)
		{
		for(var i=0; i < 5; i++)
			{
			shop_id[i] = instance_create_layer(3992,3934,"Shop", o_Shop);
			shop_id[i]._id = i;
			}
		shop_created = true;
		o_Master.shop_movement = true;
		}
	}
else if (phase == "Move")
	{
	o_Master.shop_movement = false;
	shop_created = false;
	}
else if (phase == "Attack")
	{
	for(var i=0; i < 5; i++)
		{
		instance_destroy(shop_id[i]);
		}
	shop_created = false;
	}
#endregion
