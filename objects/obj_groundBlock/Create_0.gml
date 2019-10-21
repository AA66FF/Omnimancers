/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

if position_meeting(x+sprite_width*0.5,y-1,obj_groundBlock) {
	isFloor = false;
} else {
	isFloor = true;
}