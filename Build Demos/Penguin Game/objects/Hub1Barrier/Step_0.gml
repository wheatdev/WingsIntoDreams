if global.paused = -1{
	if place_meeting(x,y,Player){
		if type = 1{
			global.playerStartX = 832
			global.playerStartY = 704
			room_goto(conicCaves)
		}
	}
}