/// @description Insert description here
// You can write your code in this editor

x = follow.x;
y = follow.y;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);