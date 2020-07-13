event_inherited();

name = "V-dramon"
family = s_Dragon;
family_card = s_Dragon_card;
attribute = "Vaccine";
level = "Champion";
card = s_Vdramon_card;

type = "Warrior";
hit_effect = s_Slash;

//STATS
max_hp = 14;
max_mp = 3;
mp = 1;
atk = 6;

Initialize_Unit();

//DIGIVOLVE
digi[0] = "V-dramon";
digi_target[0] = "AeroV-dramon";
digi_no[0] = 2;