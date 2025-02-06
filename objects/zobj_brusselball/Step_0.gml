/// @description Insert description here
// You can write your code in this editor
pause_check()


kickedTimer--;
switch(state){
	case brusselState.notActive: brusselStateNotActive(); break;
	case brusselState.active: brusselStateActive(); break;
}
