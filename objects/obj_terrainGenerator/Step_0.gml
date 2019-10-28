/// @description Insert description here
// You can write your code in this editor

while x < obj_player.x+(terrainGenAhead*16) {
	switch biome {
		case PLAINS:
			maxSlope = 0.4;
			slopeChange = 0.2;
			groundThickness = 2;
			break;
		case FLAT:
			maxSlope = 0;
			slopeChange = 0.01;
			groundThickness = 2;
			break;
		case HILLS:
			maxSlope = 1.5;
			slopeChange = 0.5;
			groundThickness = 2;
			break;
	}
	
	var randomThreshold;
	if slope > maxSlope {
		randomThreshold = 1;
	} else if slope < -maxSlope {
		randomThreshold = 0;
	} else {
		randomThreshold = 0.5;
	}
	
	if random(1) >= randomThreshold {
		slope += random(slopeChange);
	} else {
		slope -= random(slopeChange);
	}
	
	currentHeight += slope;
	
	if random(1) < 1/300 and biomeChangeCooldown < 0 {
		biome = irandom(2);
		biomeChangeCooldown = biomeChangeCooldownAdd;
	}
	
	var trueY = room_height-round(currentHeight)*16;
	for (var i = 0; i < groundThickness; i++) {
		createBlock(x,trueY+16*i,0);
	}
	biomeChangeCooldown--;
	x += 16;
}