//As long as myWeapon is 1, this code can be executed
if(myWeapon == 1){

	//Do the safety check: can the player shoot?
	if(canMove == false || weapon_array[1][1] <= 0){

		return;	
	
	}

	//If it passes the safety check, snap the raw mouse position to the center of the 16x16 grid cell
	var _target_x = floor(mouse_x / 16) * 16 + 8;
	var _target_y = floor(mouse_y / 16) * 16 + 8;

	target_x = _target_x;
	target_y = _target_y;

	//Calculate the distance between the tile and the player, ensuring it is within 5 tiles
	var _dist = point_distance(x, y, _target_x, _target_y);

	if(_dist <= 80){

		//Range is valid. Throw that core!
		weapon_array[1][1]--;
		canMove = false;
	
	
		//Change image index to ensure we have an animation of Jimothy attacking
		sprite_index = spr_jimothyAttack;
	
		//Check if the value of X of the mouse is less than the player's
		if(_target_x < x){image_xscale = -1;}
		if(_target_x > x){image_xscale = 1;}
	
		image_speed = 1;
		alarm[1] = 30;
	
	
		//Spawn the apple core and inject the target coordinates
		instance_create_layer(x, y, "Instances", obj_core);
	
	}

}