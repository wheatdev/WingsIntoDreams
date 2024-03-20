if place_meeting(x+30, y- (global.eGravity * 2), Player) and (keyboard_check(vk_left) or keyboard_check(ord("A"))){
	Player.y = Player.y - (3.2 * (global.eGravity/10))
	Player.x = Player.x - 6.4	
}