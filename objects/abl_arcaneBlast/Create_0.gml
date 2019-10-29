/// @description Insert description here
// You can write your code in this editor

type = UTILITY;
baseAnimTime = 180;
baseDelay = 180;
baseCooldown = 600;

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