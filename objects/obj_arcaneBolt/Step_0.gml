/// @description Insert description here
// You can write your code in this editor

if image_xscale > 0 {
	x += projectileSpeed;
} else if image_xscale < 0 {
	x -= projectileSpeed;
}

if abs(projectileSpeed) < maxProjectileSpeed {
	projectileSpeed += accelSpeed;
}