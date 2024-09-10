if global.paused = -1{
	timer = timer + 1
	x = x + direct * 20
	if place_meeting(x+(direct * 20), y, Ground){
		direct = direct * -1	
	}
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity	
	}
	if place_meeting(x,y,Player) and global.allowDamage = 0 and timer > 20{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 5
			audio_play_sound(dippHurtSE,0,false)
		}
		global.allowDamage = 60
		global.isDamaged = 15
	}
	if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd)){
		global.pBounce = 20	
	}
}