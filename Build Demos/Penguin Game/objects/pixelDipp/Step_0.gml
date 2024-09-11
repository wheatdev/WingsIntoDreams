if global.paused = -1{
	if keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl){
		direct = -1
		dippState = 1
	}
	if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
		direct = 1	
		dippState = 1
	}
	if keyboard_check_released(ord("A")) or keyboard_check_released(ord("D")) or keyboard_check_released(vk_left) or keyboard_check_released(vk_right) or gamepad_button_check_released(0,gp_padl) or gamepad_button_check_released(0,gp_padr){
		direct = 0	
		dippState = 0
	}
	x = x + (direct * global.dippSpeed)
	image_xscale = global.lastPressed * 5
	if place_meeting(x+(global.dippSpeed*direct),y,Ground){
		x = x - (direct * global.dippSpeed)
		direct = 0	
	}
	y = y + global.eGravity
	coyoteTime = coyoteTime - 1
	if place_meeting(x,y+global.eGravity,Ground) or place_meeting(x,y+global.eGravity,Enemy){
		y = y - global.eGravity
		jumpState = 1
		maxHeight = y - 300
		coyoteTime = 10
		if direct = 0{
			dippState = 0	
		}
	}	
	if place_meeting(x,y-global.eGravity,Ground){
		jumpState = 0
		coyoteTime = 0
		global.pBounce = 0
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) and jumpState = 1){
		if coyoteTime > 0{
			jumpState = 2	
		}
	}
	if jumpState = 1 and coyoteTime < 0{
		jumpState = 0	
	}
	if jumpState = 2{
		dippState = 2
		y = y - (global.eGravity * 2)
		if y < maxHeight or keyboard_check_released(ord("I")) or keyboard_check_released(ord("Z")) or gamepad_button_check_released(0,gp_face1){
			jumpState = 0	
		}
	}
	if dippState = 0{
		sprite_index = pDippStand
	}
	if dippState = 1{
		sprite_index = pDippMove
		image_speed = 1
	}
	if dippState = 2{
		sprite_index = pDippMove
		image_speed = 2
	}
}