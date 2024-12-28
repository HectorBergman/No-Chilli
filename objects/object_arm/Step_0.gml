/// @description Insert description here
// You can write your code in this editor
if (chiliman.state != states.ring || !instance_exists(parent)){
	instance_destroy(self)
}
if (chiliman.lastMove == 1){
	depth = -1;
}else{
	depth = 1;
}

chiliman.handX = newX
chiliman.handY = newY