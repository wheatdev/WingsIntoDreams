if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player) and global.cameraActive = 1{
		Player.x = Player.x + (global.lastPressed * 3)
		timer = 50
		direct = global.lastPressed
	}
	else{
		if timer > 0 and global.cameraActive =1{
			timer = timer -1 
			Player.x = Player.x + (global.lastPressed * 3)
		}
	}
	if place_meeting(x+10,y,Player) and (keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl)){
		Player.x = Player.x + 10
	}
	if place_meeting(x-10,y,Player) and (keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr)){
		Player.x = Player.x - 10
	}
}