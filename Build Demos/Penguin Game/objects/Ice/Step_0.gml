if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		Player.x = Player.x + (global.lastPressed * 3)
	}
	if place_meeting(x+10,y,Player) and (keyboard_check(ord("A")) or keyboard_check(vk_left)){
		Player.x = Player.x + 10
	}
	if place_meeting(x-10,y,Player) and (keyboard_check(ord("D")) or keyboard_check(vk_right)){
		Player.x = Player.x - 10
	}
}