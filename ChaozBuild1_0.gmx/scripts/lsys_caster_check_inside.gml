// lsys_caster_check_inside(ID, light ID);

var i;

for (i = 0; i < global._lsys_caster_points[argument0]; i += 1)
{
    if (global._lsys_caster_xpos[argument0] + global._lsys_caster_point_x[argument0, i] >= global._lsys_light_xpos[argument1] - global._lsys_light_radius[argument1]
    && global._lsys_caster_ypos[argument0] + global._lsys_caster_point_y[argument0, i] >= global._lsys_light_ypos[argument1] - global._lsys_light_radius[argument1]
    && global._lsys_caster_xpos[argument0] + global._lsys_caster_point_x[argument0, i] <= global._lsys_light_xpos[argument1] + global._lsys_light_radius[argument1]
    && global._lsys_caster_ypos[argument0] + global._lsys_caster_point_y[argument0, i] <= global._lsys_light_ypos[argument1] + global._lsys_light_radius[argument1])
        return 1;
}

return 0;