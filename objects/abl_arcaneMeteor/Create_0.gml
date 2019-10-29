/// @description Insert description here
// You can write your code in this editor

type = ULTIMATE;
baseAnimTime = 150;
baseDelay = 150;
baseCooldown = 2400;

damageMod = 1;
critChanceMod = 1;
cooldownMod = 1;
cooldown = 0;
sizeMod = 2;
timeMod = 1;

casterBuffsPassive = [];
casterBuffsOnCast = [];

caster = obj_player;
casting = false;

animationTime = ceil(baseAnimTime*timeMod);
delay = ceil(baseDelay*timeMod);