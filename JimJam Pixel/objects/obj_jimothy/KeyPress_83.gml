
// Make sure we are allowed to move, and aren't CURRENTLY moving
if (canMove == true && is_moving == false) {
    
    // 1. Calculate the tile to the left
    var _next_x = x;
    var _next_y = y + 16;
    
    // 2. PROBE THE TILE (Add +8 to check the dead center of the 16x16 tile)
    if (is_tile_walkable(_next_x, _next_y) == true) {
        
        // 3. The tile is safe! Lock controls and set the destination
        canMove = false;
        is_moving = true;
        
        target_x = _next_x;
        target_y = _next_y;
        
        // 4. Update animations
        image_speed = 2;
         
        
    } else {
        // The tile is a wall! Jimothy does nothing.
        // (Play a "bump" sound here if you want!)
    }
	
	if(is_tile_spiked(_next_x, _next_y)) == true{
	
		hp -= 2;
		hpShow = true;
		alarm[2] = 60;
		alarm[4] = 16;
		
	}
}