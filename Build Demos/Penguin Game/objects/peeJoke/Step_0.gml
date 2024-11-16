if place_meeting(x,y,Player) and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)){
	global.dippHealthMax = global.dippHealthMax + 1
	global.dippHealth = global.dippHealth + 1
	global.cameraActive = -1
	global.lastSafeX = x
	global.cutsceneTimer = 2
	audio_play_sound(peeJokeSE,0,false)
	instance_destroy()
}	