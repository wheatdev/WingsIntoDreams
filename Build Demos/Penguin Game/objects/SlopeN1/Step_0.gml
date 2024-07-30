if global.paused = -1{
	if image_yscale  = global.eGravity/10{
		if place_meeting(x-30, y- (global.eGravity * 2), Player) and (keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr)){
			Player.y = Player.y - (6.4 * (global.eGravity/10)) - (global.eGravity/2)
			Player.x = Player.x + (64/xVal)
		}
	}
	if global.playAs = 1{
		xVal = global.dippSpeed
	}
}