var blockX = argument0;
var blockY = argument1;
var blockId = argument2;

var block = instance_create_layer(blockX,blockY,"Foreground",obj_groundBlock);
block.blockId = blockId;

if blockId == 0 {
	block.terrain = true;
}

var chunk = instance_position(blockX,blockY,obj_chunk);

if chunk == noone {
	chunk = instance_create_layer(128*floor(blockX/128),128*floor(blockY/128),"Foreground",obj_chunk);
}

var dsGridX = floor((blockX-chunk.x)/16);
var dsGridY = floor((blockY-chunk.y)/16);

ds_grid_set(chunk.blocks,dsGridX,dsGridY,blockId);

unloadBlock(block);