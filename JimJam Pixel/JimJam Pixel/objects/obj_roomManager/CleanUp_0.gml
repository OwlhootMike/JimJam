// --- CLEAN UP EVENT ---

// Free the memory when the room changes or restarts
if (variable_global_exists("nav_grid")) {
    mp_grid_destroy(global.nav_grid);
}