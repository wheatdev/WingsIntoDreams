if global.paused = -1{
	if image_yscale  = global.eGravity/10{
		if place_meeting(x-30, y- (global.eGravity * 2), Player) and (keyboard_check(vk_right) or keyboard_check(ord("D"))){
			Player.y = Player.y - (3.2 * (global.eGravity/10))
			Player.x = Player.x + 6.4	
		}
	}
}