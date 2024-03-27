window_set_caption("WARNING: INTRUDER AT THE SPRING FACTORY!")
audio_stop_all()
audio_play_sound(springFactoryBossMusic,0,true)
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
global.cameraActive = 1
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.storyProgress < 2{
	global.storyProgress = 2
}