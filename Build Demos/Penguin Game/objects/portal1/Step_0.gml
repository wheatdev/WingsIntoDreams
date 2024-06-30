image_angle = image_angle + 5
if global.paused = -1{
	if place_meeting(x,y,Player){
		audio_play_sound(portalTeleportSE,0,false)
		if room = conCaveTemple{
			global.playerStartX = 970
			global.playerStartY = 3270
			room_goto(CCC1)
		}
		if room = HUB1{
			room_goto(conCaveTemple)
		}
	}
}