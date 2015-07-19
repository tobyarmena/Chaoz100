randomize()


height = 20
width = 20

amount = 25
amountbranch=5

distancetoendlimit = 10

dif=0

/*
Grid Legend:

0 = Empty
1 = Start Room
2 = End Room
3 = Fight Room Type 1
4 = Fight Room Type 2
5 = Fight Room Type 3
6 = Fight Room Type 4
7 = Loot Room
8 = Shop Room
9 = Mega Loot Room

grid mopen legend:

1 = open all doors
2 = open left door
3 = open top door
4 = open right door
5 = open bottom door
6 = open left && top door 
7 = open left && right door
8 = open left && bottom door
9 = open top && right door
10 = open top && bottom door
11 = open right * bottom door

*/

//create grid


global.map=ds_grid_create(width,height)
ds_grid_clear(global.map,0)
global.mpath=ds_grid_create(width,height)
ds_grid_clear(global.mpath,0)
global.mopen=ds_grid_create(width,height)
ds_grid_clear(global.mopen,0)


//set starting room
rmstart=ds_grid_set(global.map,irandom_range(width*0.3,width*0.6),irandom_range(height*0.3,height*0.6),1)
global.startx=ds_grid_value_x(global.map,0,0,width,height,1);
global.starty=ds_grid_value_y(global.map,0,0,width,height,1);
ds_grid_set(global.mpath,global.startx,global.starty,1)

//Create rooms between
prevx = global.startx
prevy = global.starty

i = 0
j = 0

while(i<=amount&&j<=amount*4)
{
    
    dir=choose(1,2)
    if dir == 1
    {
        nextx = prevx+choose(1,-1)
        nexty = prevy
    }
    else if dir == 2
    {
        nextx = prevx
        nexty = prevy+choose(1,-1)
    }
    if (ds_grid_get_disk_min(global.map,prevx,prevy,1)!=0)//&&(nextx<width)&&(nexty<height)&&(nextx>=0)&&(nexty>=0)&&(ds_grid_get(global.map,nextx,nexty)!=1)
        {
        scr_dungeonGen()
        }
    else if (ds_grid_get(global.map,nextx,nexty)=0)&&(nextx<width)&&(nexty<height)&&(nextx>=0)&&(nexty>=0)
    {
        if i>=amount
            ds_grid_set(global.map,nextx,nexty,2)
        else
            ds_grid_set(global.map,nextx,nexty,choose(4,5,6,7,8,3,9,10))
        ds_grid_set(global.mpath,nextx,nexty,i+2)
        
        mopen=choose(0,0,0,1)
        if mopen==1
            {
            ds_grid_set(global.mopen,nextx,nexty,irandom_range(1,11))
            }
        
        
        prevx = nextx
        prevy = nexty
        i++
        
        newpath=choose(0,0,0,0,0,0,0,0,0,1)
        if (newpath == 1)
        {
            prevx2 =nextx
            prevy2 = nexty
            k=0
            p=0
            while(k<=amountbranch&&p<=amountbranch*4)
            {
                dir=choose(1,2)
                if dir == 1
                {
                    nextx = prevx2+choose(1,-1)
                    nexty = prevy2
                }
                else if dir == 2
                {
                    nextx = prevx2
                    nexty = prevy2+choose(1,-1)
                }
                if (ds_grid_get_disk_min(global.map,prevx,prevy,1)!=0)//&&(nextx<width)&&(nexty<height)&&(nextx>=0)&&(nexty>=0)&&(ds_grid_get(global.map,nextx,nexty)!=1)
                {
                    scr_dungeonGen()
                }
                else if (ds_grid_get(global.map,nextx,nexty)=0)&&(nextx<width)&&(nexty<height)&&(nextx>=0)&&(nexty>=0)
                {
                    if k>=amountbranch
                        ds_grid_set(global.map,nextx,nexty,9)
                    else
                        ds_grid_set(global.map,nextx,nexty,choose(3,4,5,6,7,8,9,10))
                    ds_grid_set(global.mpath,nextx,nexty,i+2+k)
                    
                    mopen=choose(0,0,0,1)
                    if mopen==1
                        {
                        ds_grid_set(global.mopen,nextx,nexty,irandom_range(1,11))
                        }
                        
                    prevx2 = nextx
                    prevy2 = nexty
                    k++
                } 
                p++    
                
            }
            
        }
        
        
    }
    j++
}
if ds_grid_value_disk_exists(global.map, global.startx, global.starty, distancetoendlimit, 2)
    scr_dungeonGen()

scr_resizegrid()

//set the starting coordinates
global.startx=ds_grid_value_x(global.map,0,0,width,height,1);
global.starty=ds_grid_value_y(global.map,0,0,width,height,1);


global.playerGrid = ds_grid_create(height,width)

global.playerPos_x = global.startx
global.playerPos_y = global.starty

global.roomVisit = ds_grid_create(width,height);
ds_grid_clear(global.roomVisit,0)
global.roomBeside = ds_grid_create(width,height);
ds_grid_clear(global.roomBeside,0)
global.drawn = ds_grid_create(width,height)
ds_grid_clear(global.drawn,0)



for(i=0;i<height;i++)
    for(j=0;j<width;j++)
    {
        visited[j,i] = false;
        setRoom[j,i] = room_start_0;
    }
    
setRoom[global.playerPos_x,global.playerPos_y] = room_start_0
visited[global.playerPos_x,global.playerPos_y] = true
