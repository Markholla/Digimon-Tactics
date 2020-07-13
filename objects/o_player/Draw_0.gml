var wave;
wave = Wave(-5,5,2,0);


draw_sprite_ext(s_player_unit, 0, x + random_range(-shake*1.5, shake*1.5), y + random_range(-shake*1.2, shake*1.2) + wave, 1.1, 1.1, o_camera.angle, c_white, 1);
draw_sprite_ext(char_unit, (o_Master.BATTLE and field_total == 0), x + random_range(-shake*1.5, shake*1.5), y + random_range(-shake*1.2, shake*1.2) + wave, 1, 1, o_camera.angle, c_white, 1);

if (hitted != noone)
	{
	draw_sprite_ext(s_unit_target, 0, x + random_range(-shake*1.5, shake*1.5), y + random_range(-shake*1.2, shake*1.2) + wave, 1, 1, o_camera.angle, c_white, 1);
	if (position_meeting(mouse_x, mouse_y, id))
		draw_sprite_ext(s_unit_target, 0, x + random_range(-shake*1.5, shake*1.5), y + random_range(-shake*1.2, shake*1.2) + wave, 1.05, 1.05, o_camera.angle, c_white, 1);
	}