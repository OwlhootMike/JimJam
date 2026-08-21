// Stop all movement
hspeed = 0;
vspeed = 0;

// Stop animation and reset to the first frame
image_speed = 0;
image_index = 0;

// Snap perfectly to whole numbers to prevent pixel-blurring
x = round(x);
y = round(y);

// Unlock the enemy so it can take another turn later
is_moving = false;