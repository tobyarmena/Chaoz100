// merge_walls(obj)
// Verbindet alle nebeneinanderliegende Objekte obj miteinander.
var c;
repeat (2)
{
  with (argument0)
  {
    if (x-1>=0&&x+sprite_get_width(argument0.sprite_index)*image_xscale<=room_width&&object_index=argument0)
    {
	     c=collision_point(x-1,y,argument0,false,true)
	     if (c)
	     {
  	       if (c.image_yscale=image_yscale&&c.object_index=argument0&&c.y=y)
  	       {
    	       x-=c.image_xscale*sprite_get_width(argument0.sprite_index);
    	       image_xscale+=c.image_xscale;
    	       with (c)
      	       instance_destroy();
  	       }
	     }
	     c=collision_point(x+sprite_get_width(argument0.sprite_index)*image_xscale,y,argument0,false,true)
	     if (c)
	     {
  	     if (c.image_yscale=image_yscale&&c.object_index=argument0&&c.y=y)
  	     {
    	     image_xscale+=c.image_xscale;
    	     with (c)
      	     instance_destroy();
  	     }
	     }
    }
  }
  with (argument0)
  {
    var c;
    if (y-1>=0&&y+sprite_get_height(argument0.sprite_index)*image_yscale<=room_height&&object_index=argument0)
    {
	     c=collision_point(x,y-1,argument0,false,true)
	     if (c)
	     {
  	     if (c.image_xscale=image_xscale&&c.object_index=argument0&&c.x=x)
  	     {
    	     y-=c.image_yscale*sprite_get_height(argument0.sprite_index);
    	     image_yscale+=c.image_yscale;
    	     with (c)
      	     instance_destroy();
  	     }
	     }
	     c=collision_point(x,y+sprite_get_height(argument0.sprite_index)*image_yscale,argument0,false,true)
	     if (c)
	     {
  	     if (c.image_xscale=image_xscale&&c.object_index=argument0&&c.x=x)
  	     {
    	     image_yscale+=c.image_yscale;
    	     with (c)
      	     instance_destroy();
  	     }
	     }
    }
  }
}