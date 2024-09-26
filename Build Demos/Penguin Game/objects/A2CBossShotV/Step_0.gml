if global.paused = -1{
	y = y + (direct * 20)	
	if place_meeting(x,y,Player) and global.allowDamage = 0 {
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 3
			audio_play_sound(dippHurtSE,0,false)
		}
		if global.playAs = 2{
			global.gumHealth = global.gumHealth - 2
		}
		global.allowDamage = 50
		global.isDamaged = 10
	}
	if place_meeting(x,y,Ground){
		instance_destroy()	
	}
}