// State variables
is_moving = false;
image_speed = 0; // Do not animate while standing still
image_index = 0;

// Coordinate trackers for precise movement
target_x = x;
target_y = y;
prev_x = x;
prev_y = y;

// HP Modifier when the game gets harder
hpMod = 0;

//Bool to show life Bar
hpShow = false;

// Enemy HP
hp = irandom_range(5, 8) + hpMod;
maxHP = hp;

//Hold variable to check for every 2 ticks to throw an acorn
acornTurn = 0;
maxAcornTurn = 2;

// Define the custom tick function
take_turn = function() {
    
    // Safety checks
    if (is_moving == true) return; 
    if (!instance_exists(obj_jimothy)) return;
    
    // --- 1. THE ATTACK CHECK ---
    
    var _dist_x = abs(x - obj_jimothy.x);
    var _dist_y = abs(y - obj_jimothy.y);		

	
	if(_dist_x <= abs(CELL_SIZE * 7) && _dist_y <= abs(CELL_SIZE * 7)){
    
	    if ((_dist_x == CELL_SIZE && _dist_y == 0) || (_dist_x == 0 && _dist_y == CELL_SIZE)) {
        
        // Face the player
        if (obj_jimothy.x > x) {
            image_xscale = 1;
        } else if (obj_jimothy.x < x) {
            image_xscale = -1;
        }
		
        
			image_speed = 1;
			sprite_index = squirrel01_attack;
			instance_create_depth(x, y, -100, obj_ratChomp);
	        obj_jimothy.hp -= 1; 
			obj_jimothy.hpShow = true;
			obj_jimothy.alarm[2] = 60;
			alarm[0] = 30;
	        return; 
		}
    
			// --- 2. THE MOVEMENT CODE ---
    
			var _path = path_add();
			var _found_path = mp_grid_path(global.nav_grid, _path, x, y, obj_jimothy.x, obj_jimothy.y, false);
    
	    if (_found_path && path_get_number(_path) > 1) {
        
	        // Get the exact coordinates of the next 16x16 tile
	        target_x = path_get_point_x(_path, 1);
	        target_y = path_get_point_y(_path, 1);
        
	        // Face the correct direction
	        if (target_x > x) {
	            image_xscale = 1;
	        } else if (target_x < x) {
	            image_xscale = -1;
	        }
        
	        // Start the movement state (NO speed or alarms used!)
	        is_moving = true;
	        sprite_index = squirrel01_walk2;
	        image_speed = 1; 
		}
		
		acornTurn+=1;
		if(acornTurn >= maxAcornTurn){
			image_speed = 1;
			sprite_index = squirrel01_attack;
			instance_create_depth(x, y, -100, obj_acorn);
			alarm[0] = 30;
			acornTurn = 0;
		    return; 
		}
    
		path_delete(_path);
	}
}