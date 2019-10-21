
var arcaneBolt;

if image_xscale < 0 {
	arcaneBolt = instance_create_layer(x-20,y,"Foreground",obj_arcaneBolt);
	arcaneBolt.image_xscale = -abilities[0].sizeMod;
} else if image_xscale > 0 {
	arcaneBolt = instance_create_layer(x+20,y,"Foreground",obj_arcaneBolt);
	arcaneBolt.image_xscale = abilities[0].sizeMod;
}
arcaneBolt.image_yscale = abilities[0].sizeMod;

arcaneBolt.avgDamage *= damageMult*abilities[0].damageMod;
if random(1) < criticalHitChance*abilities[0].critChanceMod {
	arcaneBolt.criticalHit = true;
}