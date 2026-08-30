function is_tile_walkable(_check_x, _check_y) {
    
    var _has_wall = 0;
    var _has_floor = 0;
    
    // 1. Check for Walls
    if (layer_exists("Walls")) {
        var _wall_map = layer_tilemap_get_id("Walls");
        if (_wall_map != -1 && !is_array(_wall_map) && _wall_map != undefined) {
            _has_wall = tilemap_get_at_pixel(_wall_map, _check_x, _check_y);
        }
    }
    
    // 2. Check for Floor
    if (layer_exists("Floor")) {
        var _floor_map = layer_tilemap_get_id("Floor");
        if (_floor_map != -1 && !is_array(_floor_map) && _floor_map != undefined) {
            _has_floor = tilemap_get_at_pixel(_floor_map, _check_x, _check_y);
        }
    }
    
    // The tile is ONLY walkable if it has NO wall AND it HAS a floor!
    if (_has_wall == 0 && _has_floor > 0) {
        return true; 
    }
    
    return false; // It's a wall or the void
}