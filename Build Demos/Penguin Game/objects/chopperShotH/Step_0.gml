if global.paused = -1{
	x = x + (direct * 15)
	if place_meeting(x+(direct * 15),y,Ground){
		instance_destroy()
	}
	if place_meeting(x,y,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 1
			audio_play_sound(dippHurtSE,0,false)
		}
		global.allowDamage = 15
		global.isDamaged = 10
	}
}