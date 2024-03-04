if place_meeting(x-30, y, Player) and (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	Player.y = Player.y - 6.4
	Player.x = Player.x + 6.4
}