if global.paused = -1{
	if image_yscale  = global.eGravity/10{
		if place_meeting(x+(xVal * 3), y, Player){
			if global.lastPressed = -1{
				Player.y = Player.y - (global.eGravity * 2)
				Player.x = Player.x - xVal
			}
			if global.lastPressed = 1{
				Player.x = Player.x + xVal
			}
			if (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd)) and place_meeting(x,y,water){
				Player.x = Player.x + 10
			}
		}
	}
	if global.playAs = 1{
		xVal = global.dippSpeed
	}
}