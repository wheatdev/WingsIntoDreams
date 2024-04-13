audio_stop_all()
audio_play_sound(mineDownUnderMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 5
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.minesUnlock = 1{
	global.cameraActive = 0
	
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}