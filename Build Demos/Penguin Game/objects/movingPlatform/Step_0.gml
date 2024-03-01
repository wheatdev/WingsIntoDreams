if place_meeting(x,y,mpU){
	moveY = 1
}
if place_meeting(x,y,mpD){
	moveY = -1
}
if place_meeting(x,y,mpL){
	moveX = -1
}
if place_meeting(x,y,mpR){
	moveX = 1
}

if moveX = 1{
	x = x + 5
}
if moveX = -1{
	x = x - 5
}
if moveY = 1{
	y = y - 5
}
if moveY = -1{
	y = y + 5
}
if place_meeting(x,y-(global.eGravity * 2),Player){
	if moveX = 1{
		Player.x = Player.x + 5
	}
	if moveX = -1{
		Player.x = Player.x - 5
	}
	if moveY = -1{
		Player.y = Player.y + 5
	}
	if moveY = 1{
		Player.y = Player.y - 5
	}
}