//Make sure the variable is set to true before moving
if(canMove == true){
	
	//Start moving and disabling controls
	canMove = false;
	image_speed = 2;
	
	//Set the speed and call the alarm at 16 frames
	vspeed = -1;
	alarm[0] = 16;
		
}