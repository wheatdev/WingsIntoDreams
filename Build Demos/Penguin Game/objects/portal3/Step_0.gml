image_angle = image_angle + 5
if global.paused = -1{
	if place_meeting(x,y,Player){
		audio_play_sound(portalTeleport,0,false)
		if room = conCaveTemple{
			global.playerStartX = 704
			global.playerStartY = 64
			room_goto(CCC3)
		}
	}
}