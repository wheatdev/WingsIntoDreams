if global.paused = -1{	
	if place_meeting(x,y-global.eGravity,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 5
			audio_play_sound(dippHurtSE,0,false)
		}
		global.pBounce = 20
		global.allowDamage = 20
		global.isDamaged = 15
	}
}