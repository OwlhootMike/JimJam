if(obj_item._itemVal == 0){

	hp = maxHP;	
	
}

if(obj_item._itemVal == 1){

	hp += (maxHP / 2);	
	
	if(hp > maxHP){

		hp = maxHP;	
	
	}
	
}

if(obj_item._itemVal == 2){

	hp += (maxHP / 10);	
	
	if(hp > maxHP){

		hp = maxHP;	
	
	}
	
}

instance_create_depth(x, y, -100, obj_healing);