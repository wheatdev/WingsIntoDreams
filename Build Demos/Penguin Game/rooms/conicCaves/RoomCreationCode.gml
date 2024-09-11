window_set_caption("Conic Caves")
audio_stop_all()
audio_play_sound(conicCavesMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.key = 0
global.lastIn = 4
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 5{
	global.storyProgress = 5
	instance_create_depth(global.playerStartX-920,global.playerStartY,0,playerCutscene)
}
else{
	//instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}