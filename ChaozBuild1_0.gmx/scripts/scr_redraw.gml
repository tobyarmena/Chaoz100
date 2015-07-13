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