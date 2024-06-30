if global.paused = -1{
	if place_meeting(x,y,Player){
		if room = CCC1{
			global.key1 = 1
			global.playerStartX = 5380
			global.playerStartY = 2528
		}
		if room = CCC2{
			global.key2 = 1
			global.playerStartX = 1380
			global.playerStartY = 2580
		}
		if room = CCC3{
			global.key3 = 1
			global.playerStartX = 5380
			global.playerStartY = 5728
		}
		if room = CCC4{
			global.key4 = 1
			global.playerStartX = 1380
			global.playerStartY = 5728
		}
			global.key = global.key + 1
			audio_play_sound(portalTeleportSE,0,false)
			room_goto(conCaveTemple)
	}
	if direct = 1{
		y = y - 1
		if y < startY - 30{
			direct = 2
		}
	}
	if direct = 2{
		y = y + 1
		if y > startY + 30{
			direct = 1
		}
	}
}