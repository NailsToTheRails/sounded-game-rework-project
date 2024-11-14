if instance_exists(obj_sound) {
x = approach(x,obj_sound.x,evil)	
y = approach(y,obj_sound.y,evil)	
audio_listener_position(obj_sound.x,obj_sound.y,1000)
}
audio_emitter_position(ad,x,y,1000)
if (!musicplay) {
audio_play_sound_on(ad,mu_sub_vocal,true,1,1)
musicplay = 1
}