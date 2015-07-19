if transitioning2 = true
{
    alpha = clamp(alpha + (fade*0.05),0,1)

if(alpha==1)
    {
    global.currentDungeon += 1
    ds_grid_destroy(global.map)
    ds_grid_destroy(global.mpath)
    ds_grid_destroy(global.mopen)
    ds_grid_destroy(global.roomVisit)
    ds_grid_destroy(global.roomBeside)
    ds_grid_destroy(global.drawn)
    scr_dungeonGen()
    room_goto(global.room_value[global.currentDungeon,1]);  
    
    fade = -1;
    }
    
if (alpha==0)&&(fade == -1)
    {
    transitioning2 = false;
    fade = 1
    alpha = 0
    obj_dungeonControl.activatedoor=false
    }
    
}
    
