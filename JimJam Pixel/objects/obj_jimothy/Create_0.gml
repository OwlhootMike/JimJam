//Create a bool to ensure the player can't move more than 1 square at a time
canMove = true; //Set to False every time the player moves to disable control input.

is_moving = false;

target_x = x;
target_y = y;

//Ensure the sprite stays static and not animated constantly
image_speed = 0;


//Health
hp = 20;
maxHP = 20;

//Do we have a stick?
foundStick = false;


//Previous X and Y
prevX = x;
prevY = y;

//Bool to show the health bar
hpShow = false;

/*Weapon Coding*/

//Create the arrays for Weapon
//Hold the number of item being used
myWeapon = 0;

//Arrays of weapons
weapon_array[0][0] = "Stick"; //Name of Item
weapon_array[0][1] = 10; //Uses left
weapon_array[0][2] = 2; //Damage

weapon_array[1][0] = "Apple Core";
weapon_array[1][1] = 10;
weapon_array[1][2] = 3;

weapon_array[2][0] = "Rock";
weapon_array[2][1] = 5;
weapon_array[2][2] = 4;

is_tile_walkable = function(_check_x, _check_y) {
    
    var _floor_map = layer_tilemap_get_id("Floor");
    var _wall_map = layer_tilemap_get_id("Walls");
    
    // tilemap_get_at_pixel returns > 0 if a tile exists there
    var _has_floor = tilemap_get_at_pixel(_floor_map, _check_x, _check_y);
    var _has_wall = tilemap_get_at_pixel(_wall_map, _check_x, _check_y);
    
    // It is ONLY walkable if a floor exists AND a wall does NOT exist
    if (_has_floor > 0 && _has_wall == 0) {
        return true; 
    }
    
    return false; // Otherwise, it's a void or a barrier
}





