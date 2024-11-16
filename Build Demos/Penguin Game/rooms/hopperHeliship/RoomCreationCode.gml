audio_stop_all()
audio_play_sound(hopperHelishipMusic,0,true)
window_set_caption("Hopper's Heliship")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
if global.lastIn = 8{
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
	if global.storyProgress < 9{
		global.storyProgress = 9
	}
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}
global.lastIn = 9
