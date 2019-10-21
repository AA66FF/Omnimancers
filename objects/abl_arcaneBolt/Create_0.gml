/// @description Insert description here
// You can write your code in this editor

type = PRIMARY;
baseAnimTime = 60;
baseDelay = 15;

damageMod = 1;
critChanceMod = 1;
sizeMod = 2;
timeMod = 1;
extraProjectiles = 0;

casterBuffsPassive = [];
casterBuffsOnCast = [];

caster = obj_player;
casting = false;

animationTime = ceil(baseAnimTime*timeMod);
delay = ceil(baseDelay*timeMod);