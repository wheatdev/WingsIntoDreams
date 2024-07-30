if global.paused = -1{
	if place_meeting(x,y,Player) and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or  gamepad_button_check_pressed(0,gp_padu)){
		global.playerStartX = posX
		global.playerStartY = posY
		global.lastSafeX = posX
		global.lastSafeY = posY
		if type = 1{
			room_goto(donnerShipOutside)
		}
		if type = 2{
			room_goto(donnerShipInside)
		}
	}
}