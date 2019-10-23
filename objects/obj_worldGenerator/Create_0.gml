/// @description generates the world
// You can write your code in this editor

world = [];
worldWidth = 2000;
worldHeight = 100;

altitudeMap = [];
for (var i = 0; i < worldWidth+20; i++) {
	altitudeMap[i] = round(worldHeight*1/3);
}


for (var i = 0; i < worldWidth; i++) {
	for (var j = 0; j < worldHeight; j++) {
		world[i,j] = noone;
	}
}