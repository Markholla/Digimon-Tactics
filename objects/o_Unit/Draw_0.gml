/*if (move_state = "finished") or (attack_state == "finished")
	{
	var alpha = 0.5;
	shader_set(shd_grayscale);
	var col = c_dkgray;
	}
else
	{
	var alpha = 1;
	var col = c_white;
	}*/
if (hp <= 0) or (bin)
	{
	dissolve = lerp(dissolve, 0, 0.2)
	}
	
draw_sprite_ext(s_Back,0,x + x_disp,y + y_disp,1,1,angle,c_white,dissolve);
draw_sprite_ext(sprite_index,0,x + x_disp,y + y_disp,1,1,angle,c_white,dissolve);
//shader_reset();
if (move_state == "finished") or (attack_state == "finished")
	draw_sprite_ext(s_Back,0,x + x_disp,y + y_disp,1,1,angle,c_black,0.3);
draw_sprite_ext(s_Front,0,x + x_disp,y + y_disp,1,1,angle,c_white,dissolve);
draw_sprite_ext(family,0,x + x_disp,y + y_disp,1,1,angle,c_white,dissolve);
if (move_state == "finished") or (attack_state == "finished")
	draw_sprite_ext(family,0,x + x_disp,y + y_disp,1,1,angle,c_black,0.2);

var inst = instance_place(x,y,o_Zone)

if (inst != noone) and (inst.attack_state == "attackable") and !(dead)
	{
	draw_sprite_ext(s_tgt,0,x + x_disp,y + y_disp,1,1,angle,c_white,1);
	}