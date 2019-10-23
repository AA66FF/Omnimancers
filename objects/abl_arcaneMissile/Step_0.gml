/// @description Insert description here
// You can write your code in this editor

if casting {
	for (var i = 0; i < 3+extraProjectiles; i++) {
		var arcaneMissile;

		if caster.image_xscale < 0 {
			arcaneMissile = instance_create_layer(caster.x-20,caster.y,"Foreground",obj_arcaneMissile);
			arcaneMissile.image_xscale = -sizeMod;
		} else if caster.image_xscale > 0 {
			arcaneMissile = instance_create_layer(caster.x+20,caster.y,"Foreground",obj_arcaneMissile);
			arcaneMissile.image_xscale = sizeMod;
		}
		arcaneMissile.image_angle = 60+random(60);
		arcaneMissile.image_yscale = sizeMod;

		arcaneMissile.avgDamage *= caster.damageMult*damageMod;
		if random(1) < caster.criticalHitChance*critChanceMod {
			arcaneMissile.criticalHit = true;
		}
	}
	casting = false;
	cooldown = baseCooldown*cooldownMod
}

cooldown -= 1;