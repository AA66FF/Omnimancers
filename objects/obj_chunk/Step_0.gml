/// @description Insert description here
// You can write your code in this editor

if abs(obj_player.x-x) <= loadRange 
and abs(obj_player.xprevious-x) > loadRange 
or obj_gameManager.startup {
	loadChunk(self);
}

if abs(obj_player.x-x) > loadRange 
and abs(obj_player.xprevious-x) <= loadRange {
	unloadChunk(self);
}