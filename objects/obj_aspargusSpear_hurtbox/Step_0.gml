x = parent.x
y = parent.y
if (place_meeting(x,y,chiliman)){
	if !(chiliman.state == states.dead || chiliman.state == states.roomtransition || chiliman.state == states.levelcomplete){
		var _parent = parent;
		with(chiliman){
			initiateCrash(60, _parent);
		}
	}
}