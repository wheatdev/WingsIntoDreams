if global.paused = -1{
	x = x - 10
	if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd)){
		global.pBounce = 20
	}
	if place_meeting(x,y,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 7
			audio_play_sound(dippHurtSE,0,false)
		}
		global.isDamaged = 10
		global.allowDamage = 70
	}
}