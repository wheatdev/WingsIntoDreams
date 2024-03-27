if global.paused = -1{	
	if canGet > 10{	
		if place_meeting(x,y,Player){
			if global.playAs = 1 and global.dippHealth > 0{
				global.dippHealth = global.dippHealth + 1
			}
			instance_destroy()
		}

		if active = 1{
			heartPump = heartPump +.01
			if heartPump > .3{
				active = 0
			}
		}
		else{
			heartPump = heartPump - .01
			if heartPump < .25{
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