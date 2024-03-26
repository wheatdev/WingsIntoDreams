window_set_caption("Spring Factory")
audio_stop_all()
audio_play_sound(springFactoryMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)