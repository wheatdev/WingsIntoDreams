window_set_caption("ConCave Temple")
if global.key = 0{
	audio_stop_all()
	audio_play_sound(conCaveTempleMusic,0,true)
	global.playerStartX = 640
	global.playerStartY = 64
}
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 5
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 5{
	global.storyProgress = 5
	global.cameraActive = 0
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}