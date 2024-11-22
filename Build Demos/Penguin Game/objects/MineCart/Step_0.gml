if global.paused = -1{
	if place_meeting(x,y,minecartRails) and place_meeting(x,y-(global.eGravity * 2), Player){
		if keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl){
			x = x - mSpeed
		}
		if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
			x = x + mSpeed
		}
		if place_meeting(x-mSpeed,y,Ground){
			x = x + mSpeed
		}	
		if place_meeting(x+mSpeed,y,Ground){
			x = x - mSpeed
		}	
		
	}
	if global.playAs = 1{
		mSpeed = global.dippSpeed
	}
	if global.playAs = 2{
		mSpeed = global.gumSpeed
	}	
}