var Rookie = choose(
						o_Vmon);
						
var Champion = choose(
						o_Vdramon);

var Ultimate = choose(
						o_AeroVdramon);
						
var Mega = choose(
						o_UlforceVdramon);
						

if (o_Master.control.Level == 1)
	return choose(Rookie);
else if (o_Master.control.Level == 2)
	return choose(Rookie, Rookie, Rookie, Rookie, Rookie, Champion);
else if (o_Master.control.Level == 3)
	return choose(Rookie, Rookie, Rookie, Champion);
else if (o_Master.control.Level == 4)
	return choose(Rookie, Rookie, Rookie, Rookie, Champion, Champion);
else if (o_Master.control.Level == 5)
	return choose(Rookie, Rookie, Rookie, Rookie, Rookie, Champion, Champion, Champion, Champion, Ultimate);
else if (o_Master.control.Level == 6)
	return choose(Rookie, Rookie, Rookie, Rookie, Champion, Champion, Ultimate);
else if (o_Master.control.Level == 7)
	return choose(Rookie, Rookie, Champion, Champion, Champion, Ultimate, Ultimate);
else if (o_Master.control.Level == 8)
	return choose(Rookie, Rookie, Champion, Champion, Champion, Ultimate, Ultimate);
else if (o_Master.control.Level == 9)
	return choose(Rookie, Rookie, Champion, Champion, Ultimate, Ultimate, Mega);
else if (o_Master.control.Level == 10)
	return choose(Rookie, Champion, Ultimate, Mega);
	