image_angle = image_angle + 5
if global.paused = -1{
	if place_meeting(x,y,Player){
		audio_play_sound(portalTeleport,0,false)
		if room = conCaveTemple{
			global.playerStartX = 544
			global.playerStartY = -96
			room_goto(CCC4)
		}
	}
}