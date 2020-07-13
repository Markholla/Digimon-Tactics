event_inherited();

name = "UlforceV-dramon"
family = s_Dragon;
family_card = s_Dragon_card;
attribute = "Vaccine";
level = "Mega";

card = s_UlforceVdramon_card;

type = "Assassin";
hit_effect = s_Slash;
effect_dur = sprite_get_number(hit_effect) + 1;

//STATS
max_hp = 42;
max_mp = 2;
mp = 1;
atk = 32;

Initialize_Unit();