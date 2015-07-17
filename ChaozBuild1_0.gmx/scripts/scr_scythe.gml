

if mouse_check_button(button) 
    {
    meleeswipe=1
    image_speed=0.2
    image_index = min(image_index,3)
    }
if mouse_check_button_released(button) && image_index=3
    {
    meleeswipe=2
    }
if meleeswipe==2
    {
    if image_index<4
        image_index=4
    image_speed=0.2
    
    if image_index=0
        {
        meleeswipe=0
        }
    }
else if meleeswipe==0
    {
    image_index = 0
    }
