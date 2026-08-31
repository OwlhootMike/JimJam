if(obj_trashcan.sprite_index == standing_trashcan){
  
	  // Stop moving and unlock controls!
	        is_moving = false;
			alarm[3] = 10;
	        image_speed = 0;
			image_index = 0;

	x = prevX;
	y= prevY;
}
