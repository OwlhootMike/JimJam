draw_self();

if(hpShow == true){

	var _hpAmount = (hp / maxHP) * 100;

	draw_healthbar(x-8, y-10, x+8, y-9, _hpAmount, c_black, c_red, c_lime, 0, true, true);

}