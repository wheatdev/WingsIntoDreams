window_set_caption("Donner Ship")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 8
instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if !audio_is_playing(donnerShipMusic){
	audio_stop_all()
	audio_play_sound(donnerShipMusic,0,true)
}