//The action is finished.
if(instance_exists(obj_jimothy)){obj_jimothy.canMove = true;}
	
//Tell the enemies to take their turn
Enemy_Tick();
	
//Trigger Alarm 0
alarm[0] = 1;