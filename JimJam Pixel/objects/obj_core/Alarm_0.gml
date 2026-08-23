instance_destroy();

var _burst = part_system_create(ps_coreend);

part_system_position(_burst, x, y);

//Tell the enemies to take their turn
Enemy_Tick();