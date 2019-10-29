/// @description Insert description here
// You can write your code in this editor

vel = 6;
age += 1;
x += vel*dcos(-image_angle);
y += vel*dsin(-image_angle);

if age > 30 {
	instance_destroy(self,true);
}