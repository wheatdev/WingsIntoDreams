if place_meeting(x-30, y- (global.eGravity * 2), Player) and (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	Player.y = Player.y - (6.4 * (global.eGravity/10))
	Player.x = Player.x + 6.4
}