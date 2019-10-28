var chunk = argument0;

for (var i = 0; i < 8; i++) {
	for (var j = 0; j < 8; j++) {
		var block = instance_position(chunk.x+i*16+8,chunk.y+j*16+8,obj_groundBlock);
		if block != noone {
			unloadBlock(block);
		}
	}
}