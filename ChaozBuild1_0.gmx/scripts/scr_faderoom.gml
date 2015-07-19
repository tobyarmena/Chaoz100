if transitioning = true
{
    alpha = clamp(alpha + (fade*0.05),0,1)

if(alpha==1)
    {
    obj_dungeonControl.activatedoor=false
    nextRoom = ds_grid_get(global.map,global.playerPos_x+argument1,global.playerPos_y+argument2)
    ds_grid_set(global.playerGrid,global.playerPos_x,global.playerPos_y ,0)
    global.playerPos_x += argument1
    global.playerPos_y += argument2
    
    global.spawn = argument3
    
    if visited[global.playerPos_x,global.playerPos_y] = false
        setRoom[global.playerPos_x,global.playerPos_y] = room_duplicate(global.room_value[global.currentDungeon,nextRoom])
    
    room_goto(setRoom[global.playerPos_x,global.playerPos_y])
    alarm[0]=10
    fade = -1;

    global.firstTouch = true
    }
    
if (alpha==0)&&(fade == -1)
    {
    transitioning = false;
    fade = 1
    alpha = 0
    obj_dungeonControl.activatedoor=false
    }
}
    
