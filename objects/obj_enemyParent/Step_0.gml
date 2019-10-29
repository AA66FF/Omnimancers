/// @description Insert description here
// You can write your code in this editor

if grounded and !checkGrounded(self) {
	leavingGround = true;
} else {
	leavingGround = false;
}

grounded = checkGrounded(self);

if grounded {
	frictionEnabled = true;
} else {
	frictionEnabled = false;
}

var wall = instance_place(x+xVel,y,obj_groundBlock);

if wall != noone {
	if !place_meeting(x+xVel,y-20,obj_groundBlock) and wall.isFloor and yVel >= 0 {
		y -= 20;
		while !place_meeting(x+xVel,y+1,obj_groundBlock) {
			y += 1;
		}
	} else {
		while !place_meeting(x+sign(xVel),y,obj_groundBlock) {
			x += sign(xVel);
		}
		xVel = 0;
	}
}

if place_meeting(x,y+yVel,obj_groundBlock) {
	while !place_meeting(x,y+sign(yVel),obj_groundBlock) {
		y += sign(yVel);
	}
	yVel = 0;
}

// Position
if abs(xVel) > walkingSpeed {
	xVel = sign(xVel)*walkingSpeed;
}

if xVel != 0 and frictionEnabled {
	if sign(xVel-baseFriction*walkingSpeed*sign(xVel)) != sign(xVel) {
		xAcc = 0;
		xVel = 0;
	} else {
		xAcc -= baseFriction*walkingSpeed*sign(xVel);
	}
}

x += xVel;
y += yVel;
xVel += xAcc;
yVel += yAcc;
xAcc = 0;
yAcc = gravityAcc;

spriteBottom = y+sprite_get_bbox_bottom(self.sprite_index)*image_yscale;
spriteLeft = x+sprite_get_bbox_left(self.sprite_index)*image_xscale;
spriteTop = y+sprite_get_bbox_top(self.sprite_index)*image_yscale;
spriteRight = x+sprite_get_bbox_right(self.sprite_index)*image_xscale;

// End
animationTime -= 1;
if animationTime < 0 {
	castingAbility = -1;
}

delay -= 1;
jumpCooldown -= 1;

if hp <= 0 {
	instance_destroy(self,true);
}