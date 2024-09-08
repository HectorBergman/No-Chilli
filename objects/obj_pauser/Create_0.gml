/// @description Insert description here
// You can write your code in this editor
#macro PAUSEVARS prePauseSpeed = 0
global.pause = false;
layer = layer_create(-999, "pauseUI");

depth = -999
activeSettings = noone;
activeQuit = noone;

cam = instance_find(object_zcamera, 0);

