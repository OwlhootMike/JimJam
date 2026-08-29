//Get the coordinates of the mouse 
target_x = floor(obj_jimothy.x/16)*16+8;
target_y = floor(obj_jimothy.y/16)*16+8;

//Send it!!!
_throw_speed = 3;

//Point the apple towards the direction of the target and set it in motion
direction = point_direction(x, y, target_x, target_y);
speed = _throw_speed;

//Depth change
depth = -100;