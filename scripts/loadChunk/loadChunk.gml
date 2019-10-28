var chunk = argument0;

unloadChunk(chunk);

for (var i = 0; i < 8; i++) {
	for (var j = 0; j < 8; j++) {
		loadBlock(chunk.x+i*16,chunk.y+j*16,ds_grid_get(chunk.blocks,i,j));
	}
}