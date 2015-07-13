// lsys_draw()
// draws the final shadow surface in the view

draw_set_blend_mode_ext(bm_dest_color, bm_zero);
draw_surface_part_ext(global._lsys_surface, view_xview * global._lsys_quality, view_yview * global._lsys_quality, view_wview * global._lsys_quality, view_hview * global._lsys_quality, view_xview, view_yview, 1/global._lsys_quality, 1/global._lsys_quality, c_white, 1);
draw_set_blend_mode(bm_normal);