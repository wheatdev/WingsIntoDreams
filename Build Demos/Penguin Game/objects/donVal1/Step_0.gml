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
if place_meeting(x,y,Player) or place_meeting(x,y,kibiKickedP){
	global.theMoney = global.theMoney + 1
	audio_play_sound(donVal1GetSE,0,false)
	instance_destroy()
}