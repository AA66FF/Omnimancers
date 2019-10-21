/// @description Insert description here
// You can write your code in this editor

if casting {
	var arcaneBolt;

	if caster.image_xscale < 0 {
		arcaneBolt = instance_create_layer(caster.x-20,caster.y,"Foreground",obj_arcaneBolt);
		arcaneBolt.image_xscale = -sizeMod;
	} else if caster.image_xscale > 0 {
		arcaneBolt = instance_create_layer(caster.x+20,caster.y,"Foreground",obj_arcaneBolt);
		arcaneBolt.image_xscale = sizeMod;
	}
	arcaneBolt.image_yscale = sizeMod;

	arcaneBolt.avgDamage *= caster.damageMult*damageMod;
	if random(1) < caster.criticalHitChance*critChanceMod {
		arcaneBolt.criticalHit = true;
	}
	
	casting = false;
}