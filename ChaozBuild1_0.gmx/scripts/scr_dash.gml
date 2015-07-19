if keyboard_check_pressed(vk_space) && delay = false
    {
    delay = true
    alarm[0]=40
    with(obj_player)
        {
        var xx = lengthdir_x(150000,dir)
        var yy = lengthdir_y(150000,dir)
        physics_apply_impulse(x,y,xx,yy)
        }
    //delay1=true
    candash=10
    
    
    }

if candash>0 && candash%3==0
    {
    scr_spritetoparticle(obj_skull)
    scr_spritetoparticle(obj_body)
    scr_spritetoparticle(obj_leftarm)
    scr_spritetoparticle(obj_rightarm)
    scr_spritetoparticle(obj_legs)
    }
    
candash -=1
