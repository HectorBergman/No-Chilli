/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
enum brusselState{
	active,
	notActive,
}
state = brusselState.notActive;
kickedTime = 10;
kickedTimer = 0;
grav = 0.4;
verticalSpeed = 0;
horizontalSpeed = 0;
vStep = 0;
hStep = 0;

visualStruct = {
	parent: id,
}
visual = instance_create_depth(self.x, self.y, -30, zobj_brusselVisual, visualStruct)




