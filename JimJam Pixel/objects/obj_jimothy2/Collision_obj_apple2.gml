weapon_array[1][1]++;

hp += 3;

if(hp > maxHP){

	hp = maxHP;	
	
}

instance_create_depth(x, y, -100, obj_healing);

hpShow = true;
alarm[2] = 60;