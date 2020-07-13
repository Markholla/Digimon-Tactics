draw_set_font(f_uAttack);
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

draw_text_transformed_color(x,y,type + string(damage), size, size, angle,c_orange,c_orange,c_orange,c_orange,alpha);
draw_text_transformed_color(x,y,type + string(damage), size, size, angle,c_white,c_white,c_white,c_white,alpha/2);
draw_set_font(noone);
draw_set_halign(noone)
draw_set_valign(noone)