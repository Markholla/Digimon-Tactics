in_shop = false;
main_state = "idle";
move_state = "idle";
attack_state = "idle";
dead = false;
bin = false;

dissolve = 1;

name = noone;
attribute = noone;
family = noone;
family_card = noone;
level = "Rookie";

type = "Warrior";
hit_effect = noone;

player = o_player;

mx = x;
my = y;
mvenue = noone;
in = "nothing";
angle = 0;
shake = 0;
x_disp = 0;
y_disp = 0;
highlight = false;


//STATS
max_hp = 12;
hp = max_hp
hp_disp = hp;
hp_red = hp_disp;

max_mp = 2;
mp = 2;
mp_disp = mp;
mp_red = mp_disp;

atk = 40;
r_atk = atk;

stats = instance_create_layer(x,y,layer_get_id("Information"),o_unitStats)
with(stats)
	{
	creator = other.id;
	}
	
//digivolve = instance_create_layer(x,y,"Active_Units",o_digivolve)
//digivolve.creator = id;