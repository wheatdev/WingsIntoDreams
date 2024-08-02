if global.paused = -1{
	if place_meeting(x,y,Player) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or gamepad_button_check_pressed(0,gp_padu)){
		room_goto(threeseven)		
	}
}