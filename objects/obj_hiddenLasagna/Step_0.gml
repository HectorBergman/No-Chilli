switch(state){
	case hiddenLasagnaState.awake: lasagnaStateAwake(); break;
	case hiddenLasagnaState.sleeping: lasagnaStateSleeping(); break;
	case hiddenLasagnaState.wake: lasagnaStateWake(); break;
	case hiddenLasagnaState.dying: lasagnaStateDying(); break;
	case hiddenLasagnaState.dead: lasagnaStateDead(); break;
}