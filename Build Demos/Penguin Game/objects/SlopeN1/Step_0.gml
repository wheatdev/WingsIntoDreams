if global.paused = -1{
	if image_yscale = global.eGravity/10{
		if (keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0,gp_padr)) and place_meeting(x-(xVal*2),y,Player){
			Player.y = Player.y - (global.eGravity * 2)
			Player.x = Player.x + xVal
		}
		if global.playAs = 1{
			xVal = global.dippSpeed
		}
		if global.playAs = 2{
			xVal = global.gumSpeed
		}
	}
}