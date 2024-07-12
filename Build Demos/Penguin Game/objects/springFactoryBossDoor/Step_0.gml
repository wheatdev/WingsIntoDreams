if place_meeting(x,y,Player) and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)){
	global.cameraActive = 0	
	instance_create_depth(x,y,0,playerCutscene)
	global.playerStartX = 2016
	global.playerStartY = 2528
}