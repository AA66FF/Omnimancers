var blockX = argument0;
var blockY = argument1;
var blockId = argument2;

var block;
if blockId != -1 {
	block = instance_create_layer(blockX,blockY,"Foreground",obj_groundBlock);
	block.blockId = blockId;
}

if blockId == 0 {
	block.terrain = true;
}