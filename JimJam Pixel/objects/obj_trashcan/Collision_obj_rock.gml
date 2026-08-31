if(isDown == false){
	//Change to fallen trash can
	sprite_index = fallen_trashcan;
	isDown = true;
	obj_roomManager.cansToDown--;
	obj_roomManager.nextRoom();
}