/// @description Insert description here
// You can write your code in this editor
mask_index = spr_door_hitbox

rising = false;
startRising = false;
riseStart = 0;

lowering = false;
startLowering = false;
lowerStart = 0;

msPerRisingFrame = 75;
msPerLoweringFrame = 100;

show_debug_message(id);

function spriteLogic(){
	
}

function rise(){
	if (startRising){
		riseStart = get_timer()/1000
		startRising = false;
		rising = true;
	}
	var currentTime = get_timer()/1000 - riseStart
	if (rising){
		
		if (currentTime > msPerRisingFrame){
			riseStart = get_timer()/1000
			image_index += 1;
			if (image_index == 10){
				rising = false;
			}
		}
	}
	
}

function lower(){
	if (startLowering){
		show_debug_message("DASD");
		lowerStart = get_timer()/1000
		startLowering = false;
		lowering = true;
	}
	var currentTime = get_timer()/1000 - lowerStart
	if (lowering){
		
		if (currentTime > msPerLoweringFrame){
			lowerStart = get_timer()/1000
			image_index -= 1;
			if (image_index == 0){
				lowering = false;
			}
		}
	}
}

for(var i = 0; i < 999; i += 1){
	button = instance_find(obj_alevelbutton, i);
	if (button == noone){
		show_debug_message("fml") //forgor how to make custom exceptions in gms2
		return;
	}else if (button.door == doorNumber){
		button.doorInstance = id;
		return;
	}
}



/*___________________________________________
############################################################################################
ERROR in
action number 1
of  Step Event0
for object obj_spring:

Attempting to set Instance id 104171 with Object Index 21 (obj_spring) with invalid bound top -nan(ind) bottom -nan(ind) left -nan(ind) right -nan(ind)
 at gml_Script_springHorizontalCollision@gml_Object_obj_spring_Create_0 (line 32) -        if (place_meeting(x + horizontalSpeed, y , object_wall)){
############################################################################################
gml_Script_springHorizontalCollision@gml_Object_obj_spring_Create_0 (line 32)
gml_Script_normalState@gml_Object_obj_spring_Create_0 (line 69) -        springHorizontalCollision();
gml_Object_obj_spring_Step_0 (line 6) -        case springStates.normal: normalState(); break;
*/
