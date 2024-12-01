if global.paused = -1{
	timer = timer + 1
	 if state = 0{
		x = x + direct * 20
		if place_meeting(x+(direct * 20), y, Ground){
			direct = direct * -1	
		}
		if place_meeting(x+(direct*40),y,IceSlopeG1) or place_meeting(x+(direct*40),y,IceSlopeG2) or place_meeting(x+(direct*40),y,IceSlopeN1) or place_meeting(x+(direct*40),y,IceSlopeN2) or place_meeting(x+(direct*40),y,SlopeG1) or place_meeting(x+(direct*40),y,SlopeG2) or place_meeting(x+(direct*40),y,SlopeN1) or place_meeting(x+(direct*40),y,SlopeN2){
			y = y - (global.eGravity * 2)
		}
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
		}
		if place_meeting(x,y,Player) and global.allowDamage = 0 and timer > 20{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - global.dippAttack
				audio_play_sound(dippHurtSE,0,false)
			}
			if global.playAs = 2{
				global.gumHealth = global.gumHealth - global.dippAttack
			}
			global.allowDamage = 60
			global.isDamaged = 15
		}
		if place_meeting(x,y,waterSurface){
			sprite_index = kibi2
			state = 1
		}
	 }
	 if state = 1{
		 image_angle = image_angle - (3 * direct)
	 }
	if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd)){
		global.pBounce = 20	
	}
	if global.dippHealth < 1 or global.gumHealth < 1{
		instance_destroy()	
	}
}