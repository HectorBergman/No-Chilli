/// @description Insert description here
// You can write your code in this editor
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_up);

horizontalSpeed = (_keyRight - _keyLeft)*walkSpeed;

verticalSpeed = verticalSpeed + playerGrav;

playerJump(self, _keyJump)

//see: script playerCollision
playerHorizontalCollision(self);

//see: script playerCollision
playerVerticalCollision(self); //functions B)