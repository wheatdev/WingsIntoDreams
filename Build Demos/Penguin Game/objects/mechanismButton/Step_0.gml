if global.paused = -1{
	if activated = 0{
		if place_meeting(x,y-(global.eGravity * 2), Player){
			activated = 1
		}
	}
	if activated = 1{
		y = y + 5
		if y > startY + 40{
			global.mechanism = 1000
			if room = CCC1{
				global.mechanism = 750	
			}
			if room = CCC2{
				global.mechanism = 1000
			}
			if room = CCC3{
				global.mechanism = 2000	
			}
			if room = CCC4{
				global.mechanism = 1000	
			}
			if room = hopperHeliship{
				global.mechanism = 2000
			}
			activated = 2
		}
	}
	if activated = 2{
		y = startY + 40	
		if global.mechanism = 0 and (room = CCC1 or room = CCC2 or room = CCC3 or room = CCC4){
			audio_play_sound(portalTeleportSE,0,false)
			room_restart()
		}
		if global.mechanism = 0{
			y = startY
			activated = 0
		}
	}
}