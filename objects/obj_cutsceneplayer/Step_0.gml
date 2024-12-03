timer++

frameLogic();
if framesSeen == 56 && !cloudsSummoned{
	for(var i = 0; i < 21; i += 1){
		cloudsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			lifeTime: random_range(50, 150),
			spriteNumber : i,
		};
		instance_create_depth(x, y, -40+random_range(-2,2), object_OLSClouds_cutscene, cloudsStruct);
	}
	
	instance_create_depth(x, y, -43, obj_smear, cloudsStruct);
	cloudsSummoned= true;
}