	/// @description Insert description here
// You can write your code in this editor
try{
	if (isParent){
		if (cooldownType == "dash"){
			cooldownPercentage = (chiliman.dashCooldownTime - chiliman.dashCooldown)/chiliman.dashCooldownTime
			show_debug_message(cooldownPercentage);
			x = (150+45+150+45)
		}else if (cooldownType == "dive"){
			cooldownPercentage = (chiliman.diveSetTime - chiliman.diveTimer)/chiliman.diveSetTime
			x = (150+45)
		}else if (cooldownType == "slide"){
			cooldownPercentage = (chiliman.slideSetTime - chiliman.slideTimer)/chiliman.slideSetTime
			x = 10
		}
		cooldownPercentage = floor(cooldownPercentage*100);
		if cooldownPercentage % 3 != 0{
			cooldownPercentage += (3 - cooldownPercentage%3);
		}
	}else{
		chiliman.horizontalSpeed = chiliman.horizontalSpeed;
	}
}catch(e){
	instance_destroy();
}