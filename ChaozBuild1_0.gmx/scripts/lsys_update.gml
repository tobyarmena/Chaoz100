// lsys_update(alpha)
// Updates the lightsystem with the given alpha
// Use in step event, only performs actions if something changed

var i, j, k, xp, yp, xs, ys, mul;

draw_set_color(c_black);

for (i = 0; i < global._lsys_lights; i += 1)
{
    if (global._lsys_light_changed[i] == false || global._lsys_light_deleted[i])
        continue;
    
    surface_set_target(global._lsys_light_surface[i]);

    draw_clear(c_black);
    if (global._lsys_light_sprite[i] < 0)
    {
        draw_circle_color(global._lsys_light_radius[i], global._lsys_light_radius[i], global._lsys_light_radius[i], c_white, c_black, false);
    }
    else
    {
        xs = global._lsys_light_radius[i] / sprite_get_width(global._lsys_light_sprite[i]) * 2;
        ys = global._lsys_light_radius[i] / sprite_get_height(global._lsys_light_sprite[i]) * 2;
        draw_sprite_ext(global._lsys_light_sprite[i], 0, global._lsys_light_radius[i], global._lsys_light_radius[i], xs, ys, global._lsys_light_rot[i], c_white, 1);
    }

    xp =  -global._lsys_light_xpos[i] + global._lsys_light_radius[i];
    yp =  -global._lsys_light_ypos[i] + global._lsys_light_radius[i];

    for (j = 0; j < global._lsys_casters; j += 1)
    {
        if (!lsys_caster_check_inside(j, i))
        || (global._lsys_caster_deleted[j])
            continue;
        mul = 10;
        draw_primitive_begin(pr_trianglestrip);
        for (k = 0; k < global._lsys_caster_points[j]; k += 1)
        {
            draw_vertex(xp + global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, k], yp + global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, k]);
            draw_vertex(xp + global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, k] + lengthdir_x(global._lsys_light_radius[i] * mul, point_direction(global._lsys_light_xpos[i], global._lsys_light_ypos[i], global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, k], global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, k])),
            yp + global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, k] + lengthdir_y(global._lsys_light_radius[i] * mul, point_direction(global._lsys_light_xpos[i], global._lsys_light_ypos[i], global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, k], global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, k])));
        }
        draw_vertex(xp + global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, 0], yp + global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, 0]);
        draw_vertex(xp + global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, 0] + lengthdir_x(global._lsys_light_radius[i] * mul, point_direction(global._lsys_light_xpos[i], global._lsys_light_ypos[i], global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, 0], global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, 0])),
        yp + global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, 0] + lengthdir_y(global._lsys_light_radius[i] * mul, point_direction(global._lsys_light_xpos[i], global._lsys_light_ypos[i], global._lsys_caster_xpos[j] + global._lsys_caster_point_x[j, 0], global._lsys_caster_ypos[j] + global._lsys_caster_point_y[j, 0])));
        draw_primitive_end();
    }
    global._lsys_light_changed[i] = false;
    surface_reset_target();
}

surface_set_target(global._lsys_surface);
draw_clear(c_black);
draw_set_blend_mode(bm_add);
for (i = 0; i < global._lsys_lights; i += 1)
{
    if (!global._lsys_light_deleted[i])
        draw_surface_ext(global._lsys_light_surface[i], global._lsys_light_xpos[i] - global._lsys_light_radius[i], global._lsys_light_ypos[i] - global._lsys_light_radius[i], 1, 1, 0, global._lsys_light_color[i], 1);
}
draw_set_blend_mode(bm_normal);
draw_set_alpha(1-argument0);
draw_rectangle_color(0, 0, room_width * global._lsys_quality, room_height * global._lsys_quality, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

surface_reset_target();

global._lsys_changed = false;