if global.paused = -1{	
	if place_meeting(x,y-global.eGravity,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 5
			audio_play_sound(dippHurtSE,0,false)
		}
		if global.playAs = 2{
			global.gumHealth = global.gumHealth - 5
		}
		global.pBounce = 20
		global.allowDamage = 50
		global.isDamaged = 15
	}
}