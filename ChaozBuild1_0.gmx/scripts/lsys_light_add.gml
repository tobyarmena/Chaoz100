// lsys_light_add(x, y, radius, color);
// Defines a new point light and returns it's ID

var i;

for (i = 0; i < global._lsys_lights; i += 1)
{
    if (global._lsys_light_deleted[i])
    {
        global._lsys_light_xpos[i] = argument0 * global._lsys_quality;
        global._lsys_light_ypos[i] = argument1 * global._lsys_quality;
        global._lsys_light_radius[i] = argument2 * global._lsys_quality;
        global._lsys_light_color[i] = argument3;
        global._lsys_light_sprite[i] = -1;
        global._lsys_light_rot[i] = 0;
        global._lsys_light_surface[i] = surface_create(argument2 * 2 * global._lsys_quality, argument2 * 2 * global._lsys_quality);
        global._lsys_light_deleted[i] = false;
        global._lsys_light_changed[i] = true;
        return i;
    }
}

global._lsys_light_xpos[global._lsys_lights] = argument0 * global._lsys_quality;
global._lsys_light_ypos[global._lsys_lights] = argument1 * global._lsys_quality;
global._lsys_light_radius[global._lsys_lights] = argument2 * global._lsys_quality;
global._lsys_light_color[global._lsys_lights] = argument3;
global._lsys_light_sprite[global._lsys_lights] = -1;
global._lsys_light_rot[global._lsys_lights] = 0;
global._lsys_light_surface[global._lsys_lights] = surface_create(argument2 * 2 * global._lsys_quality, argument2 * 2 * global._lsys_quality);
global._lsys_light_deleted[global._lsys_lights] = false;
global._lsys_light_changed[global._lsys_lights] = true;

global._lsys_lights += 1;

return global._lsys_lights - 1;