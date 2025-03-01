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

currentGain = 75/abs(max(point_distance(x,y, chiliman.x, chiliman.y),100));

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
		audio_play_sound_at(snd_dressing_alert, -x, -y, 0, 100, 300, 4, 0, 0, global.soundfx*global.volume*0.2);
		state = saladState.wake;
		timer_start = get_timer()/1000
		image_index = 1;
	}
}