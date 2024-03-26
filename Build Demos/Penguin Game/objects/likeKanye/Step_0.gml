if place_meeting(x,y,Player){
	if global.playAs = 1{
		global.dippHealth = global.dippHealth - 5
		audio_play_sound(dippHurtSE,0,false)
		Dipp.x = global.lastSafeX
		Dipp.y = global.lastSafeY
		global.allowDamage = 20
	}
}