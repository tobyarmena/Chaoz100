//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(18,ind.aimdir)+ lengthdir_x(irandom_range(-20,20),ind.aimdir-90)
yy = y + lengthdir_y(18,ind.aimdir)+ lengthdir_y(irandom_range(-20,20),ind.aimdir-90)
shot_dir=point_direction(x,y,xx,yy)
if knockback<0{knockback+=1}


if mouse_check_button(button) 
    {
    spd+=0.03
    if spd>1{spd = 1;}
    }
else
    {
    spd -= 0.015
    if spd<0{spd = 0;}
    }
image_speed = spd;

if spd >= 1 && delay = false
    {
    delay=true
    alarm[0]=3
    knockback = -4
    //shoot projectile
    projectile=instance_create(xx,yy,obj_minigun_pro)
    with(projectile)
        {
        phy_bullet = true;
        direction = ind.aimdir;
        ldx = lengthdir_x(100,ind.aimdir)
        ldy = lengthdir_y(100,ind.aimdir)
        physics_apply_impulse(x,y,ldx,ldy)
        }
    part_particles_create(global.minigun2_sys,xx,yy,global.minigun2_pt,30)
    }