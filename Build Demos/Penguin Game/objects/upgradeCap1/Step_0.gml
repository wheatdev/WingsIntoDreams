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
	global.upgrade = global.upgrade + 1
	global.upgrade1Get = 1
	audio_play_sound(upgradeGetSE,0,false)
	instance_destroy()
}