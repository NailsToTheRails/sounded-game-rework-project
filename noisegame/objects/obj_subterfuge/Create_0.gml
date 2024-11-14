musicplay = 0
evil = 0
alarm[0] = 58.03 * room_speed
ad = audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_position(ad,x,y,1000)
audio_emitter_falloff(ad,3,64*6,1)
audio_listener_orientation(0,1,0,0,0,1)
