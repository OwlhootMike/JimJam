//Ensure the sprite stays static and not animated constantly
image_speed = 0;

//Create a bool to ensure the player can't move more than 1 square at a time
canMove = true; //Set to False every time the player moves to disable control input.

//Health
hp = 20;
maxHP = 20;

//Do we have a stick?
foundStick = false;

target_x = 0;
target_y = 0;

/*Weapon Coding*/

//Create the arrays for Weapon
//Hold the number of item being used
myWeapon = 0;

//Arrays of weapons
weapon_array[0][0] = "Stick"; //Name of Item
weapon_array[0][1] = 10; //Uses left

weapon_array[1][0] = "Apple Core";
weapon_array[1][1] = 10;

weapon_array[2][0] = "Rock";
weapon_array[2][1] = 5;