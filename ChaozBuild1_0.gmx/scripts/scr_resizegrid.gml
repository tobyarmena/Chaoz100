//resize map

//find left value to cut off
xcut1 = 0
check = 0
xx=0
while(check == 0)
    {
    check = ds_grid_get_max(global.map,0,0,xx,height);
    xcut1 = xx
    xx++    
    }

    
//find top value to cut off
ycut1 = 0
check = 0
yy=0
while(check == 0)
    {
    check = ds_grid_get_max(global.map,0,0,width,yy);
    ycut1 = yy
    yy++    
    }


//find right value cut off
xcut2 = 0
check = 0
xxx=0
while(check == 0)
    {
    check = ds_grid_get_max(global.map,width-1,height-1,(width-1)-xxx,0);
    xcut2 = xxx
    xxx+=1    
    }


//find bottom value cut off
ycut2 = 0
check = 0
yyy=0
while(check == 0)
    {
    check = ds_grid_get_max(global.map,width-1,height-1,0,(height-1)-yyy);
    ycut2 = yyy
    yyy+=1    
    }

//Move all grids to corner
ds_grid_set_grid_region(global.map, global.map, xcut1, ycut1, width, height, 0, 0);
ds_grid_set_grid_region(global.mpath, global.mpath, xcut1, ycut1, width, height, 0, 0);
ds_grid_set_grid_region(global.mopen, global.mopen, xcut1, ycut1, width, height, 0, 0);

//resize grid
ds_grid_resize(global.map,width-xcut1-xcut2,height-ycut1-ycut2)
ds_grid_resize(global.mpath,width-xcut1-xcut2,height-ycut1-ycut2)
ds_grid_resize(global.mopen,width-xcut1-xcut2,height-ycut1-ycut2)
width=width-xcut1-xcut2
height=height-ycut1-ycut2