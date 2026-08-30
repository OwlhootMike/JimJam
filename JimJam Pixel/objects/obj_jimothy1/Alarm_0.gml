//Stop moving
vspeed = 0;
hspeed = 0;

//Reset the animation 
image_speed = 0;
image_index = 0;

//Round the number to avoid sub-pixel blurring
y = round(y);
x = round(x);

//Unlock controls
canMove = true;

// The player has officially finished moving. 
// Now, tell all the enemies to take their turn!
Enemy_Tick();