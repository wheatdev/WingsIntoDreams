if global.paused = -1{
	if place_meeting(x,y,Player){
		if type = 1{
			global.playerStartX = 1824
			global.playerStartY = 6144
			room_goto(conicCaves)
		}
		if type = 2{
			global.playerStartX = 160
			global.playerStartY = Player.y -544
			room_goto(HUB2)
		}
		if type = 3{
			global.playerStartX = 9475
			global.playerStartY = Player.y + 544
			room_goto(HUB1)
		}
	}
}