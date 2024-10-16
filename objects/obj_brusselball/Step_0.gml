/// @description Insert description here
// You can write your code in this editor
PAUSE
kickedTimer--;
switch(state){
	case brusselState.notActive: brusselStateNotActive(); break;
	case brusselState.active: brusselStateActive(); break;
}
