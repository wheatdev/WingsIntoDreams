if global.paused = -1{
	if activated = 0{
		if place_meeting(x,y-(global.eGravity * 2), Player){
			activated = 1
		}
	}
	if activated = 1{
		y = y + 2
		if y > startY + 40{
			if room = CCC1{
				global.mechanism = 700	
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
			activated = 2
		}
	}
	if activated = 2{
		y = startY + 40	
		global.mechanism = global.mechanism - 1
		if global.mechanism = 0{
			audio_play_sound(portalTeleport,0,false)
			room_restart()
		}
	}
		
}