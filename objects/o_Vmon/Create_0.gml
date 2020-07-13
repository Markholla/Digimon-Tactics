event_inherited();

name = "V-mon"
family = s_Dragon;
family_card = s_Dragon_card;
attribute = "Vaccine";
level = "Rookie";
card = s_Vmon_card;

type = "Soldier";
hit_effect = s_Slash;

//STATS
max_hp = 6;
max_mp = 2;
mp = 1;
atk = 2;

Initialize_Unit();

//DIGIVOLVE
digi[0] = "V-mon";
digi_target[0] = "V-dramon";
digi_no[0] = 2;
digi[1] = "V-mon";
digi_target[1] = "XV-mon";
digi_no[1] = 3;