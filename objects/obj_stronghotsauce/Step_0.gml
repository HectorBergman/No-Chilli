/// @description Insert description here
// You can write your code in this editor
PAUSE
switch(state){
	case hotsauceStates.uncollected: uncollectedLogic_strong(); break;
	case hotsauceStates.collected: hotsauceCollectedLogic(); break;
}

