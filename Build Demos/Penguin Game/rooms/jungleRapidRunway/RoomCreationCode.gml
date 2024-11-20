window_set_caption("Jungle Rapid Runway")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 12
instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
audio_stop_all()
audio_play_sound(jungleMusic,0,true)