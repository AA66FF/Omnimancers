/// @description

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

// Input

if castingAbility == -1 {
	if keyboard_check(ord("Z")) {
		delay = abilities[0].delay;
		animationTime = abilities[0].animationTime;
		delayedAbility = 0;
		castingAbility = 0;
		state = ABILITY_FORWARD;
	}
	if keyboard_check(ord("X")) {
		delay = abilities[1].delay;
		animationTime = abilities[1].animationTime;
		delayedAbility = 1;
		castingAbility = 1;
		state = ABILITY_FORWARD;
	}
	if keyboard_check(ord("C")) {
		delay = abilities[2].delay;
		animationTime = abilities[2].animationTime;
		delayedAbility = 2;
		castingAbility = 2;
		state = ABILITY_FORWARD;
	}
	if keyboard_check(ord("V")) {
		delay = abilities[3].delay;
		animationTime = abilities[3].animationTime;
		delayedAbility = 3;
		castingAbility = 3;
		state = ABILITY_FORWARD;
	}
}

if castingAbility == -1 {
	if grounded {
		if keyboard_check(ord("A")) and !keyboard_check(ord("D")) {
			xAcc = -groundedControl*walkingSpeed;
			image_xscale = -2;
			state = WALKING;
		} else if keyboard_check(ord("D")) and !keyboard_check(ord("A")) {
			xAcc = groundedControl*walkingSpeed;
			image_xscale = 2;
			state = WALKING;
		} else {
			state = IDLING;
		}
		if keyboard_check(vk_space) and jumpCooldown < 0 {
			y -= 2;
			yVel = 0;
			yAcc = -jumpPower;
			jumpCooldown = jumpCooldownAdd;
			state = JUMPING;
		}
	}

	if not grounded {
		if keyboard_check(ord("A")) and !keyboard_check(ord("D")) {
			xAcc = -airborneControl*walkingSpeed;
		} else if keyboard_check(ord("D")) and !keyboard_check(ord("A")) {
			xAcc = airborneControl*walkingSpeed;
		}
		state = FLYING;
		if keyboard_check_pressed(vk_space) and jumpCooldown < 0 and extraJumps > 0 {
			y -= 2;
			yVel = 0;
			yAcc = -jumpPower;
			jumpCooldown = jumpCooldownAdd;
			extraJumps -= 1;
			state = JUMPING;
		}
	}
}

if jumpCooldown > 0 {
	state = JUMPING;
}

// Collision

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

/*if place_meeting(x+xVel,y+yVel,obj_groundBlock) {
	xVel = 0;
	yVel = 0;
}*/

// Sprite
switch (state) {
	case IDLING:
		sprite_index = spr_mageIdle;
		image_speed = 1;
		break;
	case WALKING:
		sprite_index = spr_mageWalk;
		image_speed = walkingSpeed/baseWalkingSpeed;
		break;
	case ABILITY_FORWARD:
		sprite_index = spr_mageWalk;
		image_speed = 0;
		if castingAbility > -1 {
			var abilityAnimTime = abilities[castingAbility].animationTime
			image_index = round(((abilityAnimTime-animationTime)/abilityAnimTime)*image_number);
		}
}

// Position
if abs(xVel) > walkingSpeed {
	xVel = sign(xVel)*walkingSpeed;
}

if xVel != 0 and frictionEnabled {
	if sign(xVel-baseFriction*sign(xVel)) != sign(xVel) {
		xAcc = 0;
		xVel = 0;
	} else {
		xAcc -= baseFriction*sign(xVel);
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
if grounded {
	extraJumps = extraJumpsCap;
}
animationTime -= 1;
if animationTime < 0 {
	castingAbility = -1;
}

delay -= 1;
if delay == 0 {
	abilities[delayedAbility].casting = true;
	delayedAbility = -1;
}
jumpCooldown -= 1;
