/// @description
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

state = IDLING;
castingAbility = false;
grounded = false;
leavingGround = false;

frictionEnabled = true;
baseFriction = 0.15;
jumpCooldown = 0;
jumpCooldownAdd = 10;

walkingSpeed = 1.5;
groundedControl = 0.3;
airborneControl = 0.03;
gravityAcc = 0.2;
jumpHeight = 40;
jumpPower = 2*gravityAcc*sqrt((jumpHeight-2)/gravityAcc);
extraJumps = 0;
extraJumpsCap = 0;

hp = 40;
maxHp = 40;
armor = 2;
damageMult = 1;
criticalHitChance = 0.01;
animationTime = 0;
delay = 0;
delayedAbility = -1;
mp = 100;
maxMp = 100;

var startingPrimary = instance_create_layer(0,0,"Foreground",abl_arcaneBolt);

abilitySlotTypes = [PRIMARY,SECONDARY,UTILITY,ULTIMATE,PASSIVE,PASSIVE];
abilities = [startingPrimary,"","","","",""];

xVel = 0;
yVel = 0;
xAcc = 0;
yAcc = 0;

spriteBottom = y+sprite_get_bbox_bottom(self.sprite_index)*image_yscale;
spriteLeft = x+sprite_get_bbox_left(self.sprite_index)*image_xscale;
spriteTop = y+sprite_get_bbox_top(self.sprite_index)*image_yscale;
spriteRight = x+sprite_get_bbox_right(self.sprite_index)*image_xscale;