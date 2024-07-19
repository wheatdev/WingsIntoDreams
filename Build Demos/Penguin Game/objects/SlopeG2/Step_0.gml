if global.paused = -1{
	if image_yscale  = global.eGravity/10{
		if place_meeting(x+30, y- (global.eGravity * 2), Player) and (keyboard_check(vk_left) or keyboard_check(ord("A"))){
			Player.y = Player.y - (3.2 * (global.eGravity/10)) - (global.eGravity/2)
			Player.x = Player.x - (64/xVal)	
		}
	}
	if global.playAs = 1{
		xVal = global.dippSpeed
	}
}