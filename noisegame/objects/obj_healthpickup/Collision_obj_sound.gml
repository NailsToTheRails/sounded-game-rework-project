scr_sound(sfx_hpcollect)
global.soundhp = clamp(global.soundhp + 1,1,8) 
instance_destroy(self)