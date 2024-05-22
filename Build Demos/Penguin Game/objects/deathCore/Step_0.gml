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
if place_meeting(x,y,Player){
	if global.storyProgress < 6{
		global.storyProgress = 6
	}
	global.playerStartX = 1380
	global.playerStartY = -380
	room_goto(HUB1)
}