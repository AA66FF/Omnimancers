/// @description Insert description here
// You can write your code in this editor

var damage = 0.8*avgDamage+random(0.4*avgDamage)

other.hp -= damage;

if dcos(-image_angle) < 0 {
	other.xVel -= 0.5;
	other.stunned = true;
}
if dcos(-image_angle) > 0 {
	other.xVel += 0.5;
	other.stunned = true;
}

instance_destroy(self,true);