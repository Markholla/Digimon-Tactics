///@arg Damage
///@arg Creator
///@arg Target
///@arg Shake
///@arg v_mov
///@arg sprite

var dmg = argument0;
var creator = argument1
var target = argument2;
var shake = argument3;
var v_mov = argument4;
var sprite = argument5;


var damage = instance_create_layer(target.x, target.y, "Information", o_damage);

damage.damage = dmg;
damage.creator = creator;
damage.shake = shake;
damage.v_mov = v_mov;

if !(sprite == noone)
damage.sprite_index = sprite;

if (o_Master.control == o_player1)
	damage.image_angle = 0;
else
	damage.image_angle = 180;

damage.image_xscale = 2;
damage.image_yscale = 2;