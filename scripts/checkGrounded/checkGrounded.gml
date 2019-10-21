objectToCheck = argument0;
objectBottom = y+(sprite_get_bbox_bottom(objectToCheck.sprite_index)-sprite_get_yoffset(objectToCheck.sprite_index))*image_yscale;

checkLeft = instance_position(objectToCheck.x-6,objectBottom+2,obj_groundBlock);
checkRight = instance_position(objectToCheck.x+6,objectBottom+2,obj_groundBlock);

if (checkLeft != noone and checkLeft.isFloor) or (checkRight != noone and checkRight.isFloor) {
	return true;
} else {
	return false;
}