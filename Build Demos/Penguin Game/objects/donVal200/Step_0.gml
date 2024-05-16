if place_meeting(x,y,Player){
	global.theMoney = global.theMoney + 200
	audio_play_sound(donVal1GetSE,0,false)
	instance_destroy()
}