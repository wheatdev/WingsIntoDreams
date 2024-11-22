if place_meeting(x,y,Player){
	if global.playAs = 1{
		global.dippHealth = global.dippHealth - 5
		audio_play_sound(dippHurtSE,0,false)
	}
	if global.playAs = 2{
		global.gumHealth = global.gumHealth - 5
	}
	Player.x = global.lastSafeX
	Player.y = global.lastSafeY
	global.allowDamage = 20
}