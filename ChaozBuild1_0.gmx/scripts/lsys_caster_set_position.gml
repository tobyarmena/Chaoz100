// lsys_caster_set_position(ID, x, y);
// Changes the casters position

var i;

global._lsys_caster_xpos[argument0] = argument1 * global._lsys_quality;
global._lsys_caster_ypos[argument0] = argument2 * global._lsys_quality;

for (i = 0; i < global._lsys_lights; i += 1)
{
    if (global._lsys_light_deleted[i])
        continue;
    if (lsys_caster_check_inside(argument0, i))
        global._lsys_light_changed[i] = true;
}