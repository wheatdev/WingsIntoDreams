window_set_caption("Donner Diving")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.cameraActive = 1
global.playerStartX = 640
global.playerStartY = 408
if global.lastIn != 14{
	instance_create_depth(global.playerStartX-700,global.playerStartY,0,playerCutscene)	
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)	
}
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
audio_stop_all()
audio_play_sound(donnerDivingMusic,0,true)