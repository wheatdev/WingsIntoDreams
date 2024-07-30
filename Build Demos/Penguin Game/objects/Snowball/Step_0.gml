if global.paused = -1{
	x = x - (direct * 5)
	image_angle = image_angle + (direct*5)
	timer = timer + 1
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity
	}
	if place_meeting(x,y,snowballSwap) and timer > 0{
		direct = direct * -1
		timer = -10
	}
	if place_meeting(x+5,y,IceSlopeG1) or place_meeting(x-5,y,IceSlopeG2){
		y = y - 3.2
	}
	if place_meeting(x+5,y,IceSlopeN1) or place_meeting(x-5,y,IceSlopeN2){
		y = y - 6.4
	}
	if place_meeting(x,y,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 5
			audio_play_sound(dippHurtSE,0,false)
		}
		global.allowDamage = 50
		global.isDamaged = 10
	}
	if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd)){
		global.pBounce = 20
	}
	if place_meeting(x,y,Dynamite){
		instance_destroy()
	}
}