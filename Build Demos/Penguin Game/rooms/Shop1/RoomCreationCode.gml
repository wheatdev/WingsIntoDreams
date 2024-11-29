global.cameraActive = -1
global.lastSafeX = 192
if global.lastIn != 0{
	instance_create_depth(-160,448,0,playerCutscene)	
	global.lastIn = 0 
}
else{
	instance_create_depth(192,530,0,playerCutscene)		
}
