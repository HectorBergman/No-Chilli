// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function objectEaten(collided){
	
	for (var i = 0; i < random_range(4,7); i += 1){
		var hitX = random_range(0, collided.sprite_width-3);
		var hitY = random_range(0, collided.sprite_height-3);
		var horSpeed = random_range(-7,7)
		var verSpeed = random_range(-3,-7)
		var debrisDepth = random_range(-5,1)
		var debrisX = collided.x+hitX
		var debrisY = collided.y+hitY

		debrisStruct =
		{
			
			debrisHitX : hitX,
			debrisHitY : hitY,
			verticalSpeed : verSpeed,
			horizontalSpeed : horSpeed,
			sprite : object_get_sprite(collided.object_index),

		};
		instance_create_depth(debrisX, debrisY, debrisDepth, object_debris, debrisStruct);
	}
}

function playerEaten(){
	for (var i = 0; i < 30; i += 1){
		var hitX = random_range(15, 27);
		var hitY = random_range(10, 42);
		var horSpeed = random_range(-5,5)
		var verSpeed = random_range(-1,-4)
		var debrisDepth = -5
		var debrisX = x+hitX
		var debrisY = y+hitY

		debrisStruct =
		{
			
			debrisHitX : hitX,
			debrisHitY : hitY,
			verticalSpeed : verSpeed,
			horizontalSpeed : horSpeed,
			sprite : object_get_sprite(object_index),

		};
		instance_create_depth(debrisX, debrisY, debrisDepth, object_debris, debrisStruct);
	}
}