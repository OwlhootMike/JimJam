target_x ??= 0;
target_y ??= 0;

//Send it!!!
_throw_speed = 1;

//Point the apple towards the direction of the target and set it in motion
direction = point_direction(x, y, target_x, target_y);
speed = _throw_speed;

target_x = mouse_x;
target_y = mouse_y;