//Do the safety check: can the player shoot?
if(canMove == false || cores <= 0){

	return;	
	
}

//If it passes the safety check, snap the raw mouse position to the center of the 16x16 grid cell
var _target_x = floor(mouse_x / 16) * 16 + 8;
var _target_y = floor(mouse_y / 16) * 16 + 8;

//Calculate the distance between the tile and the player, ensuring it is within 5 tiles
var _dist = point_direction(x, y, _target_x, _target_y);

if(_dist <= 80){

	//Range is valid. Throw that core!
	cores -= 1;
	canMove = false;
	
	//Spawn the apple core and inject the target coordinates
	instance_create_layer(x, y, "Instances", obj_core, {
		target_x: _target_x,
		target_y: _target_y
	});
	
}