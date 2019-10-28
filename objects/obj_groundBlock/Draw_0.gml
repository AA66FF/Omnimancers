/// @description Insert description here
// You can write your code in this editor


if terrain and isFloor {
	for (var i = 2; i < 150; i++) {
		if abs(x-obj_camera.x) < 620 and abs((y+i*16)-obj_camera.y) < 420 {
			draw_sprite_stretched(spr_undergroundPlaceholder,0,x,y+i*16,16,16);
		}
	}
}

if abs(x-obj_camera.x) < 620 and abs(y-obj_camera.y) < 420 {
	draw_self();
}