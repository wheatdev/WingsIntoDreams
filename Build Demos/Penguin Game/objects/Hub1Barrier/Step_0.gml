if global.paused = -1{
	if place_meeting(x,y,Player){
		if type = 1{
			global.playerStartX = 832
			global.playerStartY = 704
			room_goto(conicCaves)
		}
		if type = 2{
			room_goto(HUB2)
		}
		if type = 3{
			room_goto(HUB1)
		}
	}
}