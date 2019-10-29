/// @description Insert description here
// You can write your code in this editor

event_inherited();

baseWalkingSpeed = 0.5;
walkingSpeed = 0.5;
groundedControl = 0.3;
airborneControl = 0.03;
gravityAcc = 0.2;
jumpHeight = 20;
jumpPower = 2*gravityAcc*sqrt((jumpHeight-2)/gravityAcc);

hp = 100;
maxHp = 100;
armor = 1;
damageMult = 1;
criticalHitChance = 0.01;
animationTime = 0;
delay = 0;

spriteBottom = y+sprite_get_bbox_bottom(self.sprite_index)*image_yscale;
spriteLeft = x+sprite_get_bbox_left(self.sprite_index)*image_xscale;
spriteTop = y+sprite_get_bbox_top(self.sprite_index)*image_yscale;
spriteRight = x+sprite_get_bbox_right(self.sprite_index)*image_xscale;