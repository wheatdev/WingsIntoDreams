if global.paused = -1{
	if global.cameraActive = 1{
	rangeX = abs(x - Player.x)
	rangeY = abs(y-Player.y)
	}
	else{
		if timer > 1{
		sprite_index = PrincessTalk
	}
	else{
		sprite_index = Princess
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and timer < 1{
		timer = 10
	}
	timer = timer - 1	
	}	
	if rangeX < 1600 and rangeY < 100 and (global.skyUnlock = 1 or global.skyUnlock = 5){
		global.talking = 1
		global.cameraActive = -1
		global.lastSafeX = x + 1000
		global.lastPressed = -1
	}
}