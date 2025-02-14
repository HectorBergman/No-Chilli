function cloneSaver(){
	if (keyboard_check_pressed(ord("C"))){
		if (cloneRecord){
			saveCloneData("cloneData", cloneArray)
			cloneArray = [];
			cloneIndex = 0;
			cloneRecord = false;
		}else{
			cloneRecord = true;
		}
	}else if (cloneRecord){
		cloneArray[cloneIndex] = getPosData();
		cloneIndex++;
	}
}

function getPosData(){
	var array = []
	array[0] = chiliman.x;
	array[1] = chiliman.y;
	array[2] = chiliman.sprite_index;
	array[3] = chiliman.image_index;
	array[4] = chiliman.image_xscale;
	return array;
}