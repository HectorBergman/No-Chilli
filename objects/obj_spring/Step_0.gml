
pause_check()
lifeTimeLeft--;

switch(state){
	case springStates.normal: normalState(); break;
	case springStates.bounce: bounceState(); break;
}
if (lifeTimeLeft < 0){
	instance_destroy(self);
}

