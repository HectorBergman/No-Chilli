/// @description Insert description here
// You can write your code in this editor
baseY = y;
currentDoorFrame = parent.image_index
collided = ds_list_create();
scale = parent.image_yscale

image_xscale = scale;
image_yscale = scale;

function spriteLogic(){
	
}

function hitboxCorrector(){
	if (currentDoorFrame < 4){
		y = baseY
	}else if (currentDoorFrame == 4){
		y = baseY-8*scale
	}else if (currentDoorFrame == 5){
		y = baseY-20*scale
	}else if (currentDoorFrame == 6){
		y = baseY-36*scale
	}else if (currentDoorFrame == 7){
		y = baseY-41*scale
	}else if (currentDoorFrame == 8){
		y = baseY-53*scale
	}else if (currentDoorFrame == 9){
		y = baseY-60*scale
	}else if (currentDoorFrame == 10){
		y = baseY-65*scale
	}
}