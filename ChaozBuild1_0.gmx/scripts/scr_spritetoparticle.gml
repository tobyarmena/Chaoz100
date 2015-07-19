with(argument0)
        {
        dash1_sys = part_system_create();
        dash1_pt = part_type_create();
        part_type_sprite(dash1_pt,sprite_index,false,false,false)
        part_type_orientation(dash1_pt,image_angle,image_angle,0,0,false)
        part_type_colour1(dash1_pt,c_green)
        part_type_life(dash1_pt,20,20)
        part_type_alpha2(dash1_pt,0.3,0)
        part_particles_create(dash1_sys,x,y,dash1_pt,1)
        }
