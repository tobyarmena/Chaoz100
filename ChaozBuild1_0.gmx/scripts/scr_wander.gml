timer -= 1;

if timer <= 0
    {
    timer = random_range(20,100);
    locationx = x + random_range(-400,400);
    locationy = y + random_range(-400,400);
    
    
    }
if (distance_to_point(locationx,locationy)>5&&mp_grid_path(global.grid, path, x, y, locationx, locationy, true))
    {
    var path_x = path_get_point_x(path, 1);
    var path_y = path_get_point_y(path, 1);

    var pdir = point_direction(x, y, path_x, path_y);
    var force = argument0;
    var vx = lengthdir_x(force, pdir);
    var vy = lengthdir_y(force, pdir);

    physics_apply_force(x, y, vx, vy);
    
    dir_x = path_get_point_x(path, 2);
    dir_y = path_get_point_y(path, 2);

    vdir = point_direction(x, y, locationx, locationy);
    scr_turn(vdir,10)
    phy_rotation = -direction
    
    
    }
 



/*

timer -= 1;


if timer <= 0
    {
    timer = random_range(50,100)
    action = choose(1,1,1)
    dir = random(360)
    turnspeed = random_range(0.1,5);
    
    
    
    }
    

if action == 1
    {
    if (collision_point(lengthdir_x(30,dir),lengthdir_y(30,dir),obj_parent_wall,false,true))
        {
        dir+=180
        turnspeed = 20;
        }
    if (collision_point(lengthdir_x(128,dir),lengthdir_y(128,dir),obj_parent_wall,false,true))
        {
        dir+=choose(1,-1)*90
        turnspeed = 20;
        }
    scr_turn(dir,turnspeed);
    phy_rotation = -direction;
    var ldx = lengthdir_x(argument0, direction);
    var ldy = lengthdir_y(argument0, direction);
    physics_apply_force(x, y, ldx, ldy);
    }
    
*/



    