prev_x = x;
prev_y = y;

if (is_moving == true) {
    
    // Move exactly 1 pixel toward the target coordinates
    // sign() returns 1 if positive, -1 if negative, or 0 if equal
    x += sign(target_x - x);
    y += sign(target_y - y);
    
    // Check if we have perfectly arrived at the target destination
    if (x == target_x && y == target_y) {
        
        // Stop the movement and reset the animation
        is_moving = false;
        image_speed = 0;
        image_index = 0;
		sprite_index = squirrel01;
        
        
    }
}