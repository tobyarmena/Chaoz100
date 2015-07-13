// lsys_caster_add(x, y);
// Defines a new shadow caster and returns it's ID

var i;

for (i = 0; i < global._lsys_casters; i += 1)
{
    if (global._lsys_caster_deleted[i])
    {
        global._lsys_caster_points[i] = 0;
        global._lsys_caster_xpos[i] = argument0 * global._lsys_quality;
        global._lsys_caster_ypos[i] = argument1 * global._lsys_quality;
        global._lsys_caster_cx[i] = 0;
        global._lsys_caster_cy[i] = 0;
        global._lsys_caster_deleted[i] = false;
        return i;
    }
}

global._lsys_caster_points[global._lsys_casters] = 0;
global._lsys_caster_xpos[global._lsys_casters] = argument0 * global._lsys_quality;
global._lsys_caster_ypos[global._lsys_casters] = argument1 * global._lsys_quality;
global._lsys_caster_cx[global._lsys_casters] = 0;
global._lsys_caster_cy[global._lsys_casters] = 0;
global._lsys_caster_deleted[global._lsys_casters] = false;

global._lsys_casters += 1;

return global._lsys_casters - 1;