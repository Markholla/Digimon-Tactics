event_inherited();

name = "AeroV-dramon"
family = s_Dragon;
family_card = s_Dragon_card;
attribute = "Vaccine";
level = "Ultimate";
card = s_AeroVdramon_card;

type = "Raider";
hit_effect = s_Slash;

//STATS
max_hp = 24;
max_mp = 3;
mp = 1;
atk = 14;

Initialize_Unit();

//DIGIVOLVE
digi[0] = "AeroV-dramon";
digi_target[0] = "UlforceV-dramon";
digi_no[0] = 2;