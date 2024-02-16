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
if place_meeting(x,y,Dipp){
	global.theMoney = global.theMoney + 10
	instance_destroy()
}