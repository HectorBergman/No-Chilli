/// @description Insert description here
// You can write your code in this editor
PAUSE

verticalSpeed += grav;
saladHorizontalCollision();
saladVerticalCollision();

switch(state){
	case saladState.awake: saladStateAwake(); break;
	case saladState.sleeping: saladStateSleeping(); break;
	case saladState.waiting: saladStateWaiting(); break;
	case saladState.wake: saladStateWake(); break;
}