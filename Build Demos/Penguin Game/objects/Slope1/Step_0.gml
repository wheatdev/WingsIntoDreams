if place_meeting(x-(global.dippSpeed*3), y, Dipp) and (keyboard_check(vk_right) or keyboard_check(ord("D"))){
	Dipp.y = Dipp.y - 6.4	
	Dipp.x = Dipp.x + 6.4
}