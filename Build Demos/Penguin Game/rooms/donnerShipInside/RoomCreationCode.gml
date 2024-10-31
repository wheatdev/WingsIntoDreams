window_set_caption("Donner Ship")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 7
global.mechanism = 0 
global.dialouge = 0 
if !audio_is_playing(donnerShipMusic){
	audio_stop_all()
	audio_play_sound(donnerShipMusic,0,true)
}
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 8{
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)	
	global.storyProgress = 8
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
}