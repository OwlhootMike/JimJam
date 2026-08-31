
if(isDown == false){
	
	// 1. Safety check: Don't allow attacks if the player is currently moving/animating
	if (!instance_exists(obj_jimothy) || obj_jimothy.canMove == false) {
	    return;
	}

	// 2. Calculate the distance between THIS enemy and the player
	var _dist_x = abs(x - obj_jimothy.x);
	var _dist_y = abs(y - obj_jimothy.y);

	// 3. Adjacency Check: Are they exactly 1 cell away? (Assuming 16px grid)
	if ((_dist_x == 16 && _dist_y == 0) || (_dist_x == 0 && _dist_y == 16)) {
    
	    // --- VALID ATTACK ---
    
	    // 1. Face the enemy towards the player (optional, but looks good)
	    if (obj_jimothy.x > x) image_xscale = -1;
	    else if (obj_jimothy.x < x) image_xscale = 1;
    
	    // 2. Apply damage to this enemy
		if(obj_jimothy.myWeapon == 0 ){
		
			if(obj_jimothy.x > x){
				obj_jimothy.image_xscale = -1;
			}
			if(obj_jimothy.x < x){
				obj_jimothy.image_xscale = 1;
			}
			obj_jimothy.sprite_index = Jimmy_bap_bap; //Change Jimothy's sprite
			obj_jimothy.image_speed = 1; //Animate Jimothy
			obj_jimothy.alarm[1] = 30; //Reset him!
		
			//Change to fallen trash can
			sprite_index = fallen_trashcan;
			isDown = true;
		
			//Instantiate the effect
			instance_create_depth(x, y, -100, obj_hit);
			instance_create_depth(x, y, -100, obj_swipe);
		
			obj_roomManager.cansToDown--;
		
			obj_roomManager.nextRoom();
 
		}
	

	} else {
	    // --- INVALID ATTACK ---
    
	    // The player clicked an enemy that is too far away.
	    // By doing nothing here, the function just ends. 
	    // No damage is dealt, the player doesn't lose their turn, and enemies do not tick.
	}

}