if (o_Master.control == o_player1)
	y = y - v_mov;
else
	y = y + v_mov;

alpha -= 0.02;
shake -= 0.01;

if (alpha <= 0.1)
	instance_destroy();
if (shake <= 0)
	shake = 0;