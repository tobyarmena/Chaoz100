//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)
if knockback<0{knockback+=1}




if mouse_check_button(button)&&delay=false
    {
    delay=true
    alarm[0]=30
    knockback = -10
    //shoot projectile
    projectile=instance_create(xx,yy,obj_ice_pro)
    with(projectile)
        {
        phy_bullet = true;
        direction = ind.aimdir;
        ldx = lengthdir_x(1000,ind.aimdir)
        ldy = lengthdir_y(1000,ind.aimdir)
        physics_apply_impulse(x,y,ldx,ldy)
        }
    projectile2=instance_create(xx,yy,obj_ice_pro)
    with(projectile2)
        {
        phy_bullet = true;
        direction = ind.aimdir+5;
        ldx = lengthdir_x(1000,ind.aimdir+5)
        ldy = lengthdir_y(1000,ind.aimdir+5)
        physics_apply_impulse(x,y,ldx,ldy)
        }
    projectile3=instance_create(xx,yy,obj_ice_pro)
    with(projectile3)
        {
        phy_bullet = true;
        direction = ind.aimdir-5;
        ldx = lengthdir_x(1000,ind.aimdir-5)
        ldy = lengthdir_y(1000,ind.aimdir-5)
        physics_apply_impulse(x,y,ldx,ldy)
        }
    part_particles_create(global.ice2_sys,xx,yy,global.ice2_pt,30)
    }