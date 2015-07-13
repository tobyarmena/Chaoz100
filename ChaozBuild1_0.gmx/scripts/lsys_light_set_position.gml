// lsys_light_set_position(ID, x, y);
// Changes the light's position

global._lsys_light_xpos[argument0] = argument1 * global._lsys_quality;
global._lsys_light_ypos[argument0] = argument2 * global._lsys_quality;
global._lsys_light_changed[argument0] = true;