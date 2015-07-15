block_size = 24
v_space = 4
h_space = 4

v_offset = -500
h_offset = -500

room_x =  view_xview[0]+view_wview[0]
room_y =  view_yview[0]+view_hview[0] 

sprite_size=20 
sprite_size2=22 

draw_set_alpha(1)
draw_set_font(fnt_inventory)
room_x =  view_xview[0]+view_wview[0]
room_y =  view_yview[0]+view_hview[0] 

draw_set_alpha(1)
draw_set_font(fnt_inventory)


for(i=0;i<width;i++)
    for(j=0;j<height;j++)
        {
        
        draw_set_alpha(1)
        draw_set_colour(c_white)
        draw_set_halign(fa_left)
        draw_set_valign(fa_top)
        draw_text(view_xview+i*30+30,view_yview+j*30+30,ds_grid_get(global.mpath,i,j))
        
        if(i==global.playerPos_x&&j==global.playerPos_y)
            {
            if(ds_grid_get(global.map,i,j) = 2)
                {
                draw_set_alpha(1)
                draw_sprite_stretched(spr_miniMap,3,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
        
                  }
            else
                {
                draw_set_alpha(1)
                draw_sprite_stretched(spr_miniMap,1,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
                }
            }
        else if ds_grid_get(global.map,i,j) = 2 && ds_grid_get(global.roomBeside,i,j) = 1
            {
            draw_set_alpha(1)
            draw_sprite_stretched(spr_miniMap,2,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
            }
        else if ds_grid_get(global.roomBeside,i,j) = 1 && ds_grid_get(global.map,i,j) > 0 && ds_grid_get(global.map,i,j) != 2
            {
                if ds_grid_get(global.roomVisit,i,j) = 1
                {
                draw_set_alpha(1)
                 draw_sprite_stretched(spr_miniMap,0,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)  
               
        if abs(ds_grid_get(global.mpath,i-1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i-1,j) >0 //left door
        {
        draw_set_colour(c_red)
        draw_rectangle(room_x+i*block_size+h_space+h_offset-1,room_y+j*block_size+v_space+v_offset+sprite_size/2-4,room_x+i*block_size+h_space+h_offset-3,room_y+j*block_size+v_space+v_offset+sprite_size/2+4,0)
        }
        if abs(ds_grid_get(global.mpath,i+1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i+1,j) >0 //right door
        {
        draw_set_colour(c_red)
        draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size+1,room_y+j*block_size+v_space+v_offset+sprite_size/2-2,room_x+i*block_size+h_space+h_offset+sprite_size+3,room_y+j*block_size+v_space+v_offset+sprite_size/2+4,0)
        
        }
        if abs(ds_grid_get(global.mpath,i,j-1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j-1) >0 //up door
        {
        draw_set_colour(c_red)
        draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size/2-4,room_y+j*block_size+v_space+v_offset-1,room_x+i*block_size+h_space+h_offset+sprite_size/2+4,room_y+j*block_size+v_space+v_offset-3,0)
        }
        if abs(ds_grid_get(global.mpath,i,j+1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j+1) >0 //down door
        {
        draw_set_colour(c_red)
        draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size/2-4,room_y+j*block_size+v_space+v_offset+sprite_size+1,room_x+i*block_size+h_space+h_offset+sprite_size/2+4,room_y+j*block_size+v_space+v_offset+sprite_size+3,0)    
        } 
                
                }
                else if ds_grid_get(global.roomVisit,i,j) = 0
                {              
                 draw_set_alpha(1)
                 draw_sprite_stretched(spr_miniMap,4,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)  
                 }
                   
                }
           else if ds_grid_get(global.map,i,j) = 0
                draw_set_alpha(0)
                
        //draw_rectangle(view_xview[0]+i*block_size+h_space+h_offset,view_yview[0]+j*block_size+v_space+v_offset,view_xview[0]+(i+1)*block_size+h_offset,view_yview[0]+(j+1)*block_size+v_offset,1)
        }
        
draw_set_alpha(1)
draw_sprite_stretched(spr_miniMap,1,view_xview[0]+xx*block_size+h_space+h_offset,view_yview[0]+yy*block_size+v_space+v_offset,sprite_size,sprite_size)
//draw_text(view_xview[0]+10,view_yview[0]+view_hview[0]-100,global.scale)

draw_rectangle(room_x,room_y,room_x+width,room_y+height,true)

                  /*  if (global.doorright == true) && (global.doorleft == true) && (global.doordown == true) && (global.doorup == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,0,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                    else if (global.doorright == true) && (global.doorleft == true) && (global.doorup == true)
                    {
                        draw_set_alpha(1)
                        draw_sprite_stretched(spr_corridor,1,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)  
                    }
                     else if (global.doorleft == true) && (global.doordown == true) && (global.doorup == true)
                    {
                        draw_set_alpha(1)
                        draw_sprite_stretched(spr_corridor,2,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)  
                    }
                    else if (global.doorright == true) && (global.doordown == true) && (global.doorup == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,3,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                       else if (global.doorright == true) && (global.doorleft == true) && (global.doordown == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,4,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                       else if  (global.doorleft == true)&& (global.doorup == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,5,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                       else if (global.doorright == true) && (global.doorup == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,6,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                        else if (global.doordown == true) && (global.doorup == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,7,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                        else if (global.doorleft == true) && (global.doordown == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,8,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                        else if (global.doorright == true) && (global.doordown == true)
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,9,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }
                        else if (global.doorright == true) && (global.doorleft == true) 
                    {
                      draw_set_alpha(1)
                      draw_sprite_stretched(spr_corridor,10,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size2,sprite_size2)
                    }

