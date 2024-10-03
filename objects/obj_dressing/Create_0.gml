/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
enum saladState{
	sleeping,	//b4 salad touched
	wake,		//right after salad touched
	awake,		//after woken up
	waiting,	//if woken up but chiliman not nearby
}

timer = 0;

state = saladState.sleeping;

horizontalSpeed = 0;
verticalSpeed = 0;
grav = 0.4;

topSpeed = 7;
speedIncrement = topSpeed/50;