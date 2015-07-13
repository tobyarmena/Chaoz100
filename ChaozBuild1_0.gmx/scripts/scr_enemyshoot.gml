//Shooting
projectile=instance_create(x,y,argument0) 
with (projectile)
    {
    ldx = lengthdir_x(600,point_direction(x,y,obj_player.x,obj_player.y))
    ldy = lengthdir_y(600,point_direction(x,y,obj_player.x,obj_player.y))
    physics_apply_impulse(x,y,ldx,ldy)
}