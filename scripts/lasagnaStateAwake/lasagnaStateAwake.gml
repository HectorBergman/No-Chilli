function lasagnaStateAwake(){
	spearTimer--
	if (spearTimer == 0){
		spearStruct = {
			parent: id,
			thrownDirection: sign(image_xscale),
			firstSpear: false,
			flyingSpeed: flyingSpeed
		}
		firstSpear = instance_create_depth(x-10, y+25, 0, obj_aspargusSpear, spearStruct)
		spearTimer = spearInterval;
	}
	show_debug_message(spearTimer);
}