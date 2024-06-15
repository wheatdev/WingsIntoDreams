audio_stop_all()
audio_play_sound(hopperHelishipMusic,0,true)
window_set_caption("Hopper's Heliship")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
if global.lastIn = 8{
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
	if global.storyProgress < 9{
		global.storyProgress = 9
	}
}
global.lastIn = 9
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
global.cameraActive = 0
