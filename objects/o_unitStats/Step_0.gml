x = creator.x + creator.x_disp;
y = creator.y + creator.y_disp;

layer = layer_get_id("Information");

creator.hp_disp = lerp(creator.hp_disp, creator.hp, 0.2);
creator.hp_red = lerp(creator.hp_red, creator.hp_disp, 0.12);

creator.mp_disp = lerp(creator.mp_disp, creator.mp, 0.2);
creator.mp_red = lerp(creator.mp_red, creator.mp_disp, 0.12);

if (creator.hp_disp != creator.hp)
	{
	disp = true;
	}
else
	{
	disp = false;
	}

if creator.hp <= 0
	{
	creator.hp = 0;
	
	if(death_gain == false)
		{
		var enemy;
	
		if (creator.player == o_player1)
			enemy = o_player2;
		else
			enemy = o_player1;
		
		gold_Calc(enemy, irandom_range(creator.gold,creator.gold*1.5), "+", x + random_range(-20,-35), y + random_range(-5,-10), 0.8);
		exp_gain(enemy, irandom_range(creator.gold/1.5,creator.gold), x + random_range(20, 35), y + random_range(1,-5), 0.8);
		death_gain = true;
		}
	}
	
if creator.hp_disp <= 0
	{
	o_Master.display_movement = false;
	creator.dead = true;
	creator.hp_disp = 0;
	}

if creator.hp > creator.max_hp
	creator.hp = creator.max_hp;

if creator.mp > creator.max_mp
	creator.mp = creator.max_mp;
	
	