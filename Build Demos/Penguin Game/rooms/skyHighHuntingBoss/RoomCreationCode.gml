window_set_caption("Big Boss")
audio_stop_all()
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.mechanism = 0 
global.cameraActive = 0
global.lastIn = 11
if global.skyUnlock < 3{
	global.cutsceneTimer = 1
	instance_create_depth(1376,1100,0,playerCutscene)	
}
else{
	instance_create_depth(1376,576,0,Dipp)
}