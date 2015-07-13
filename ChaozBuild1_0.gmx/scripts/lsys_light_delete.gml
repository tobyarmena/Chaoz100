// lsys_light_delete(ID);
// Deactivates the light to be overwritten by new light

global._lsys_light_deleted[argument0] = true;
surface_free(global._lsys_light_surface[argument0]);
global._lsys_light_surface[argument0] = -1;