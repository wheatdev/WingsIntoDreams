if global.paused = -1{	
	if canGet > 10{	
		if place_meeting(x,y,Player){
			if global.playAs = 1 and global.dippHealth > 0{
				global.dippHealth = global.dippHealth + 1
			}
			if global.playAs = 2 and global.gumHealth > 0{
				global.gumHealth = global.gumHealth + 1
			}
			audio_play_sound(healSE,0,false)
			instance_destroy()
		}

		if active = 1{
			heartPump = heartPump +.05
			if heartPump > 1.5{
				active = 0
			}
		}
		else{
			heartPump = heartPump - .05
			if heartPump < .5{
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