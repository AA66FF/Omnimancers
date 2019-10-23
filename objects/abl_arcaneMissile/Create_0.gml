/// @description Insert description here
// You can write your code in this editor


type = SECONDARY;
baseAnimTime = 90;
baseDelay = 60;
baseCooldown = 360;

damageMod = 1;
critChanceMod = 1;
cooldownMod = 1;
cooldown = 0;
sizeMod = 2;
timeMod = 1;
extraProjectiles = 0;

casterBuffsPassive = [];
casterBuffsOnCast = [];

caster = obj_player;
casting = false;

animationTime = ceil(baseAnimTime*timeMod);
delay = ceil(baseDelay*timeMod);