/// @description Insert description here
// You can write your code in this editor

if casting {
	var arcaneMeteor;
	
	if caster.image_xscale < 0 {
		arcaneMeteor = instance_create_layer(caster.x-160,caster.y-500,"Foreground",obj_arcaneMeteor);
	} else {
		arcaneMeteor = instance_create_layer(caster.x+160,caster.y-500,"Foreground",obj_arcaneMeteor);
	}
	arcaneMeteor.image_xscale = sizeMod;
	arcaneMeteor.image_yscale = sizeMod;

	arcaneMeteor.avgDamage *= caster.damageMult*damageMod;
	if random(1) < caster.criticalHitChance*critChanceMod {
		arcaneMeteor.criticalHit = true;
	}
	casting = false;
	cooldown = baseCooldown*cooldownMod
}

cooldown -= 1;