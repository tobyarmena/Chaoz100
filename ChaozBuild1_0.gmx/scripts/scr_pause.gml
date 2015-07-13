global.paused = true

mousex = window_mouse_get_x() 
mousey = window_mouse_get_y() 
window_mouse_set(1000,500)

window_set_cursor(cr_default);
global.camerax = obj_camera.x
global.cameray = obj_camera.y

surf = surface_create(view_wview[0],view_hview[0]);   
surface_set_target(surf);
draw_clear_alpha(c_white, 0); // Clears surface.
view_surface_id[0] = surf; // This makes it so everything in view 0 will be drawn to the surface.
//draw_background_tiled(background_index[0], 0, 0);    
with(all) 
    {
    x = x-view_xview[0];  
    y = y-view_yview[0];  
    event_perform(ev_draw,0);
    x = x+view_xview[0];  
    y = y+view_yview[0];
    }   
view_surface_id[0] = -1; // Resets to draw back to view for later.
surface_reset_target();
visible = true;
x = x-view_xview[0];  
y = y-view_yview[0];

instance_deactivate_all(true);
physics_pause_enable(true);
instance_activate_object(obj_camera);
part_system_automatic_update(global.magma_sys, false);
part_system_automatic_update(global.magma2_sys, false);
part_system_automatic_update(global.magma3_sys, false);
part_system_automatic_update(global.minigun_sys, false);
part_system_automatic_update(global.minigun2_sys, false);
part_system_automatic_update(global.ice_sys, false);
part_system_automatic_update(global.ice2_sys, false);
part_system_automatic_update(global.ice3_sys, false);
part_system_automatic_update(global.wisp_sys, false);


//if global.showinv == true
//surface_free(surf);