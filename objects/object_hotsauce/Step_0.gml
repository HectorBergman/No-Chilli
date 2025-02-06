/// @description Insert description here
// You can write your code in this editor
pause_check()
camScale = 2.5 - 0.0015625*cam.camWidth

switch(state){
	case hotsauceStates.uncollected: break;
	case hotsauceStates.collected: hotsauceCollectedLogic() break;
}