if place_meeting(x,y-global.eGravity,Dipp) and global.allowDamage = 0{
	global.dippHealth = global.dippHealth - 5
	audio_play_sound(dippHurtSE,0,false)
	global.dippBounce = 20
	global.allowDamage = 20
}