/// @description Insert description here
// You can write your code in this editor

//AI

if obj_player.x < x and not stunned {
	xVel -= walkingSpeed;
} else {
	xVel += walkingSpeed;
}

event_inherited();
