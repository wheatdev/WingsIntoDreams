if global.paused = -1{
	if x = A2C2Boss.x{
		size = size + .01
		image_xscale = size
		image_yscale = size
		if place_meeting(x,y,Player)and global.allowDamage = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth -5
				audio_play_sound(dippHurtSE,0,false)
			}
			if global.playAs = 2{
				global.gumHealth = global.gumHealth - 10
			}
			global.isDamaged = 10
			global.allowDamage = 40
		}
	}
	else{
		instance_destroy()
	}
}
