x = parent.x
y = parent.y
if (place_meeting(x,y,chiliman)){
	if !(chiliman.state == states.dead || chiliman.state == states.roomtransition || chiliman.state == states.levelcomplete){
		with(chiliman){
			initiateCrash(60, id);
		}
	}
}