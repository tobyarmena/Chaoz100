if transitioning == true
    alpha = clamp(alpha + (fade*0.05),0,1)

if(alpha==1)
    {
    room_goto(argument0)
    fade = -1;
    }
if (alpha==0)&&(fade == -1)
    {
    transitioning = false;
    fade = 1
    alpha = 0
    }