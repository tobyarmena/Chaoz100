// lsys_init(quality)
// Initializes the light system
// quality between 0 and 1 (highest quality)

global._lsys_lights = 0;
global._lsys_casters = 0;
global._lsys_quality = max(10/max(room_width, room_height), argument0);
global._lsys_surface = surface_create(room_width * global._lsys_quality, room_height * global._lsys_quality);