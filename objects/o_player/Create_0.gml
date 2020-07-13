phase = "Start";

mx = o_Zone.x;
my = o_Zone.y;
shake = 0;
hitted = noone;

main_selected = noone;
move_selected = noone;
attack_selected = noone;
menu_selected = noone;

/*
field_units[9] = noone;
total_units = 0;
*/

///STATS
Level = 1;
XP = 0;
XPdisp = XP;
_XP = 0;
maxXP = 20;
maxXPdisp = maxXP;
in = 0;

gold = 2;
gold_disp = gold;

Max_Health = 100
Health = Max_Health;
Health_Disp = Health;
Health_Red = Health_Disp;

Max_DS = 10
DS = 10;
DS_Disp = DS;
DS_Red = DS_Disp;


field_units = ds_list_create();
field_total = 0;

DRAGON = 0;
BEAST = 0;
AQUATIC = 0;
BIRD = 0;
MACHINE = 0;
HOLY = 0;
DARKNESS = 0;
JUNGLE = 0;

ROOKIE = 0;
CHAMPION = 0;
ULTIMATE = 0;
MEGA = 0;
ULTRA = 0;

reserve_units = ds_list_create();
reserve_total = 0;

start_units = ds_list_create();
start_total = 0;

shop_id[5] = noone;
shop_created = false;