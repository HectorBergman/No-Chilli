/// @description Insert description here
// You can write your code in this editor
PAUSE
try{camScale = 2.5 - 0.0015625*cam.camWidth}
catch(e){}

switch(state){
	case hotsauceStates.uncollected: uncollectedLogic_normal() break;
	case hotsauceStates.collected: hotsauceCollectedLogic() break;
}