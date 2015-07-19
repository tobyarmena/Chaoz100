//variables
var w, a, s, d, mouse_direction,move_speed;

//setables
move_speed = argument0

//set keyboard check shortcuts
w = keyboard_check(ord('W'));
a = keyboard_check(ord('A'));
s = keyboard_check(ord('S'));
d = keyboard_check(ord('D'));

//movement
if w {if (a||s||d){move_speed=move_speed*0.8}physics_apply_force(x,y,0,-move_speed)}
if a {if (w||s||d){move_speed=move_speed*0.8}physics_apply_force(x,y,-move_speed,0)}
if s {if (a||w||d){move_speed=move_speed*0.8}physics_apply_force(x,y,0,move_speed)}
if d {if (a||s||w){move_speed=move_speed*0.8}physics_apply_force(x,y,move_speed,0)}
    
//face direction of mouse
direction=(point_direction(phy_position_x,phy_position_y,mouse_x,mouse_y))
phy_rotation = -direction