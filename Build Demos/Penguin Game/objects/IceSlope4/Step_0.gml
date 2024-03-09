if global.paused = -1{	
	if place_meeting(x+30, y, Player) or place_meeting(x+30, y, DippSword){
		Player.x = Player.x + (6.4 *global.lastPressed)
		if global.lastPressed = -1{
			Player.y = Player.y -3.2
		}
		if global.lastPressed = 1{
			Player.x = Player.x + 6.4
		}
		if keyboard_check(ord("S")) or keyboard_check(vk_down){
			Player.x = Player.x + 30
		}
	}
}