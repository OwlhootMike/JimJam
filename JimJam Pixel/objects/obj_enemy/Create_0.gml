// State variables
is_moving = false;
image_speed = 0; // Do not animate while standing still
image_index = 0;

//HP Modifier when the game gets harder
hpMod = 0;

//Enemy HP
hp = irandom_range(4, 8) + hpMod;

// Define the custom tick function
take_turn = function() {
    
    // Safety check: Don't calculate a new move if already moving
    // Safety checks
    if (is_moving == true) return; 
    if (!instance_exists(obj_jimothy)) return;
    
    // --- 1. THE ATTACK CHECK ---
    
    // Calculate the absolute distance between the enemy and the player
    var _dist_x = abs(x - obj_jimothy.x);
    var _dist_y = abs(y - obj_jimothy.y);
    
    // Check if the player is exactly 1 cell away horizontally OR vertically
    // (This prevents diagonal attacks)
    if ((_dist_x == CELL_SIZE && _dist_y == 0) || (_dist_x == 0 && _dist_y == CELL_SIZE)) {
        
        // Face the player
        if (obj_jimothy.x > x) {
            image_xscale = 1;
        } else if (obj_jimothy.x < x) {
            image_xscale = -1;
        }
        
        // Inflict damage (Assuming your player has a variable called 'hp')
        obj_jimothy.hp -= 1; 
        
        // Optional: Trigger an attack animation here
        
        // CRITICAL: Exit the function right now so the enemy doesn't move!
        return; 
    }
    
    
    // --- 2. THE MOVEMENT CODE (Only runs if the attack check failed) ---
    
    var _path = path_add();
    var _found_path = mp_grid_path(global.nav_grid, _path, x, y, obj_jimothy.x, obj_jimothy.y, false);
    
    if (_found_path && path_get_number(_path) > 1) {
        
        var _next_x = path_get_point_x(_path, 1);
        var _next_y = path_get_point_y(_path, 1);
		var _amount = 0;
        
        if (_next_x > x) { 
            hspeed = 1; 
            image_xscale = 1;
        } 
        else if (_next_x < x) { 
            hspeed = -1; 
            image_xscale = -1; 
        } 
        else if (_next_y > y) { 
            vspeed = 1; 
        } 
        else if (_next_y < y) { 
            vspeed = -1; 
        }
        
        is_moving = true;
        image_speed = 1; 
        alarm[0] = 16;
    }
    
    path_delete(_path);
}