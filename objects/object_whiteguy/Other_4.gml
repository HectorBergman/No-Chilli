/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
depth = -30;
collided = noone;
if (active){
	with (other) path_start(roomPath, 5, path_action_stop, true)
}
approachPoints = array_create(instance_number(aobj_whiteguyPoint), noone)
function findAllApproachPoints(){
	for (var i = 0; i < instance_number(aobj_whiteguyPoint); ++i;)
	{
		approachPoints[i] = instance_find(aobj_whiteguyPoint,i);
	}
}
function sortByOrder(instance1, instance2){
	return instance1.order - instance2.order;
}

findAllApproachPoints();
array_sort(approachPoints, sortByOrder)

