function Enemy_Tick(){

	if (!instance_exists(obj_jimothy)) {
        return; 
    }

    with (obj_enemy) {
        take_turn();
    }
	
	with(obj_squirrel){
		take_turn();	
	}
	
	with(obj_poisonRat){
		take_turn();	
	}

}