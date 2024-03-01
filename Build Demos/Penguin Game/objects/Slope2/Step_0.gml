if place_meeting(x+(global.dippSpeed*3), y, Player) and (keyboard_check(vk_left) or keyboard_check(ord("A"))){
	Player.y = Player.y - 6.4
	Player.x = Player.x - 6.4
}