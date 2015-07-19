//up

if abs(ds_grid_get(global.mpath,i,j -1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j -1) !=0
    {
    c_up=true
    }
else if (ds_grid_get(global.mopen,i,j)==3)||(ds_grid_get(global.mopen,i,j)==6)||(ds_grid_get(global.mopen,i,j)==9)||(ds_grid_get(global.mopen,i,j)==10)||(ds_grid_get(global.mopen,i,j)==1)
    {
    if (ds_grid_get(global.mpath,i,j -1) != 0)
        c_up=true
    }
else if (ds_grid_get(global.mopen,i,j-1)==5)||(ds_grid_get(global.mopen,i,j-1)==8)||(ds_grid_get(global.mopen,i,j-1)==10)||(ds_grid_get(global.mopen,i,j-1)==11)||(ds_grid_get(global.mopen,i,j-1)==1)
    {
    if (ds_grid_get(global.mpath,i,j -1) != 0)
        c_up=true
    }
else
    {
    c_up=false
    }

//down
if abs(ds_grid_get(global.mpath,i,j +1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j +1) !=0
    {
    c_down=true
    }
else if (ds_grid_get(global.mopen,i,j)==5)||(ds_grid_get(global.mopen,i,j)==8)||(ds_grid_get(global.mopen,i,j)==10)||(ds_grid_get(global.mopen,i,j)==11)||(ds_grid_get(global.mopen,i,j)==1)
    {
    if (ds_grid_get(global.mpath,i,j +1) != 0)
        c_down=true
    }
else if (ds_grid_get(global.mopen,i,j+1)==3)||(ds_grid_get(global.mopen,i,j+1)==6)||(ds_grid_get(global.mopen,i,j+1)==9)||(ds_grid_get(global.mopen,i,j+1)==10)||(ds_grid_get(global.mopen,i,j+1)==1)
    {
    if (ds_grid_get(global.mpath,i,j +1) != 0)
        c_down=true
    }
else
    {
    c_down=false
    }

//left
if abs(ds_grid_get(global.mpath,i-1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i-1,j) !=0
    {
    c_left=true
    }
else if (ds_grid_get(global.mopen,i,j)==2)||(ds_grid_get(global.mopen,i,j)==6)||(ds_grid_get(global.mopen,i,j)==7)||(ds_grid_get(global.mopen,i,j)==8)||(ds_grid_get(global.mopen,i,j)==1)
    {
    if (ds_grid_get(global.mpath,i-1,j) != 0)
        c_left=true
    }
else if (ds_grid_get(global.mopen,i-1,j)==4)||(ds_grid_get(global.mopen,i-1,j)==7)||(ds_grid_get(global.mopen,i-1,j)==9)||(ds_grid_get(global.mopen,i-1,j)==11)||(ds_grid_get(global.mopen,i-1,j)==1)
    {
    if (ds_grid_get(global.mpath,i-1,j) != 0)
        c_left=true
    }
else
    {
    c_left=false
    }
    
//right
if abs(ds_grid_get(global.mpath,i+1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i+1,j) !=0
    {
    c_right=true
    }
else if (ds_grid_get(global.mopen,i,j)==4)||(ds_grid_get(global.mopen,i,j)==7)||(ds_grid_get(global.mopen,i,j)==9)||(ds_grid_get(global.mopen,i,j)==11)||(ds_grid_get(global.mopen,i,j)==1)
    {
    if (ds_grid_get(global.mpath,i+1,j) != 0)
        c_right=true
    }
else if (ds_grid_get(global.mopen,i+1,j)==2)||(ds_grid_get(global.mopen,i+1,j)==6)||(ds_grid_get(global.mopen,i+1,j)==7)||(ds_grid_get(global.mopen,i+1,j)==8)||(ds_grid_get(global.mopen,i+1,j)==1)
    {
    if (ds_grid_get(global.mpath,i+1,j) != 0)
        c_right=true
    }
else
    {
    c_right=false
    }
    
if (ds_grid_get(global.mpath,i+1,j) == 0)
    c_right=false
if (ds_grid_get(global.mpath,i-1,j) == 0)
    c_left=false
if (ds_grid_get(global.mpath,i,j +1) == 0)
    c_down=false    
if (ds_grid_get(global.mpath,i,j -1) == 0)
    c_up=false      
         