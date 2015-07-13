// lsys_caster_add_point(ID, x, y);
// Adds a vertex to the shadow caster relative to it's position
// Returns number of points

var i;

global._lsys_caster_point_x[argument0, global._lsys_caster_points[argument0]] = argument1 * global._lsys_quality;
global._lsys_caster_point_y[argument0, global._lsys_caster_points[argument0]] = argument2 * global._lsys_quality;

global._lsys_caster_points[argument0] += 1;

global._lsys_caster_cx[argument0] = 0;
global._lsys_caster_cy[argument0] = 0;

for (i = 0; i < global._lsys_caster_points[argument0]; i += 1)
{
    global._lsys_caster_cx[argument0] += global._lsys_caster_point_x[argument0, i];
    global._lsys_caster_cy[argument0] += global._lsys_caster_point_y[argument0, i];
}

global._lsys_caster_cx[argument0] /= global._lsys_caster_points[argument0];
global._lsys_caster_cy[argument0] /= global._lsys_caster_points[argument0];

for (i = 0; i < global._lsys_lights; i += 1)
{
    if (global._lsys_light_deleted[i])
        continue;
    if (lsys_caster_check_inside(argument0, i))
        global._lsys_light_changed[i] = true;
}

return global._lsys_caster_points[argument0];