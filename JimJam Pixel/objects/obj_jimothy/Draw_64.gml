
if(myWeapon != 0){
	draw_text(10, 30, "Amount " + string(weapon_array[myWeapon,1]));
}

if(myWeapon == 0){
draw_sprite(Stick, 0, 0, 0);
}

if(myWeapon == 1){
draw_sprite(Apple_Core, 0, 0, 0);
}

if(myWeapon == 2){
draw_sprite(Rock, 0, 0, 0);
}


