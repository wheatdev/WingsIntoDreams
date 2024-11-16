window_set_caption("Sky High Hunting")
audio_stop_all()
audio_play_sound(skyHighHuntingMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 11
global.mechanism = 0 
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
