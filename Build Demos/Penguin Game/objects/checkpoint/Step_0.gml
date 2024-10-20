if place_meeting(x,y,Player){
	global.playerStartX = x
	global.playerStartY = y
	if room = mineDownUnder and global.minesUnlock = 1{
		global.minesUnlock = 2
	}
	if room = skyHighHunting and x > 15000{
		if !audio_is_playing(skyHighTowerMusic){
			audio_stop_all()
			audio_play_sound(skyHighTowerMusic,0,true)
		}
	}
}