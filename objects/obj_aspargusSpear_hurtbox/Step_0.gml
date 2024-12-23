if (!instance_exists(parent)){
	instance_destroy(id);
}
try{
	x = parent.x
	y = parent.y
}catch(e){
	instance_destroy(id);
}
if (place_meeting(x,y,chiliman)){
	if !(chiliman.state == states.dead || chiliman.state == states.roomtransition || chiliman.state == states.levelcomplete){
		var _parent = parent;
		with(chiliman){
			initiateCrash(60, _parent);
		}
	}
}