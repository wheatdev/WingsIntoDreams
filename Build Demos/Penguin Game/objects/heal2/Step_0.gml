if global.paused = -1{
	if canGet > 10{
		if place_meeting(x,y,Player){
			if global.playAs = 1 and global.dippHealth > 0{
				global.dippHealth = global.dippHealth + 5
			}
			if global.playAs = 2 and global.gumHealth > 0{
				global.gumHealth = global.gumHealth + 5
			}
			audio_play_sound(healSE,0,false)
			instance_destroy()
		}

		if active = 1{
			heartPump = heartPump +.1
			if heartPump > 2{
				active = 0
			}
		}
		else{
			heartPump = heartPump - .1
			if heartPump < 1{
				active = 1
			}
		}
	}
	else{
		canGet = canGet + 1
	}
}

image_xscale = heartPump
image_yscale = heartPump