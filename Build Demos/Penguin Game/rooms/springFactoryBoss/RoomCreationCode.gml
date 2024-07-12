window_set_caption("WARNING: INTRUDER AT THE SPRING FACTORY!")
global.pBounce = 0
global.isDamaged = 0
global.allowDamage = 0
if global.storyProgress < 2{
	global.talking = 1
	global.cameraActive = 0
	instance_create_depth(global.playerStartX,global.playerStartY,0,playerCutscene)
	global.storyProgress = 2
}
else{
	instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)
}
instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)