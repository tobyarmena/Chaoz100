if global.inventory[26,0] = "" && (global.items[argument0,1] = 1)
    {
    global.inventory[26,0] = global.items[argument0,0];
    global.inventory[26,1] = global.items[argument0,1];
    global.inventory[26,2] = global.items[argument0,2];
    global.inventory[26,3] = global.items[argument0,3];
    global.inventory[26,4] = global.items[argument0,4];
    global.inventory[26,5] = global.items[argument0,5];
    }

else if global.inventory[27,0] = "" && (global.items[argument0,1] = 1)
    {
    global.inventory[27,0] = global.items[argument0,0];
    global.inventory[27,1] = global.items[argument0,1];
    global.inventory[27,2] = global.items[argument0,2];
    global.inventory[27,3] = global.items[argument0,3];
    global.inventory[27,4] = global.items[argument0,4];
    global.inventory[27,5] = global.items[argument0,5];
    }
else if global.inventory[25,0] = "" && (global.items[argument0,1] = 2)
    {
    global.inventory[25,0] = global.items[argument0,0];
    global.inventory[25,1] = global.items[argument0,1];
    global.inventory[25,2] = global.items[argument0,2];
    global.inventory[25,3] = global.items[argument0,3];
    global.inventory[25,4] = global.items[argument0,4];
    global.inventory[25,5] = global.items[argument0,5];
    }
else if global.inventory[28,0] = "" && (global.items[argument0,1] = 3)
    {
    global.inventory[28,0] = global.items[argument0,0];
    global.inventory[28,1] = global.items[argument0,1];
    global.inventory[28,2] = global.items[argument0,2];
    global.inventory[28,3] = global.items[argument0,3];
    global.inventory[28,4] = global.items[argument0,4];
    global.inventory[28,5] = global.items[argument0,5];
    }
else if global.inventory[29,0] = "" && (global.items[argument0,1] = 4)
    {
    global.inventory[29,0] = global.items[argument0,0];
    global.inventory[29,1] = global.items[argument0,1];
    global.inventory[29,2] = global.items[argument0,2];
    global.inventory[29,3] = global.items[argument0,3];
    global.inventory[29,4] = global.items[argument0,4];
    global.inventory[29,5] = global.items[argument0,5];
    }

else 

    {
    for(i=0;i<=global.maxInvSlots-5;i+=1)
        {
        if global.inventory[i,0] = ""
            {
            global.inventory[i,0] = global.items[argument0,0];
            global.inventory[i,1] = global.items[argument0,1];
            global.inventory[i,2] = global.items[argument0,2];
            global.inventory[i,3] = global.items[argument0,3];
            global.inventory[i,4] = global.items[argument0,4];
            global.inventory[i,5] = global.items[argument0,5];
            i = maxInvSlots
            }
        }
    }