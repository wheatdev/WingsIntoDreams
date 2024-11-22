if global.paused = -1 and global.cameraActive = 1{
	rangeX = abs(x - Player.x)
	rangeY = abs(y - Player.y)
	if active = 0{
		if rangeX < 400 and rangeY < 600{
			active = 1
		}
	}
	if active = 1{
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
		}
	}
	if place_meeting(x,y+global.eGravity,Player) and global.allowDamage = 0{
		if global.playAs = 1{
			audio_play_sound(dippHurtSE,0,false)
			global.dippHealth = global.dippHealth - 5
		}
		if global.playAs = 2{
			global.gumHealth = global.gumHealth - 3
		}
		global.allowDamage = 50
		global.isDamaged = 10
	}
}