repeat(argument0)
        {
        dreamorb=instance_create(argument1,argument2,obj_dreamorb)
        with(dreamorb)
            {
            var dir=irandom_range(argument3,argument4)
            var xforce = lengthdir_x(8000,dir)
            var yforce = lengthdir_y(8000,dir)
            physics_apply_impulse(x,y,xforce,yforce)
            }
        }