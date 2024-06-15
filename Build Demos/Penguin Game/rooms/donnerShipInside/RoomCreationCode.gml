window_set_caption("Donner Ship")
if audio_is_playing(donnerShipMusic){
	
}
else{
	audio_stop_all()
	audio_play_sound(donnerShipMusic,0,true)
}
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 7
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 8{
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)	
	global.storyProgress = 8
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
}