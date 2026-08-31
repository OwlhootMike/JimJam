randomise();

cansToDown = 0;

nextRoom = function(){

	//Check if the cans	are down
	if(cansToDown == 0){
		obj_tracker.roomsPassed++;
		obj_blackScreen.fadeout();
	
	}
	
}



//----------------------------
//Setting up Camera
//----------------------------
//Set up Resolution and camera
var _base_w = 320;
var _base_h = 180;

//Force the drawing canvas to match the pixel art dimensions
surface_resize(application_surface, _base_w, _base_h);

//Enable the viewports and camera 0
view_enabled = true;
view_visible[0] = true;

//Create a camera that follows Jimothy
var _camera = camera_create_view(0, 0, _base_w, _base_h, 0, obj_jimothy, -1, -1, _base_w / 2, _base_h / 2);

//Set the physical window size to an integer scale
window_set_size(_base_w * 4, _base_h * 4);
window_center();

//Make sure the GUI stays in HD
display_set_gui_size(_base_w * 4, _base_h * 4);

// Define the grid size (assuming 16x16 tiles)
#macro CELL_SIZE 16 

var _cells_x = room_width / CELL_SIZE;
var _cells_y = room_height / CELL_SIZE;

// 1. Allocate memory for the pathfinding grid
global.nav_grid = mp_grid_create(0, 0, _cells_x, _cells_y, CELL_SIZE, CELL_SIZE);

// 2. Make the entire map solid (unwalkable) by default
mp_grid_add_rectangle(global.nav_grid, 0, 0, room_width, room_height);

// 3. Scan every cell and use our Master Script to build the AI map!
for (var _x = 0; _x < _cells_x; _x++) {
    for (var _y = 0; _y < _cells_y; _y++) {
        
        // Find the exact pixel at the center of the current cell
        var _check_x = (_x * CELL_SIZE) + (CELL_SIZE / 2);
        var _check_y = (_y * CELL_SIZE) + (CELL_SIZE / 2);
        
        // Ask the Master Script: Is this cell safe for Jimothy?
        if (is_tile_walkable(_check_x, _check_y) == true) {
            
            // If it's safe for Jimothy (Has floor, no walls), make it safe for enemies!
            mp_grid_clear_cell(global.nav_grid, _x, _y);
            
        }
        // (If it returns false, we just leave the solid block there!)
    }
}