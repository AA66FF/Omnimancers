/// @description Insert description here
// You can write your code in this editor

if casting {
	for (var i = 0; i < 12; i++) {
		var arcaneBlast;

		arcaneBlast = instance_create_layer(caster.x,caster.y,"Foreground",obj_arcaneBlast);
		arcaneBlast.image_angle = 30*i
		arcaneBlast.x += 15*dcos(-image_angle);
		arcaneBlast.y += 15*dsin(-image_angle);
		arcaneBlast.image_xscale = sizeMod;
		arcaneBlast.image_yscale = sizeMod;

		arcaneBlast.avgDamage *= caster.damageMult*damageMod;
		if random(1) < caster.criticalHitChance*critChanceMod {
			arcaneBlast.criticalHit = true;
		}
	}
	casting = false;
	cooldown = baseCooldown*cooldownMod
}

cooldown -= 1;