if place_meeting(x+(global.dippSpeed*3), y, Dipp) and (keyboard_check(vk_left) or keyboard_check(ord("A"))){
	Dipp.y = Dipp.y - 3.2
	Dipp.x = Dipp.x - 6.4
}