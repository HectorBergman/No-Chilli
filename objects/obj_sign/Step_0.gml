if button != noone{
	if button.pressed{
		if (!switched){
			type = (type + 2) % 4
			switched = true
		}
	}
}else{
	switched = false
}
defineSprite();