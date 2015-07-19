var w,a,s,d,spd

w = keyboard_check(ord('W'));
a = keyboard_check(ord('A'));
s = keyboard_check(ord('S'));
d = keyboard_check(ord('D'));

spd=argument0


if w&&a{dir=135}
else if w&&d{dir=45}
else if s&&a{dir=225}
else if s&&d{dir=315}
else if w{dir=90}
else if a{dir=180}
else if s{dir=270}
else if d{dir=0}

    
if w||a||s||d
    {
    var xx,yy
    xx = lengthdir_x(spd,dir)
    yy = lengthdir_y(spd,dir)
    
    physics_apply_force(x,y,xx,yy)
    }
