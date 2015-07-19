knockback=0
mindmg=30
maxdmg=40
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
direction=ind.aimdir

if mouse_check_button(button) && meleeswipe ==0
    {
    meleeswipe=1
    
    }
if meleeswipe==1
    {
    image_speed=0.2
    image_index = min(image_index,3)
    }
if !mouse_check_button(button) && image_index=3
    {
    meleeswipe=2
    }
if meleeswipe==2
    {
    
    knockback = 10
    if image_index<4
        image_index=4
    image_speed=0.2
    
    if image_index=0
        {
        meleeswipe=0
        }
    if image_index == 4
        {
        with(par_enemies)   
            {
            fdir=point_direction(other.x,other.y,x,y)
            fx=lengthdir_x(80000,fdir)
            fy=lengthdir_y(80000,fdir)
            scr_angleDiff(other.x,other.y,other.direction)
            if distance_to_object(other)<48 && abs(angleDiff)>90
                {
                dmg = floor(irandom_range(other.mindmg,other.maxdmg)*global.skulldmg*global.tdmg);
                hp -= dmg
                lives+= dmg*0.02
                physics_apply_impulse(x,y,fx,fy)
                }
            }
        }
    }
else if meleeswipe==0
    {
    image_index = 0
    image_speed=0
    }