/// @description Insert description here
// You can write your code in this editor

chunkSize = 8;
loadRange = 800;
blocks = ds_grid_create(chunkSize,chunkSize);

ds_grid_set_region(blocks,0,0,chunkSize-1,chunkSize-1,-1);