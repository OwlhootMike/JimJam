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
        canMove = true; // <--- ADD THIS LINE!
        image_speed = 0;
        
        // The turn is over, tell the enemies to move!
        Enemy_Tick();
    }
}