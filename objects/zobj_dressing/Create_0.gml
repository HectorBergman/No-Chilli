/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
enum saladState{
	sleeping,	//b4 salad touched
	wake,		//right after salad touched
	awake,		//after woken up
	waiting,	//if woken up but chiliman not nearby
	dying,		//if chiliman was hit
	dead,		//if hit the ground while dying
}

onGround = false;

timer = 0;
jumpCooldown = 0;
jumpCooldownTime = 10;
state = saladState.sleeping;

hp = 1;
hitCooldown = 0;

horizontalSpeed = 0;
verticalSpeed = 0;
grav = 0.4;

topSpeed = 8;
speedIncrement = topSpeed/50;

function wake(){
	if (state = saladState.sleeping){
		state = saladState.wake;
		timer_start = get_timer()/1000
		image_index = 1;
	}
}