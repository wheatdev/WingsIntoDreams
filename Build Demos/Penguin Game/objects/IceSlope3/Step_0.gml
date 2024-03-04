if place_meeting(x-30, y, Player){
	Player.x = Player.x + (6.4 * global.lastPressed)
	if global.lastPressed = 1{
		Player.y = Player.y - 3.2
	}
	if global.lastPressed = -1{
		Player.x = Player.x -  6.4
	}
}