window_set_caption("Big Boss")
audio_stop_all()
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.mechanism = 0 
if global.skyUnlock < 3{
	global.cutsceneTimer = 1
	instance_create_depth(672,792,0,playerCutscene)	
}
else{
	instance_create_depth(672,480,0,Dipp)
}