image_angle = image_angle + 5
if global.paused = -1{
	if place_meeting(x,y,Player){
		audio_play_sound(portalTeleportSE,0,false)
		if room = conCaveTemple{
			global.playerStartX = 1280
			global.playerStartY = 1450
			room_goto(CCC2)
		}
	}
}