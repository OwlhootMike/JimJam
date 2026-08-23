image_angle+= 30;

if(point_distance(x, y, target_x, target_y) <= speed){

	//Snap to the target
	x = target_x;
	y = target_y;
	speed = 0;
	
	//The action is finished.
	if(instance_exists(obj_jimothy)){obj_jimothy.canMove = true;}
	
	//Trigger Alarm 0
	alarm[0] = 1;
	
}