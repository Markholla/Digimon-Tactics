effect_dur = sprite_get_number(hit_effect) + 1;

//STATS
hp = max_hp
hp_disp = hp;
hp_red = hp_disp;

mp_disp = mp;
mp_red = mp_disp;

r_atk = atk;

//DIGIVOLVE
for(var i = 0; i < 6; i++)
	{
	digi[i] = noone;
	digi_target[i] = noone;
	digi_no[i] = noone;
	}

//COST
switch(level)
	{
	case "Rookie":
		gold = 1;
	break;
		
	case "Champion":
		gold = 3;
	break;
		
	case "Ultimate":
		gold = 6;
	break;	
	
	case "Mega":
		gold = 8;
	break;
		
	}