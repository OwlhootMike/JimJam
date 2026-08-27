// Make sure we are allowed to move, and aren't CURRENTLY moving
if (canMove == true && is_moving == false) {
    
    // Calculate the tile to the left
    var _next_x = x - 16;
    var _next_y = y;
    
    // PROBE THE TILE 
    if (is_tile_walkable(_next_x, _next_y) == true) {
        
        // 3. The tile is safe! Lock controls and set the destination
        canMove = false;
        is_moving = true;
        
        target_x = _next_x;
        target_y = _next_y;
        
        // 4. Update animations
        image_speed = 2;
        image_xscale = -1; 
        
    } else {
        // The tile is a wall! Jimothy does nothing.
        // (Play a "bump" sound here if you want!)
    }
}