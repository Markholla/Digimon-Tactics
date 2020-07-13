draw_set_font(f_uAttack);
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
var x_align = choose(-shake*100, shake*100);

draw_text_transformed_color(x + x_align ,y,"-" + string(damage), 2.5, 2.5, angle,c_white,c_white,c_white,c_white,alpha);
draw_text_transformed_color(x + x_align,y,"-" + string(damage), 2.5, 2.5, angle,c_red,c_red,c_red,c_red,alpha/2);
draw_set_font(noone);
draw_set_halign(noone)
draw_set_valign(noone)