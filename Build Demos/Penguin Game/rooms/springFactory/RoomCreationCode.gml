window_set_caption("Spring Factory")
audio_stop_all()
audio_play_sound(springFactoryMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.lastIn = 1
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 1{
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
	global.storyProgress = 1
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}