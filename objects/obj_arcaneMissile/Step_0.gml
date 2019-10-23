/// @description Insert description here
// You can write your code in this editor

var target = instance_nearest(x,y,obj_enemyParent);
if target != noone {
	var pd = point_direction(x,y,target.x,target.y);
	angleVel = 5*sign(angle_difference(image_angle,pd));
} else {
	angleVel = 5;
}

image_angle -= angleVel;
vel = 6;
age += 1;
x += vel*dcos(-image_angle);
y += vel*dsin(-image_angle);

if age > 600 {
	instance_destroy(self,true);
}