/// @description Insert description here
// You can write your code in this editor
var _keyRight = keyboard_check(vk_right);
var _keyLeft = keyboard_check(vk_left);
var _keyJump = keyboard_check_pressed(vk_up);

horizontalSpeed = (_keyRight - _keyLeft)*walkSpeed;

verticalSpeed = verticalSpeed + playerGrav;

if (onGround-- > 0) && (_keyJump) ||
{
	verticalSpeed = jumpSpeed;
	onGround = 0;
}

//collision
if (place_meeting(x + horizontalSpeed, y , object_wall))
{
	while (abs(horizontalSpeed) > 0.1)
	{
		horizontalSpeed *= 0.5; //halve horizontalSpeed
		if (!place_meeting(x + horizontalSpeed, y, object_wall)) x += horizontalSpeed
	}
	horizontalSpeed = 0;
}

x += horizontalSpeed;

if (place_meeting(x, y + verticalSpeed, object_wall))
{
	if (verticalSpeed > 0) onGround = 10;
	while (abs(verticalSpeed) > 0.1)
	{
		verticalSpeed *= 0.5; //halve verticalSpeed
		if (!place_meeting(x, y + verticalSpeed, object_wall)) y += verticalSpeed
	}
	verticalSpeed = 0;
}
y += verticalSpeed;