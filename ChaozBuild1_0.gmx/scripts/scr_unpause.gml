global.reschange = true;


window_set_cursor(cr_none); 
physics_pause_enable(false);


global.showinv=false;
instance_activate_all()
part_system_automatic_update(global.magma_sys, true);
part_system_automatic_update(global.magma2_sys, true);
part_system_automatic_update(global.magma3_sys, true);
part_system_automatic_update(global.minigun_sys, true);
part_system_automatic_update(global.minigun2_sys, true);
part_system_automatic_update(global.ice_sys, true);
part_system_automatic_update(global.ice2_sys, true);
part_system_automatic_update(global.ice3_sys, true);
part_system_automatic_update(global.wisp_sys, true);
for(i=0;i<=maxInvSlots;i+=1)
    {
    with(global.slot[i])
    instance_destroy();   
    }
with(obj_deleteslot)
    instance_destroy()
global.paused = false

if global.showinv == true
surface_free(surf);