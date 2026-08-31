prevX = x;
prevY = y;

if (is_moving == true) {
    
    // Slide exactly 1 pixel toward the target
    x += sign(target_x - x);
    y += sign(target_y - y);
    
    // Did Jimothy arrive perfectly on the grid?
    if (x == target_x && y == target_y) {
        
        // Stop moving and unlock controls!
        is_moving = false;
		alarm[3] = 10;
        image_speed = 0;
		image_index = 0;
        
        // The turn is over, tell the enemies to move!
        Enemy_Tick();
    }
}

if(hp <= 0 && isDead == false){

	isDead = true;
	image_yscale = -1;
	obj_blackScreen.fadeout();
	
}